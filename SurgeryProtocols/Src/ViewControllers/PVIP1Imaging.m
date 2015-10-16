//
//  PVIP2Imaging.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 10/15/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PVIP1Imaging.h"
#import "AppDelegate.h"

@implementation PVIP1Imaging
{
    AppDelegate *delegate;
}

-(void)viewDidLoad
{
    
    delegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    self.BluntHepaticArray = [[NSArray alloc] initWithObjects:@"Arteriography", @"CT arteriography", @"Duplex ultrasonography", nil];
    
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
    
    if ([choice isEqualToString:@"Arteriography"]) {
        
        
        delegate.PVIP1ImagingType= @"Arteriography";
        delegate.PVIP1ImagingOutcome=@"Choose one";
        
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PVIP1ImagingOutcome"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    
    else if ([choice isEqualToString:@"CT arteriography"]) {
        
        delegate.PVIP1ImagingType=@"CT arteriography";
        delegate.PVIP1ImagingOutcome=@"Intimal defect observed";
        
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PVIP1ImagingOutcome"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    
    
    else {
        
        delegate.PVIP1ImagingType=@"Duplex ultrasonography";
        delegate.PVIP1ImagingOutcome=@"Spasm observed\n unless limb threatened";
        
        
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PVIP1ImagingOutcome"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
        
    }
}


@end
