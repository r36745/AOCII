//
//  DriverSwing.h
//  GolfSwing
//
//  Created by Steven Roseman on 1/16/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SwingBase.h"

@interface DriverSwing : SwingBase

{
    int bestDriver;
}

typedef enum
{
    draw,
    flex,
    regular
}bestDriver;

@property int windSpeed;
@property int angle;
@property int driverGrip;

@end
