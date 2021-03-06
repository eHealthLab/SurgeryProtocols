//
//  EmergentYes.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 8/25/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BCVIEmergentYes.h"

@implementation BCVIEmergentYes

-(void)viewDidLoad
{
    self.ctScanArray = [[NSArray alloc] initWithObjects:@"Positive", @"Negative", nil];
    
    self.BCVIPicker.delegate = self;
    self.BCVIPicker.dataSource = self;
    
    [self.BCVIPicker selectRow:0 inComponent:0 animated:NO];
    
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
    return [self.ctScanArray count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.ctScanArray objectAtIndex:row];
}

- (IBAction)nextButtonPressed:(id)sender {
    
    NSString *choice = [self.ctScanArray objectAtIndex:[self.BCVIPicker selectedRowInComponent:0]];
    if ([choice isEqualToString:@"Positive"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ctScanPositive"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ctScanNegative"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
}


@end
