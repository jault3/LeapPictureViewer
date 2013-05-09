//
//  MainWindow.m
//  Leap Picture Viewer
//
//  Created by dev on 3/7/13.
//  Copyright (c) 2013 Josh Ault. All rights reserved.
//

#import "MainWindow.h"
#import "LeapMenu.h"
#import "Album.h"

@interface MainWindow()

@property (nonatomic, strong) LeapMenu *leapMenu;
@property (nonatomic, strong) NSMutableArray *albums;

@end

@implementation MainWindow
@synthesize leapMenu = _leapMenu;
@synthesize albums = _albums;

#pragma mark - init methods

- (id)init {
    NSLog(@"init");
    
    self = [super init];
    self.leapMenu = (LeapMenu *)[self menu];
    _albums = [[NSMutableArray alloc] init];
    [self initAlbums];
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    NSLog(@"initWithCoder");
    
    self = [super initWithCoder:aDecoder];
    self.leapMenu = (LeapMenu *)[self menu];
    _albums = [[NSMutableArray alloc] init];
    [self initAlbums];
    return self;
}

- (id)initWithContentRect:(NSRect)contentRect styleMask:(NSUInteger)aStyle backing:(NSBackingStoreType)bufferingType defer:(BOOL)flag {
    NSLog(@"initWithContentRect:styleMask:backing:defer:");
    
    self = [super initWithContentRect:contentRect styleMask:aStyle backing:bufferingType defer:flag];
    self.leapMenu = (LeapMenu *)[self menu];
    _albums = [[NSMutableArray alloc] init];
    [self initAlbums];
    return self;
}

- (id)initWithContentRect:(NSRect)contentRect styleMask:(NSUInteger)aStyle backing:(NSBackingStoreType)bufferingType defer:(BOOL)flag screen:(NSScreen *)screen {
    NSLog(@"initWithContentRect:styleMask:backing:defer:screen:");
    
    self = [super initWithContentRect:contentRect styleMask:aStyle backing:bufferingType defer:flag screen:screen];
    self.leapMenu = (LeapMenu *)[self menu];
    _albums = [[NSMutableArray alloc] init];
    [self initAlbums];
    return self;
}

- (NSWindow *)initWithWindowRef:(void *)windowRef {
    NSLog(@"initWithWindowRef");
    
    self = [super initWithWindowRef:windowRef];
    self.leapMenu = (LeapMenu *)[self menu];
    _albums = [[NSMutableArray alloc] init];
    [self initAlbums];
    return self;
}

- (void)initAlbums {
    NSString *picturePath = [NSSearchPathForDirectoriesInDomains(NSPicturesDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSLog(@"picturePath %@",picturePath);
    Album *one = [[Album alloc] initWithName:@"Album 1" andLocation:[NSString stringWithFormat:@"%@/album1",picturePath]];
    Album *two = [[Album alloc] initWithName:@"Album 2" andLocation:[NSString stringWithFormat:@"%@/album2",picturePath]];
    Album *three = [[Album alloc] initWithName:@"Album 3" andLocation:[NSString stringWithFormat:@"%@/album3",picturePath]];
    
    [_albums addObject:one];
    [_albums addObject:two];
    [_albums addObject:three];
}

@end
