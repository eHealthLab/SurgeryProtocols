//
//  PCIP2Initial.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 10/11/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PCIP2Initial.h"
#import "AppDelegate.h"

@implementation PCIP2Initial
{
    AppDelegate *delegate;
}

-(void)viewDidLoad
{
    
    delegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    self.BluntHepaticArray = [[NSArray alloc] initWithObjects:@"Penumothorax", @"CXR", @"Hemothorax", nil];
    
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
    
    if ([choice isEqualToString:@"Penumothorax"]) {
        
        delegate.PCIP2CXRType=@"OR";
        
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PCIP2Pneumothorax"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    
    else if ([choice isEqualToString:@"CXR"]){
        
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PCIP2CXR"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
        
    }
    else {
        
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PCIP2Hemothorax"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
        //delegate.PCIP2CXRType=@"VATS Laparoscopy";
    }
    
    
}

@end

