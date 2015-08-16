//
//  ZoneSelection.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 8/13/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZoneSelection.h"

@implementation ZoneSelection

-(void)viewDidLoad
{
    self.zoneSelectionArray = [[NSArray alloc] initWithObjects:@"Zone I", @"Zone II", @"Zone III", @"No", nil];
    
    self.zoneSelectionView.delegate = self;
    self.zoneSelectionView.dataSource = self;
    
    [self.zoneSelectionView selectRow:0 inComponent:0 animated:NO];
    
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
    return [self.zoneSelectionArray count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.zoneSelectionArray objectAtIndex:row];
}

- (IBAction)nextButtonPressed:(id)sender {
    
    NSString *choice = [self.zoneSelectionArray objectAtIndex:[self.zoneSelectionView selectedRowInComponent:0]];
    if ([choice isEqualToString:@"Yes"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"zone1"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"nonTorsoView"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
}
@end