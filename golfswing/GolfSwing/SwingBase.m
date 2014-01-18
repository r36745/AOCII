//
//  SwingBase.m
//  GolfSwing
//
//  Created by Steven Roseman on 1/16/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "SwingBase.h"

@implementation SwingBase

@synthesize weight, swingTip, clubWeight,SwingSpeed;

-(id)init
{
    self = [super init];
    {
        if (self != nil)
        {
            //Default values for factors in determining the distance of a swing
            [self setWeight:0];
            [self setClubWeight:.0f];
            [self setSwingSpeed:0];
            [self setSwingTip:nil];
            
        }
        
        return self;
    }
}

//Base method for calculating the distance in a golf swing
-(NSString*)calculateDistance
{
    [self setWeight:179];
    [self setClubWeight:.9f];
    [self setWeight:(weight * clubWeight)];
    NSLog(@"%i", weight);
    NSLog(@"The distance could be better");
    return nil ;
}

@end
