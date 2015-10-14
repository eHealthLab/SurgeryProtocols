//
//  BCVISymptmos.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 10/13/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BCVISymptmos.h"

@implementation BCVISymptmos


-(void)viewDidLoad
{
    self.BCVIArray = [[NSArray alloc] initWithObjects:@"Potential arterial hemorrhage", @"Cervical bruit", @"Expanding cervical hematoma", @"Focal neurologic defect", @"Neurologic defect", @"Stroke on CT or MRI", @"Displaced fracture", @"Basilar skull fracture", @"CHI consistent with DAI", @"C-spine fracture", @"Anoxic brain injury", @"Clothesline type injury", @"None", nil];
    
    self.BCVIView.delegate = self;
    self.BCVIView.dataSource = self;
    
    [self.BCVIView selectRow:0 inComponent:0 animated:NO];
    
    
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
    return [self.BCVIArray count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.BCVIArray objectAtIndex:row];
}

- (IBAction)nextButtonPressed:(id)sender {
    
    NSString *choice = [self.BCVIArray objectAtIndex:[self.BCVIView selectedRowInComponent:0]];
    if ([choice isEqualToString:@"None"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"stop"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"BCVIEmergentYes"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
}
@end

