//
//  WindowController.m
//  Inberdar
//
//  Created by hw17a036 on 2018/11/17.
//  Copyright © 2018年 Taiju Okuda. All rights reserved.
//

//#import "WindowController.h"
//
//@interface WindowController ()
//
//@end
//
//@implementation WindowController
//
//- (void)windowDidLoad {
//    [super windowDidLoad];
//    
//    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
//}
//
//@end

#import "WindowController.h"

@interface WindowController ()

@end

@implementation WindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    self.window.delegate = self;
    self.window.frameAutosaveName = @"Main Window";
    [self.window setContentSize:NSMakeSize(640, 480)];
}

- (NSSize)windowWillResize:(NSWindow *)sender toSize:(NSSize)frameSize
{
    if ([self.window styleMask] & NSWindowStyleMaskFullScreen) {
        return frameSize;
    } else {
        NSRect rect = NSMakeRect(0, 0, 640, 480);
        rect = [self.window frameRectForContentRect:rect];
        return rect.size;
    }
}

@end
