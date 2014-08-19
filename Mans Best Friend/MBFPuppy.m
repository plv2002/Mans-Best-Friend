//
//  MBFPuppy.m
//  Mans Best Friend
//
//  Created by Paul Vana on 6/24/14.
//  Copyright (c) 2014 Paul Vana. All rights reserved.
//

#import "MBFPuppy.h"

@implementation MBFPuppy

-(void)givePuppyEyes
{
    NSLog(@":(");
}

-(void)bark
{
    [super bark]; //calls everything from the inherited class plus my changes below
    NSLog(@"whimper whimper");
    [self givePuppyEyes];
}

@end
