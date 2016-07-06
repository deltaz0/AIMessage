/*
 * This file is part of the Marmalade SDK Code Samples.
 *
 * (C) 2001-2012 Marmalade. All Rights Reserved.
 *
 * This source code is intended only as a supplement to the Marmalade SDK.
 *
 * THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
 * PARTICULAR PURPOSE.
 */
#ifndef GAME_H
#define GAME_H
#include "npc.h"
class CGame
{
public:
    CGame();
    ~CGame();
	
	void waitTime(int ms);
	void drawCharacter(CNpc* name);
    // update will be called a fixed number of times per second
    // regardless of visual framerate
    void Update();
    // render will be called as fast as possible (but not faster
    // than the update rate)
    void Render();

private:
    CIwFVec2 m_Position;
    CIwSVec2 m_Size;
};

CIwRect createRect(char* stringToSize, bool LeftJustified, int y);
CIwRect createRect(char* stringToSize, bool LeftJustified, CIwRect pastRect);
#endif
