//
//  IronSwing.m
//  GolfSwing
//
//  Created by Steven Roseman on 1/16/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "IronSwing.h"

@implementation IronSwing
@synthesize distance, rightIron, ironDistance;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setWeight:155];
        [self setRightIron:threeIron];
        [self setClubWeight:1.1f];
        [self setSwingSpeed:11];
    }
    return self;
}

-(NSString*)calculateDistance
{
    if (rightIron == threeIron)
    {
        [self setClubWeight:0.9f];
        [self setDistance:([self SwingSpeed] + (self.weight / self.clubWeight))];
        NSString *strdist = [NSString stringWithFormat:@"I should hit it about %d yards",distance];
        return strdist;
        NSLog(@"I should hit it about %d", self.distance);
    } else if (rightIron == fiveIron)
    {
        [self setClubWeight:1.2f];
        [self setSwingSpeed:8];
        [self setDistance: ([self SwingSpeed] + (self.weight / self.clubWeight))];
        NSLog(@"My five Iron is only getting me about %d yards", self.distance);
        
    }else if (rightIron == sevenIron)
    {
        [self setClubWeight:1.5f];
        [self setSwingSpeed:6];
        [self setDistance:([self SwingSpeed] + (self.weight / self.clubWeight))];
        NSLog(@"My seven is only carrying %d", self.distance);
        
    } else
    {
        NSLog(@"You need some more practice");
    }
    return nil;
}




@end
