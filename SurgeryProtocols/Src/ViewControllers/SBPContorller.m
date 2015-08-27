//
//  SBPContorller.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 7/30/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SBPController.h"
#import "AppDelegate.h"
@implementation SBPController
{
    AppDelegate *appDelegate;
}
-(void)viewDidLoad
{
    
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    self.sbpArray = [[NSArray alloc] initWithObjects:@"Yes", @"No", nil];
    
    if ([appDelegate.ResThoractomySBPControllerLabel isEqualToString:@"Repair Heart"]) {
            self.SBPControllerLabel.text = @"Repair Heart";
    }
    else if ([appDelegate.ResThoractomySBPControllerLabel isEqualToString:@"Control"]) {
        self.SBPControllerLabel.text = @"Control";
    }
    else if ([appDelegate.ResThoractomySBPControllerLabel isEqualToString:@"Hilar X-clamp"]) {
        self.SBPControllerLabel.text = @"Hilar X-clamp";
    }
    else
        self.SBPControllerLabel.text = @"";
        
    
    self.sbpPickerView.delegate = self;
    self.sbpPickerView.dataSource = self;
    
    [self.sbpPickerView selectRow:0 inComponent:0 animated:NO];
    
    self.nextButton.cornerRadius = 10.0;
    self.nextButton.shadowHeight = self.nextButton.frame.size.height * 0.17;
    self.nextButton.buttonColor = [UIColor ht_bitterSweetColor];
    self.nextButton.shadowColor = [UIColor ht_bitterSweetDarkColor];
    [self.nextButton setStyle:HTPressableButtonStyleRounded];
    [self.nextButton setTitle:@"Next" forState:UIControlStateNormal];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.sbpArray count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.sbpArray objectAtIndex:row];
}

- (IBAction)nextButtonPressed:(id)sender {
    
    NSString *choice = [self.sbpArray objectAtIndex:[self.sbpPickerView selectedRowInComponent:0]];
    if ([choice isEqualToString:@"Yes"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"orEnd"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"deadEnd"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    
    
}

@end