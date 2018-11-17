//
//  MyGLView.m
//  Inberdar
//
//  Created by hw17a036 on 2018/11/17.
//  Copyright © 2018年 Taiju Okuda. All rights reserved.
//
//
//#import "MyGLView.h"
//
//@implementation MyGLView
//
//- (void)drawRect:(NSRect)dirtyRect {
//    [super drawRect:dirtyRect];
//    
//    // Drawing code here.
//}
//
//@end

#import "MyGLView.h"

#import <OpenGL/OpenGL.h>
#import <OpenGL/gl3.h>

@implementation MyGLView

- (instancetype)initWithFrame:(NSRect)frame
{
    NSOpenGLPixelFormatAttribute attrs[] =
    {
        NSOpenGLPFAAllowOfflineRenderers,
        NSOpenGLPFAAccelerated,
        NSOpenGLPFADoubleBuffer,
        NSOpenGLPFAColorSize, 32,
        NSOpenGLPFADepthSize, 32,
        NSOpenGLPFAMultisample,
        NSOpenGLPFASampleBuffers, 1,
        NSOpenGLPFASamples, 4,
        NSOpenGLPFANoRecovery,
        NSOpenGLPFAOpenGLProfile, NSOpenGLProfileVersion3_2Core,
        0
    };
    
    NSOpenGLPixelFormat *pixelFormat = [[NSOpenGLPixelFormat alloc] initWithAttributes:attrs];
    
    self = [super initWithFrame:frame pixelFormat:pixelFormat];
    if (self) {
        [self setWantsBestResolutionOpenGLSurface:YES];
    }
    return self;
}

- (void)prepareOpenGL
{
    [super prepareOpenGL];
    
    NSOpenGLContext *glContext = [self openGLContext];
    
    glClearColor(1.0f, 0.0f, 1.0f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);
    [glContext flushBuffer];
}

@end