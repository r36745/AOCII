//
//  ViewController.m
//  EventPlannerWeekFour
//
//  Created by Steven Roseman on 1/27/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onRight:)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [rightSwipeLabel addGestureRecognizer:rightSwipe];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


-(void)onRight:(UISwipeGestureRecognizer*)recognizer
{
    recognizer.direction = UISwipeGestureRecognizerDirectionRight;
    
    DateScreenViewController *dateView = [[DateScreenViewController alloc]init];
    if(dateView != nil)
    {
        [self presentViewController:dateView animated:YES completion:nil];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
