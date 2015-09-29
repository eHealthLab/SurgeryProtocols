//
//  AbdomnialPelvicCT.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 9/23/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbdominalPelvicCT.h"
#import "AppDelegate.h"

@implementation AbdominalPelvicCT
{
    AppDelegate *delegate;
}

-(void)viewDidLoad
{
    
    delegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    self.AbdPelCTArray = [[NSArray alloc] initWithObjects:@"Stable", @"Unstable", nil];
    
    self.AbdPelCTPicker.delegate = self;
    self.AbdPelCTPicker.dataSource = self;
    
    [self.AbdPelCTPicker selectRow:0 inComponent:0 animated:NO];
    
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
    return [self.AbdPelCTArray count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.AbdPelCTArray objectAtIndex:row];
}

- (IBAction)nextButtonPressed:(id)sender {
    
    NSString *choice = [self.AbdPelCTArray objectAtIndex:[self.AbdPelCTPicker selectedRowInComponent:0]];
    if ([choice isEqualToString:@"Stable"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"abdominalPelvicCTScan"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    
    else {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"FAST"];
        
        //delegate.AbdominalInjuryFinalOutcomeLabel = @"Conduct a CT Scan";
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
}

@end


