//
//  SecondViewController.m
//  EventPlanner
//
//  Created by Steven Roseman on 1/22/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize delegate;

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return true;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
   
    if (delegate != nil)
    {
        [delegate eventDetail:textField.text];
    }
    return true;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
