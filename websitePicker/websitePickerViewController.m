//
//  websitePickerViewController.m
//  websitePicker
//
//  Created by 206402219 on 8/6/13.
//  Copyright (c) 2013 NYU. All rights reserved.
//

#import "websitePickerViewController.h"

@interface websitePickerViewController ()

@end

@implementation websitePickerViewController

@synthesize PickerData, Picker, Webview;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.


    NSArray *array = [[NSArray alloc] initWithObjects:@"Youtube", @"Twitter", @"Facebook", @"Ivillage", nil];
    self.PickerData = array;

    
    [Webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.youtube.com"]]];

    [Webview addSubview:activityind];
    timer = [NSTimer scheduledTimerWithTimeInterval:(1.0/2.0) target:self selector:@selector(loading) userInfo:nil repeats:YES];
  
    
    
    
    //adding the drawing here for the picker view container
    
    _pickerViewContainer.frame   = CGRectMake(0, 480, 322, 0);
    
}

-(void)loading{
    if (!Webview.loading)
        [activityind stopAnimating];
    
    else [activityind startAnimating];
    }





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(NSInteger)numberOfComponentsInPickerView: (UIPickerView *)pickerView {
    return 1;
}



-(NSInteger)pickerView: (UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [PickerData count];
}


-(NSString *)pickerView: (UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [self.PickerData objectAtIndex: row];
}


-(void)pickerView: (UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    int select = row;
    if (select ==0) {
        [Webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.youtube.com"]]];
    }
    else if (select == 1) {
        [Webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.twitter.com"]]];
    }
        else if (select == 2) {
            [Webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.facebook.com"]]];
        }
            else if (select == 3) {
                [Webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.ivillage.com"]]];
            
            }}



- (IBAction)showBtn:(id)sender {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.3];
    _pickerViewContainer.frame = CGRectMake(0, 200, 320, 263);
    [UIView commitAnimations];
}

- (IBAction)hideBtn:(id)sender {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.3];
    _pickerViewContainer.frame = CGRectMake(0, 460, 320, 263);
    [UIView commitAnimations];
    
}
@end