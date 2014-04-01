//
//  SApuppy.m
//  Man's Best Friend
//
//  Created by Sachin Ahuja on 3/5/14.
//  Copyright (c) 2014 Sachin Ahuja. All rights reserved.
//

#import "SApuppy.h"

@implementation SApuppy

-(void)givePuppyEyes;
{
    NSLog(@":(");
}

-(void)bark;
{
    [super bark];
    NSLog(@"whimper whimper");
    [self givePuppyEyes];
}
@end
