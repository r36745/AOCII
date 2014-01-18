//
//  SwingFactory.m
//  GolfSwing
//
//  Created by Steven Roseman on 1/16/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "SwingFactory.h"

@implementation SwingFactory

+(SwingBase*)getClub:(int)clubType
{
    if (clubType == wedge)
    {
        return [[WedgeSwing alloc]init];
        
    } else if (clubType == iron)
    {
        return [[IronSwing alloc]init];
        
    } else if (clubType == driver)
        
    {
        return [[DriverSwing alloc]init];
    }
    return nil;
}

@end
