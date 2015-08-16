//
//  HardSignsP2.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 8/13/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HardSignsP2.h"

@implementation HardSignsP2

-(void)viewDidLoad
{
    self.hardSignsArray = [[NSArray alloc] initWithObjects:@"Yes", @"No", nil];
    
    self.hardSignsView.delegate = self;
    self.hardSignsView.dataSource = self;
    
    [self.hardSignsView selectRow:0 inComponent:0 animated:NO];
    
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
    return [self.hardSignsArray count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.hardSignsArray objectAtIndex:row];
}

- (IBAction)nextButtonPressed:(id)sender {
    
    NSString *choice = [self.hardSignsArray objectAtIndex:[self.hardSignsView selectedRowInComponent:0]];
    if ([choice isEqualToString:@"Yes"]) {
<<<<<<< HEAD
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"hardSignYes"];
=======
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"hardSignsYes"];
>>>>>>> 586d1d3de076c7b61a5a35744850b17841cd466f
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"suspiciousActivity"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
}
@end
