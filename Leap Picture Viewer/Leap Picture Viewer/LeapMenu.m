//
//  LeapMenu.m
//  Leap Picture Viewer
//
//  Created by dev on 3/7/13.
//  Copyright (c) 2013 Josh Ault. All rights reserved.
//

#import "LeapMenu.h"

@interface LeapMenu()

@property (nonatomic, strong) NSWindowController *controllerWindow;

@end

@implementation LeapMenu
@synthesize controllerWindow;

- (IBAction)showAbout:(id)sender {
    NSLog(@"showing about");
    self.controllerWindow = [[NSWindowController alloc] initWithWindowNibName:@"AboutWindow"];
    [self.controllerWindow showWindow:self];
}

@end
