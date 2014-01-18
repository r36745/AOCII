//
//  SwingBase.h
//  GolfSwing
//
//  Created by Steven Roseman on 1/16/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SwingBase : NSObject

{
    int allClubs;
    
    
}

typedef enum
{
    wedge,
    iron,
    driver
}allClubs;


@property int weight;
@property NSString *swingTip;
@property float clubWeight;
@property int SwingSpeed;

-(NSString*)calculateDistance;



@end
