//
//  SwingFactory.h
//  GolfSwing
//
//  Created by Steven Roseman on 1/16/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SwingBase.h"
#import "WedgeSwing.h"
#import "IronSwing.h"
#import "DriverSwing.h"

@interface SwingFactory : NSObject

{
    NSInteger temp;
}

+(SwingBase*)getClub:(int)clubType;

@end
