//
//  SAdog.m
//  Man's Best Friend
//
//  Created by Sachin Ahuja on 3/3/14.
//  Copyright (c) 2014 Sachin Ahuja. All rights reserved.
//

#import "SAdog.h"

@implementation SAdog

-(void)bark
{
    NSLog(@"Woof Woof!");

}

-(void)barkANumberOfTimes:(int)numberOfTimes
{
    for(int bark = 1; bark<=numberOfTimes; bark++){
        [self bark];
    }
}

-(void)changeBreedtoWerewolf
{
    self.breed = @"Werewolf";
}

-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud
{
    if (!isLoud){
        for (int bark=1; bark<= numberOfTimes; bark++){
            NSLog(@"yip yip");
        }
    }
    else {
        for(int bark =1; bark <= numberOfTimes; bark++){
            NSLog(@"Ruff Ruff!");
        }
    }
}

-(int)ageInDogYearsFromAge:(int)regularAge
{
    int newAge = regularAge * 7;
    return newAge;
}
@end
