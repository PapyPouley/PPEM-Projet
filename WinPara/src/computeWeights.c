/*
	============================================================================
	Name        : computeWeights.c
	Author      : kdesnos
	Author      : JZHAHG
	Version     : 1.0
	Copyright   : CeCILL-C, IETR, INSA Rennes
	Description : Computation of the weights associated to the pixel of an rgb 
	              image.
	============================================================================
*/

#include <math.h>
#include "computeWeights.h"
#include "projet.h"

#define R_gamaC (float) 1.0/16.0f /*(1.0)/16.0 */
#define min(x,y) (((x)<(y))?(x):(y))
#define max(x,y) (((x)<(y))?(y):(x))

void computeWeights (int height , int width, int horOrVert,
					 int *offset, unsigned char *rgbL, float *weights)
{
    int i, j;

    // hOffset of vOffset depending on the computed weights
    int hOffset = (horOrVert == 0)? *offset : 0;
    int vOffset = (horOrVert == 1)? *offset : 0;

    // Distance coeff
    float distanceCoeff = -(float)(*offset)/36.0f;
	//distanceCoeff *= -1;

    // Scan the pixels of the rgb image
    #pragma omp parallel for private(i, j) num_threads(NUM_THREADS) schedule(dynamic)
    for (j = 0; j < height; j++)
    {
        for (i = 0; i < width; i++)
        {
            float r0, g0, b0, r, g, b;
            float weightM, weightP, weightO;

            // Compute the weights
            int idx = 3 * (j * width + i);
            r0 = rgbL[idx];
            g0 = rgbL[idx + 1];
            b0 = rgbL[idx + 2];

            r = rgbL[3 * (max(j - vOffset, 0) * width + max(i - hOffset, 0))];
            g = rgbL[3 * (max(j - vOffset, 0) * width + max(i - hOffset, 0)) + 1];
            b = rgbL[3 * (max(j - vOffset, 0) * width + max(i - hOffset, 0)) + 2];
            weightM = (float)sqrtf((r0 - r) * (r0 - r) + (g0 - g) * (g0 - g) + (b0 - b) * (b0 - b)) * (float)R_gamaC;

            r = rgbL[3 * (min(j + vOffset, height - 1) * width + min(i + hOffset, width - 1))];
            g = rgbL[3 * (min(j + vOffset, height - 1) * width + min(i + hOffset, width - 1)) + 1];
            b = rgbL[3 * (min(j + vOffset, height - 1) * width + min(i + hOffset, width - 1)) + 2];
            weightP = (float)sqrtf((r0 - r) * (r0 - r) + (g0 - g) * (g0 - g) + (b0 - b) * (b0 - b)) * (float)R_gamaC;

            weightM = (float)exp(distanceCoeff - weightM);
            weightP = (float)exp(distanceCoeff - weightP);

            weightO = 1 / (weightM + weightP + 1);
            weightM = weightM * weightO;
            weightP = weightP * weightO;

            // Store the three weights one after the other in the
            // output buffer;
            weights[idx] = weightO;
            weights[idx + 1] = weightM;
            weights[idx + 2] = weightP;
        }
    }
}
