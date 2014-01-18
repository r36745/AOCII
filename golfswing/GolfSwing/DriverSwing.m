//
//  DriverSwing.m
//  GolfSwing
//
//  Created by Steven Roseman on 1/16/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "DriverSwing.h"

@implementation DriverSwing

@synthesize windSpeed, angle, driverGrip;

-(id)init
{
    self = [super init];
    {
        if (self != nil)
        {
            if (driverGrip == draw)
            {
                [self setWeight:135];
                [self setWindSpeed:-5];
                [self setSwingSpeed:9];
            }
            
        }
    }
    return self;
}

-(NSString*)calculateDistance
{
    [self setAngle:(self.weight / self.SwingSpeed)-windSpeed];
    NSString *strAngle = [NSString stringWithFormat:@"my ball draws at a %d degree angle", angle];
    return strAngle;
}


@end
