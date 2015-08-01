//
//  TraumaTypeViewController.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 7/29/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TraumaTypeViewController.h"

@implementation TraumaTypeViewController
{
    NSString *string;
}

-(void)viewDidLoad
{
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"UCH_8_Mathes_50.Jpeg"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    [image drawAtPoint:CGPointZero blendMode:kCGBlendModeOverlay alpha:0.8];
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [[UIColor colorWithPatternImage:image] colorWithAlphaComponent:0.8];
    
    
    
    self.traumaTypesArray = [[NSArray alloc] initWithObjects:@"Blunt Trauma", @"Penetrating Trauma", nil];
    
    self.traumaTypePickerView.delegate = self;
    self.traumaTypePickerView.dataSource = self;
    
    //[self.traumaTypePickerView selectRow:0 inComponent:0 animated:NO];
    
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
    return [self.traumaTypesArray count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.traumaTypesArray objectAtIndex:row];
}


- (IBAction)nextButtonPressed:(id)sender {
    
    NSString *choice = [self.traumaTypesArray objectAtIndex:[self.traumaTypePickerView selectedRowInComponent:0]];
    if ([choice isEqualToString:@"Blunt Trauma"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ecgcontroller"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"TorsoViewController"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    
}
@end