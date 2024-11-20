

#include "yuvRead.h"
#include <xdc/runtime/System.h>
#include <string.h>
#include <xdc/runtime/Timestamp.h>
#include <xdc/runtime/Types.h>

// Reserving memory for the input sequence
// This memory should be loaded by the Load function of CCS
// Forcing in DDR3
#pragma DATA_SECTION(input_sequence, ".myInputVideoMem");
static unsigned char input_sequence [PICSIZE*NB_FRAMES];
#pragma DATA_SECTION(input_sequence2, ".myInputVideoMem2");
static unsigned char input_sequence2 [PICSIZE*NB_FRAMES];

int currentFrameIndex[2];

/*========================================================================

   Global Variable

   ======================================================================*/

/*========================================================================

   initReadYUV DEFINITION

   ======================================================================*/
void initReadYUV(int id, int width, int height) {
	//System_printf("initYUV\n");
	currentFrameIndex[id] = 0;
}

/*========================================================================

   readYUV DEFINITION

   ======================================================================*/
void readYUV(int id, int width, int height, unsigned char *y, unsigned char *u, unsigned char *v) {

	static int i = 0;
	static unsigned int time = 0;
	unsigned int now;
	unsigned char* input_y;

	if (id == 0)
		input_y = input_sequence + currentFrameIndex[id]*PICSIZE;
	else if ( id == 1)
		input_y = input_sequence2 + currentFrameIndex[id]*PICSIZE;

	unsigned char* input_u = input_y + height*width;
	unsigned char* input_v = input_u + (height*width/4);

	if(i==0){
        now = Timestamp_get32();
        unsigned int delta = (now-time)/10;
        float fps = 1000000000.0 / (float)delta;
        System_printf("fps: %f\n", fps);
        time = Timestamp_get32();
	}
	i = (i +1) %10;
	memcpy(y,input_y,height*width*sizeof(char));
	memcpy(u,input_u,height*width*sizeof(char)/4);
	memcpy(v,input_v,height*width*sizeof(char)/4);

	currentFrameIndex[id]++;
	currentFrameIndex[id] = currentFrameIndex[id]%NB_FRAMES;
}