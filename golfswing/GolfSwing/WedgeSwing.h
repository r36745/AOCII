//
//  WedgeSwing.h
//  GolfSwing
//
//  Created by Steven Roseman on 1/16/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SwingBase.h"
@interface WedgeSwing : SwingBase

{
    int myWedge;
}

typedef enum
{
    sixtyFour,
    sixtySix
} myWedge;

@property int loft;
@property int shaftLoft;



@end
