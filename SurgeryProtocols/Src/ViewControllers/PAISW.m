//
//  PAISW.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 8/28/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PAISW.h"
#import "AppDelegate.h"

@implementation PAISW
{
    AppDelegate *delegate;
}

-(void)viewDidLoad
{
    delegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    
    self.PAIArray = [[NSArray alloc] initWithObjects:@"Back/Flank", @"AASW with +LWE", nil];
    
    self.PAIPicker.delegate = self;
    self.PAIPicker.dataSource = self;
    
    [self.PAIPicker selectRow:0 inComponent:0 animated:NO];
    
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
    return [self.PAIArray count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.PAIArray objectAtIndex:row];
}

- (IBAction)nextButtonPressed:(id)sender {
    
    NSString *choice = [self.PAIArray objectAtIndex:[self.PAIPicker selectedRowInComponent:0]];
    if ([choice isEqualToString:@"Back/Flank"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PAIFinal"];
        
        delegate.AbdominalInjuryFinalOutcomeLabel = @"Conduct a CT Scan";
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PAIFinal"];
        
        delegate.AbdominalInjuryFinalOutcomeLabel = @"Conduct a DPL vs. CT Scan vs. Serial Exams";
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
}

@end

