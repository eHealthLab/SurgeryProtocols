//
//  PVIAssessment.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 8/30/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PVIAssessment.h"
#import "AppDelegate.h"

@implementation PVIAssessment
{
    AppDelegate *delegate;
}

-(void)viewDidLoad
{
    
    delegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    self.PVIArray = [[NSArray alloc] initWithObjects:@"Hard Signs", @"Soft Signs", @"Pulses are difficult to assess (obesity, shock, hyppthermia)", nil];
    
    self.PVIPicker.delegate = self;
    self.PVIPicker.dataSource = self;
    
    [self.PVIPicker selectRow:0 inComponent:0 animated:NO];
    
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
    return [self.PVIArray count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.PVIArray objectAtIndex:row];
}

- (IBAction)nextButtonPressed:(id)sender {
    
    NSString *choice = [self.PVIArray objectAtIndex:[self.PVIPicker selectedRowInComponent:0]];
    if ([choice isEqualToString:@"Hard Signs"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PVIHard"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else if ([choice isEqualToString:@"Soft Signs"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PVISoft"];
        
        //delegate.AbdominalInjuryFinalOutcomeLabel = @"Conduct a CT Scan";
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PVIPulsesDifferent"];
        
        
        //delegate.AbdominalInjuryFinalOutcomeLabel = @"Conduct a CT Scan";
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
}

@end

