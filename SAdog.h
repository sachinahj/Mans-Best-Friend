//
//  SAdog.h
//  Man's Best Friend
//
//  Created by Sachin Ahuja on 3/3/14.
//  Copyright (c) 2014 Sachin Ahuja. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SAdog : NSObject

@property (nonatomic) int age;
@property (nonatomic, strong) NSString *breed;
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSString *name;

-(void)bark;
-(void)barkANumberOfTimes:(int)numberOfTimes;
-(void)changeBreedtoWerewolf;
-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;
-(int)ageInDogYearsFromAge:(int)regularAge;

@end
