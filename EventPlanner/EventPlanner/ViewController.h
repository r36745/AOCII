//
//  ViewController.h
//  EventPlanner
//
//  Created by Steven Roseman on 1/22/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController <SecondView>

{
    IBOutlet UITextView *textView;
    IBOutlet UITextField *eventField;
}

-(IBAction)onChange:(UIStoryboardSegue*)segue;





@end
