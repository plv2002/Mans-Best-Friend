//
//  MBFDog.h
//  Mans Best Friend
//
//  Created by Paul Vana on 6/9/14.
//  Copyright (c) 2014 Paul Vana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"
#import "MBFDog.h"

@interface MBFDog : NSObject

@property (nonatomic) int age;
@property (nonatomic,strong) NSString *breed;
@property (strong,nonatomic) UIImage *image;
@property (nonatomic,strong) NSString *name;

-(void) bark;
//-(void) barkANumberOfTimes:(int)numberOfTimes;
//-(void) changeBreedToWerewolf;
//-(void) barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;
-(int)ageInDogYearsFromAge:(int)regualAge;

@end
