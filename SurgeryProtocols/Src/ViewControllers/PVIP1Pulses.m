//
//  PVIP2Pulses.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 10/15/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PVIP1Pulses.h"
#import "AppDelegate.h"

@implementation PVIP1Pulses
{
    AppDelegate *delegate;
}

-(void)viewDidLoad
{
    
    delegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    self.BluntHepaticArray = [[NSArray alloc] initWithObjects:@"Oversize cutoff to assess API", @"Resuscitate and warm patient", nil];
    
    self.BluntHepaticPicker.delegate = self;
    self.BluntHepaticPicker.dataSource = self;
    
    [self.BluntHepaticPicker selectRow:0 inComponent:0 animated:NO];
    
    self.nextButton.cornerRadius = 10.0;
    self.nextButton.shadowHeight = self.nextButton.frame.size.height * 0.17;
    self.nextButton.buttonColor = [UIColor ht_bitterSweetColor];
    self.nextButton.shadowColor = [UIColor ht_bitterSweetDarkColor];
    
    [self.nextButton setTitle:@"Next" forState:UIControlStateNormal];
    
    
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

@end
