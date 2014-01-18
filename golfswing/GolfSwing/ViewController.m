//
//  ViewController.m
//  GolfSwing
//
//  Created by Steven Roseman on 1/16/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "ViewController.h"
#import "SwingFactory.h"

@interface ViewController ()

@end

@implementation ViewController

//method to switch view screens
-(IBAction)onExit:(UIStoryboardSegue*)segue
{
    
}

//Click button method for subclass buttons
-(IBAction)toClick:(id)sender
{
    
    UIButton *stickButton = (UIButton*)sender;
    if(stickButton.tag == 0)
    {
        wedButton.enabled = false;
        iroButton.enabled = true;
        driButton.enabled = true;
        wedText.text = @" Get Wedge Distance";
        driverCalc.enabled = true;
        ironCalc.enabled = true;
    }
 else if (stickButton.tag == 1)
 {
     iroButton.enabled = false;
     iroText.text = @"Get Iron Distance";
     wedButton.enabled = true;
     driButton.enabled = true;
     driverCalc.enabled = true;
     wedgeCalc.enabled = true;
     
     
     
 }
    else if (stickButton.tag == 2)
    {
        wedButton.enabled = true;
        iroButton.enabled = true;
        driButton.enabled = false;
        driText.text = @" Get Driver Distance";
        wedgeCalc.enabled = true;
        ironCalc.enabled = true;
    }
}

//Segment Control method called for changing colors
-(IBAction)onSegment:(id)sender
{
    UISegmentedControl *segControl = (UISegmentedControl*)sender;
     if (segControl != nil)
     {
         int segIndex = segControl.selectedSegmentIndex;
         if (segIndex == 0)
         {
             self.view.backgroundColor = [UIColor redColor];
         }
         else if (segIndex == 1)
         {
             self.view.backgroundColor =[UIColor yellowColor];
         }
         else if (segIndex == 2)
         {
             self.view.backgroundColor = [UIColor blueColor];
         }
         
     }
    
}

//Steppper Method for increasing/decreasing resulted values
-(IBAction)onChange:(id)sender
{
    UIStepper *stepper = (UIStepper*)sender;
    if (stepper != nil)
    {
        if (stepper.tag == 0)
        {
            int wedgeValue = stepper.value;
            NSString *totVal = [NSString stringWithFormat:@"The loft of your swing is %d", wedgeValue];
            stepperText.text = totVal;
        }
        else if (stepper.tag == 1)
        {
            int ironValue = stepper.value;
            NSString *ironVal = [NSString stringWithFormat:@"I should hit it about %d yards", ironValue];
            stepperText.text = ironVal;

        }
        else if (stepper.tag == 2)
        {
            int driverValue = stepper.value;
            NSString *driVal = [NSString stringWithFormat:@"my ball draws at a %d degree angle", driverValue];
            stepperText.text = driVal;
        }
       
        
    }
        
}

//calculation method
-(IBAction)toCalc:(id)sender
{
    
    UIButton *CalcButton = (UIButton*)sender;
    int difference = stepControl.value;
    if (CalcButton != nil)
    {
        if (CalcButton.tag == 0){
        WedgeSwing *wedgeSwing = (WedgeSwing*)[SwingFactory getClub:wedge];
        if (wedgeSwing != nil)
        {
            [wedgeSwing setWeight:32];
            [wedgeSwing calculateDistance];
            [wedgeSwing setSwingTip:@"MY Tip"];
            //NSString *wedgeSwingDistance = [wedgeSwing calculateDistance];
            int wedVal = [wedgeSwing weight] + difference;
            wedText.text = [NSString stringWithFormat:@"The loft of your swing is %d", wedVal];
            //wedText.text = wedgeSwingDistance;
            wedButton.enabled = false;
            wedgeCalc.enabled = false;
        }
        } else if (CalcButton.tag == 1)
        {
            int ironDiff = stepControl.value;
            IronSwing *ironSwing = (IronSwing*)[SwingFactory getClub:iron];
            if (ironSwing != nil)
            {
                [ironSwing setSwingSpeed:11];
                [ironSwing setRightIron:threeIron];
                int ironVal = [ironSwing SwingSpeed] + ironDiff;
                iroText.text = [NSString stringWithFormat:@"I should hit it about %d yards",ironVal];
                NSString *strDistance = [ironSwing calculateDistance];
                //iroText.text = [NSString stringWithFormat:@"M"];
                iroText.text = strDistance;
                iroButton.enabled = false;
                ironCalc.enabled = false;
            }
        } else if (CalcButton.tag == 2)
        {
           int driDiff = stepControl.value;
            DriverSwing *driverSwing = (DriverSwing*)[SwingFactory getClub:driver];
            if (driverSwing != nil)
            {
                [driverSwing setWeight:150];
                [driverSwing setWindSpeed:+7];
                int driVal = [driverSwing windSpeed] * driDiff;
                driText.text = [NSString stringWithFormat:@"my ball draws at a %d degree angle", driVal];
                NSString *strDistance = [driverSwing calculateDistance];
                driText.text = strDistance;
                driverCalc.enabled = false;
            }
        }
    }
}

//Method used to show Author name
-(IBAction)getAuthor:(id)sender
{
    
}
- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
