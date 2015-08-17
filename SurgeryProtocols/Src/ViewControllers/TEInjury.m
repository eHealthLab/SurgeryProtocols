//
//  TEInjury.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 8/16/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TEInjury.h"

@implementation TEInjury


-(void)viewDidLoad
{
    self.teInjuryArray = [[NSArray alloc] initWithObjects:@"Positive", @"Negative", nil];
    
    self.teInjuryView.delegate = self;
    self.teInjuryView.dataSource = self;
    
    [self.teInjuryView selectRow:0 inComponent:0 animated:NO];
    
    [self.nextButton setStyle:HTPressableButtonStyleRounded];
    self.nextButton.buttonColor = [UIColor ht_bitterSweetColor];
    self.nextButton.shadowColor = [UIColor ht_bitterSweetDarkColor];
    [self.nextButton setStyle:HTPressableButtonStyleRounded];
    [self.nextButton setShadowHeight:0.8];
    [self.nextButton setTitle:@"Next" forState:UIControlStateNormal];
    
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.teInjuryArray count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.teInjuryArray objectAtIndex:row];
}

- (IBAction)nextButtonPressed:(id)sender {
    
    NSString *choice = [self.teInjuryArray objectAtIndex:[self.teInjuryView selectedRowInComponent:0]];
    if ([choice isEqualToString:@"Positive"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"teInjuryPositive"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"teInjuryNegative"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
}
@end
