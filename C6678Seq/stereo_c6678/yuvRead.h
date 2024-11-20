/*
	============================================================================
	Name        : readYUV.h
	Author      : kdesnos & mpelcat
	Version     : 1.1
	Copyright   : CECILL-C
	Description : C6x readYUV.
	============================================================================
*/

#ifndef READ_YUV_H
#define READ_YUV_H

#define NB_FRAMES 5
#define WIDTH 480
#define HEIGHT 270
#define PICSIZE WIDTH*HEIGHT*3/2

/**
* Initialize the readYUV actor.
* Open the YUV file at the given PATH and check its size.
*
* @param id
* 		 Id of image
* @param width
*        The width of the opened YUV file
* @param height
*        The heigth of the opened YUV file
*/
void initReadYUV(int id, int width, int height);

/**
* Read a new frame from the YUV file.
*
* @param id
* 		 Id of image
* @param width
*        The width of the opened YUV file
* @param height
*        The heigth of the opened YUV file
* param y
*       Destination of the Y component read from the file
* param u
*       Destination of the U component read from the file
* param v
*       Destination of the V component read from the file
*/
void readYUV(int id, int width, int height, unsigned char *y, unsigned char *u, unsigned char *v);

#endif