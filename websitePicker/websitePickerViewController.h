//
//  websitePickerViewController.h
//  websitePicker
//
//  Created by 206402219 on 8/6/13.
//  Copyright (c) 2013 NYU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface websitePickerViewController : UIViewController


{
    
    IBOutlet UIPickerView *Picker;
    NSArray *PickerData;
    
    IBOutlet UIActivityIndicatorView *activityind;
    NSTimer *timer;
    IBOutlet UIWebView *Webview;
    
}



@property (retain, nonatomic) IBOutlet UIPickerView *Picker;

@property (retain, nonatomic) NSArray *PickerData;

@property (retain, nonatomic) IBOutlet UIWebView *Webview;

@property (strong, nonatomic) IBOutlet UIView *pickerViewContainer;

- (IBAction)showBtn:(id)sender;


- (IBAction)hideBtn:(id)sender;

@end
