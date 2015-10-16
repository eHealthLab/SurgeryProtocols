//
//  PVIP2OperationOutcome.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 10/15/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "PVIP2OperationOutcome.h"
#import "AppDelegate.h"

@implementation PVIP2OperationOutcome
{
    AppDelegate *delegate;
}

-(void)viewDidLoad
{
    
    delegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    
    self.label.text=delegate.PVIP2OperatioOutcome;
    
    self.BluntHepaticArray = [[NSArray alloc] initWithObjects:@"Narrow anastomosis", @"Distal arterial occlusion", @"Narrowed arteries to hand or foot", @"Segmental spasm", nil];
    
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
    
    
    
    if ([choice isEqualToString:@"Narrow anastomosis"])
    {
        delegate.PVIP2OperatioOutcome2=@"Redo anastomosis";
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PVIP2Left"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else if ([choice isEqualToString:@"Distal arterial occlusion"]){
        delegate.PVIP2OperatioOutcome2=@"Reopen repair/pass\n Fogarty catheter";
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PVIP2Left"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else if ([choice isEqualToString:@"Narrowed arteries to hand or foot"]) {
        delegate.PVIP2OperatioOutcome2=@"Fasciotomy vs. measure\n compartment pressure";
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PVIP2Left"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else if ([choice isEqualToString:@"Self tissue loss over vascular injury"]) {
        delegate.PVIP2OperatioOutcome=@"Muscle flap over repair vs. extra-anatomic bypass";
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PVIP2Left"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else {
        delegate.PVIP2OperatioOutcome2=@"Topical/intra-arterial\n papaverine";
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PVIP1ImagingOutcome2"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
}

@end
