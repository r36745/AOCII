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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //delegate = nil;
        // Custom initialization
    }
    return self;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    storyField.text = @"";
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

-(IBAction)buttonPressed:(id)sender
{
    UIButton *saveButton = (UIButton*)sender;
    {
        
        if (saveButton != nil)
        {
            NSString *tempStr = storyField.text;
            
        }
    }
}

- (void)viewDidLoad
{
    
    storyField.text = @"Enter Date and Time";
    storyField.textColor = [UIColor lightGrayColor];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
