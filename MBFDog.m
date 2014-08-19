//
//  MBFDog.m
//  Mans Best Friend
//
//  Created by Paul Vana on 6/9/14.
//  Copyright (c) 2014 Paul Vana. All rights reserved.
//

#import "MBFDog.h"

@implementation MBFDog

-(void) bark
{
    NSLog(@"Woof Woof!!");
}

-(int)ageInDogYearsFromAge:(int)regualAge
{
    int newAge = regualAge * 7;
    return newAge;
}

@end
