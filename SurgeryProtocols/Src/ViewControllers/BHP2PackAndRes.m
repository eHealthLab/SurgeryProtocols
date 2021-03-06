//
//  BHP2PackAndRes.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 10/11/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BHP2PackAndRes.h"
#import "AppDelegate.h"

@implementation BHP2PackAndRes
{
    AppDelegate *delegate;
}

-(void)viewDidLoad
{
    
    delegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    self.BluntHepaticArray = [[NSArray alloc] initWithObjects:@"Controlled Bleeding", @"Uncontrolled Bleeding", nil];
    
    self.BluntHepaticPicker.delegate = self;
    self.BluntHepaticPicker.dataSource = self;
    
    [self.BluntHepaticPicker selectRow:0 inComponent:0 animated:NO];
    
    self.nextButton.cornerRadius = 10.0;
    self.nextButton.shadowHeight = self.nextButton.frame.size.height * 0.17;
    self.nextButton.buttonColor = [UIColor ht_bitterSweetColor];
    self.nextButton.shadowColor = [UIColor ht_bitterSweetDarkColor];
    
    [self.nextButton setTitle:@"Next" forState:UIControlStateNormal];
    
    if ([delegate.BluntHepaticPart2BleedingType isEqualToString:@"Minor bleeding"]) {
        self.nextButton.hidden = YES;
        self.BluntHepaticPicker.hidden = YES;
        self.label.text = @"Electrocautery and argon beam \n Topical hemostatic agents";
        self.label.numberOfLines=2;
        
    }
    else{
        self.label.text = @"Pack and resuscitate";
        self.endOfProtocolLabel.hidden = YES;
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
    if ([choice isEqualToString:@"Controlled Bleeding"]) {
        
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"BHP2Laparotomy"];
        //delegate.BluntHepaticPart2BleedingType = @"Electrocautery and argon beam Topical hemostatic agents";
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    
    else {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"BHP2Pringle"];
        
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
}

@end





