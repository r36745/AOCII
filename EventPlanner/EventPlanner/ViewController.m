//
//  ViewController.m
//  EventPlanner
//
//  Created by Steven Roseman on 1/22/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)eventDetail:(NSString *)eventInfo
{
    textView.text = eventInfo;
}

-(IBAction)onChange:(UIStoryboardSegue*)segue
{
  
}






-(IBAction)onClick:(id)sender
{
    UIButton *pushButton = (UIButton*)sender;
    {
        if (pushButton != nil)
        {
            SecondViewController *viewControl = [[SecondViewController alloc]initWithNibName:@"SecondView" bundle:nil];
            {
             if (viewControl != nil)
             {
                 viewControl.delegate = self;
                 NSString *tempStr = eventField.text;
                 textView.text = [NSString stringWithFormat:@"%@", tempStr];
                 
              
                 //[self.view addSubview:textView];
             }
            }
        }
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
