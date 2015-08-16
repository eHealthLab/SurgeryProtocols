//
//  Tamponade.m
//  Surge/Users/aartimunjal/Dropbox/sheanamhealthlab/TraumaProtocols/BLUNT CEREBROVASCULAR INJURIES .png
//
//  Created by Aarti Munjal on 7/31/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tamponade.h"

@implementation Tamponade


-(void)viewDidLoad
{
    self.torsoArray = [[NSArray alloc] initWithObjects:@"Yes", @"No", nil];
    
    self.torsoView.delegate = self;
    self.torsoView.dataSource = self;
    
    [self.torsoView selectRow:0 inComponent:0 animated:NO];
    
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
    return [self.torsoArray count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.torsoArray objectAtIndex:row];
}

- (IBAction)nextButtonPressed:(id)sender {
    
    NSString *choice = [self.torsoArray objectAtIndex:[self.torsoView selectedRowInComponent:0]];
    if ([choice isEqualToString:@"Yes"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"sbpController"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"deadEnd"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
}
@end