//
//  Album.m
//  Leap Picture Viewer
//
//  Created by dev on 3/7/13.
//  Copyright (c) 2013 Josh Ault. All rights reserved.
//

#import "Album.h"

@interface Album()

@property (nonatomic, strong) NSFileManager *fileManager;

@end

@implementation Album
@synthesize name = _name;
@synthesize location = _location;
@synthesize pictures = _pictures;
@synthesize fileManager = _fileManager;

- (id)initWithName:(NSString *)name andLocation:(NSString *)location {
    self = [super init];
    if (self) {
        _name = name;
        _location = location;
        _fileManager = [NSFileManager defaultManager];
        _pictures = [[NSMutableArray alloc] init];
        [self loadPictures:_location];
    }
    return self;
}

- (void)loadPictures:(NSString *)locationToSearch {
    NSArray *picturesArray = [_fileManager contentsOfDirectoryAtPath:locationToSearch error:nil];
    for (NSString *s in picturesArray) {
        [self addPictureAt:s];
    }
}

- (void)addPictureAt:(NSString *)pictureLocation {
    BOOL dir = NO;
    [_fileManager fileExistsAtPath:pictureLocation isDirectory:&dir];
    if (dir) {
        [self loadPictures:pictureLocation];
    } else {
        [_pictures addObject:pictureLocation];
    }
}

@end
