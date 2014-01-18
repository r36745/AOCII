//
//  WedgeSwing.m
//  GolfSwing
//
//  Created by Steven Roseman on 1/16/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "WedgeSwing.h"
#import "SwingBase.h"

@implementation WedgeSwing

@synthesize loft, shaftLoft;

-(id)init
{
    self = [super init];
    if(self !=nil)
    {
        if (shaftLoft == sixtyFour)
        {
            [self setWeight:34];
            [self setLoft:0];
            [self setSwingSpeed:2];
            [self setClubWeight:.2f];
            
        }
    }
    return self;
}



-(NSString*)calculateDistance
{
    
    
    [self setLoft:(self.weight * self.SwingSpeed)];
    NSString *strLoft = [NSString stringWithFormat:@"The loft of your swing is %d", loft];
    
    NSLog(@"The loft of your swing is %d",self.loft);
    
    return strLoft;
}



@end
