//
//  ProtocolType.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 8/13/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProtocolType.h"

@implementation ProtocolType

-(void)viewDidLoad
{
    self.protocolTypeArray = [[NSArray alloc] initWithObjects:@"Resuscitative Thoracotomy", @"Penetrating Neck Injuries", @"Blunt Cerebrovascular Injuries", @"Penetrating Abdominal Injuries", @"Peripheral Vascular Injury – Part 1", @"Peripheral Vascular Injury – Part 2", @"Imaging For Blunt Abdominal Trauma", @"Blunt Splenic Injury", @"Blunt Hepatic Injury – Part 1 (Non-Operative Management)", @"Blunt Hepatic Injury – Part 2 (Operative Management)", @"Blunt Pancreatic Injury", @"Penetrating Chest Injury – Part 1 (Stable Patient)", @"Penetrating Chest Injury – Part 2 (Unstable Patient)", nil];
    
    self.protocolPicker.delegate = self;
    self.protocolPicker.dataSource = self;
    
    [self.protocolPicker selectRow:0 inComponent:0 animated:NO];
    
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
    return [self.protocolTypeArray count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.protocolTypeArray objectAtIndex:row];
}


- (IBAction)nextButtonPressed:(id)sender {
    
    NSString *choice = [self.protocolTypeArray objectAtIndex:[self.protocolPicker selectedRowInComponent:0]];
    if ([choice isEqualToString:@"Resuscitative Thoracotomy"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"imageresuscitative"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else if ([choice isEqualToString:@"Penetrating Neck Injuries"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"imagePENETRATINGNECKINJURIES"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    
    else if ([choice isEqualToString:@"Blunt Cerebrovascular Injuries"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"BCVIImage"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else if ([choice isEqualToString:@"Penetrating Abdominal Injuries"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PenetratingAbdominalInjuriesImage"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else if ([choice isEqualToString:@"Peripheral Vascular Injury – Part 1"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PERIPHERALVASCULARINJURYPART 1"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else if ([choice isEqualToString:@"Peripheral Vascular Injury – Part 2"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PERIPHERALVASCULARINJURYPART 2"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else if ([choice isEqualToString:@"Imaging For Blunt Abdominal Trauma"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"IMAGINGFORBLUNTABDOMINALTRAUMAImage"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else if ([choice isEqualToString:@"Blunt Splenic Injury"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"BLUNTSPLENICINJURY"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else if ([choice isEqualToString:@"Blunt Hepatic Injury – Part 1 (Non-Operative Management)"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"BluntHepticImage"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else if ([choice isEqualToString:@"Blunt Hepatic Injury – Part 2 (Operative Management)"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"BluntHepticPart2Image"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else if ([choice isEqualToString:@"Blunt Pancreatic Injury"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"BLUNTPANCREATICINJURY"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else if ([choice isEqualToString:@"Penetrating Chest Injury – Part 1 (Stable Patient)"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PENETRATINGCHESTINJURY–PART1 (STABLEPATIENT)"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }
    else if ([choice isEqualToString:@"Penetrating Chest Injury – Part 2 (Unstable Patient)"]) {
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PENETRATINGCHESTINJURY–PART2 (UNSTABLEPATIENT)"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    }

    
    
}
@end