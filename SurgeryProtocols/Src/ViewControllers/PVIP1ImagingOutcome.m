//
//  PVIP2ImagingOutcome.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 10/15/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PVIP1ImagingOutcome.h"
#import "AppDelegate.h"

@implementation PVIP1ImagingOutcome
{
    AppDelegate *delegate;
}

-(void)viewDidLoad
{
    
    delegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    
    if ([delegate.PVIP1ImagingType isEqualToString:@"CT arteriography"] || [delegate.PVIP1ImagingType isEqualToString:@"Duplex ultrasonography"]) {
        self.BluntHepaticPicker.hidden=YES;
        self.nextButton.hidden=YES;
        self.label.text=delegate.PVIP1ImagingOutcome;
    }
    else {
    
        self.endLabel.hidden=YES;
        self.BluntHepaticArray = [[NSArray alloc] initWithObjects:@"Extravasation Thrombosis", @"Arteriovenous fistula", nil];
    
        self.BluntHepaticPicker.delegate = self;
        self.BluntHepaticPicker.dataSource = self;
    
        [self.BluntHepaticPicker selectRow:0 inComponent:0 animated:NO];
    
        self.nextButton.cornerRadius = 10.0;
        self.nextButton.shadowHeight = self.nextButton.frame.size.height * 0.17;
        self.nextButton.buttonColor = [UIColor ht_bitterSweetColor];
        self.nextButton.shadowColor = [UIColor ht_bitterSweetDarkColor];
    
        [self.nextButton setTitle:@"Next" forState:UIControlStateNormal];
        
        self.label.text=delegate.PVIP1ImagingOutcome;
    }
    
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.BluntHepaticArray count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.BluntHepaticArray objectAtIndex:row];
}

- (IBAction)nextButtonPressed:(id)sender {
    
    NSString *choice = [self.BluntHepaticArray objectAtIndex:[self.BluntHepaticPicker selectedRowInComponent:0]];
    
    if ([choice isEqualToString:@"Extravasation Thrombosis"]) {
        
        
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PVIP1OperatingRoom"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    
    else {
        
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PVIP1IRadiology"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
        
    }
}


@end

