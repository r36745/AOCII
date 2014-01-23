//
//  SecondViewController.h
//  EventPlanner
//
//  Created by Steven Roseman on 1/22/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SecondView <NSObject>

@required

-(void)eventDetail:(NSString*)eventInfo;

@end

@interface SecondViewController : UIViewController <UITextFieldDelegate>

{
    id<SecondView>delegate;
    IBOutlet UITextField *storyField;
    IBOutlet UIDatePicker *datePicker;
    
    
}

-(IBAction)buttonPressed:(id)sender;

@property (strong) id<SecondView>delegate;

@end
