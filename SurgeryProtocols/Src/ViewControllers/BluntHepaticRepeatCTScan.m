//
//  BluntHepaticRepeatCTScan.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 9/26/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BluntHepaticRepeatCTScan.h"
#import "AppDelegate.h"

@implementation BluntHepaticRepeatCTScan
{
    AppDelegate *delegate;
}

-(void)viewDidLoad
{
    
    delegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    self.BluntHepaticArray = [[NSArray alloc] initWithObjects:@"LiverAbscess", @"Biloma",@"Bile ascites/hemoperitoneum", nil];
    
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

- (IBAction)nextButtonPressed:(id)sender {
    
    NSString *choice = [self.BluntHepaticArray objectAtIndex:[self.BluntHepaticPicker selectedRowInComponent:0]];
    if ([choice isEqualToString:@"LiverAbscess"]) {
        
        delegate.BluntHepaticScanOutcome = @"LiverAbscess";
        delegate.BluntHepaticLabel = @"Successful Management";
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"BluntHepaticScanOutcome"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    
    else if ([choice isEqualToString:@"Biloma"]) {
        delegate.BluntHepaticScanOutcome = @"Biloma";
        delegate.BluntHepaticLabel = @"Continued bilious drainage";
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"BluntHepaticScanOutcome"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    
    else {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"BluntHepaticScanOutcome"];
        delegate.BluntHepaticLabel = @"Laparoscopy with drainage \n Continued bilious drainage";
        delegate.BluntHepaticScanOutcome = @"Bile ascites/hemoperitoneum";
        //delegate.AbdominalInjuryFinalOutcomeLabel = @"Conduct a CT Scan";
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
}

@end


