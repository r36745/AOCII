//
//  IronSwing.h
//  GolfSwing
//
//  Created by Steven Roseman on 1/16/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SwingBase.h"

@interface IronSwing : SwingBase


{
    int myIrons;
}

typedef enum{
    threeIron,
    fiveIron,
    sevenIron
} myIrons;

@property int distance;
@property int rightIron;
@property int ironDistance;

@end
