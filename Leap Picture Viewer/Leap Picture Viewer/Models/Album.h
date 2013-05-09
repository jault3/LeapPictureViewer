//
//  Album.h
//  Leap Picture Viewer
//
//  Created by dev on 3/7/13.
//  Copyright (c) 2013 Josh Ault. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Album : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *location;
@property (nonatomic, strong) NSMutableArray *pictures;

- (id)initWithName:(NSString *)name andLocation:(NSString *)location;

@end
