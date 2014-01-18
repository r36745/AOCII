//
//  ViewController.h
//  GolfSwing
//
//  Created by Steven Roseman on 1/16/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    IBOutlet UIButton *wedButton;
    IBOutlet UIButton *iroButton;
    IBOutlet UIButton *driButton;
    IBOutlet UITextField *wedText;
    IBOutlet UITextField *iroText;
    IBOutlet UITextField *driText;
    IBOutlet UIStepper *stepControl;
    IBOutlet UITextField *stepperText;
    IBOutlet UIButton *infoButton;
    IBOutlet UIButton *wedgeCalc;
    IBOutlet UIButton *ironCalc;
    IBOutlet UIButton *driverCalc;
    IBOutlet UISegmentedControl *clubSegment;
    IBOutlet UILabel *nameLabel;
    IBOutlet UIButton *backButton;
}

-(IBAction)onExit:(UIStoryboardSegue*)segue;

-(IBAction)toClick:(id)sender;

-(IBAction)toCalc:(id)sender;

-(IBAction)onChange:(id)sender;

-(IBAction)onSegment:(id)sender;

-(IBAction)getAuthor:(id)sender;

@end
