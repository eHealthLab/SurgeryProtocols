//
//  Blush.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 9/23/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Blush.h"
#import "AppDelegate.h"

@implementation Blush
{
    AppDelegate *delegate;
}

-(void)viewDidLoad
{
    
    delegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    self.AbdPelCTArray = [[NSArray alloc] initWithObjects:@"Yes", @"No", nil];
    
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
    if (([choice isEqualToString:@"Yes"] && [delegate.AbdPelvicTraumaGradeType  isEqualToString:@"Grade12"]) || ([choice isEqualToString:@"No"] && [delegate.AbdPelvicTraumaGradeType  isEqualToString:@"Grade3"])) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"angiography"];
        delegate.AbdPelvicTrauma = @"Consider Angiography";
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else if ([choice isEqualToString:@"Yes"] && [delegate.AbdPelvicTraumaGradeType  isEqualToString:@"Grade3"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"angiography"];
        delegate.AbdPelvicTrauma = @"Angiography";
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }

    
    else {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"observation"];
        
        //delegate.AbdominalInjuryFinalOutcomeLabel = @"Conduct a CT Scan";
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
}

@end
