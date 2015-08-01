//
//  CardiacRhythmType.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 7/30/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CardiacRhythmType.h"

@implementation CardiacRhythmType

-(void)viewDidLoad
{
    self.rhythmTypeArray = [[NSArray alloc] initWithObjects:@"Tamponade", @"Thoracic hemorrhage", @"Air emboli", @"Extrathoracic hemorrhage", nil];
    
    self.rhythmPickerView.delegate = self;
    self.rhythmPickerView.dataSource = self;
    
    [self.rhythmPickerView selectRow:0 inComponent:0 animated:NO];
    
    self.nextButton.cornerRadius = 10.0;
    self.nextButton.shadowHeight = self.nextButton.frame.size.height * 0.17;
    self.nextButton.buttonColor = [UIColor ht_bitterSweetColor];
    self.nextButton.shadowColor = [UIColor ht_bitterSweetDarkColor];
    [self.nextButton setStyle:HTPressableButtonStyleRounded];
    [self.nextButton setTitle:@"Next" forState:UIControlStateNormal];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.rhythmTypeArray count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.rhythmTypeArray objectAtIndex:row];
}

- (IBAction)nextButtonPressed:(id)sender {
    
    NSString *choice = [self.rhythmTypeArray objectAtIndex:[self.rhythmPickerView selectedRowInComponent:0]];
    if ([choice isEqualToString:@"Tamponade"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"sbpController"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else if ([choice isEqualToString:@"Thoracic hemorrhage"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"sbpController"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    
    else if ([choice isEqualToString:@"Air emboli"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"sbpController"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"sbpController"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    
    
}

@end