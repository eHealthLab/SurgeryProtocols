//
//  PVIP2Hard.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 10/15/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "PVIP1Hard.h"
#import "AppDelegate.h"

@implementation PVIP1Hard
{
    AppDelegate *delegate;
}

-(void)viewDidLoad
{
    
    delegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    /*self.BluntHepaticArray = [[NSArray alloc] initWithObjects:@"Hard signs", @"Soft signs", @"Pulses are difficult to assess", nil];
    
    self.BluntHepaticPicker.delegate = self;
    self.BluntHepaticPicker.dataSource = self;
    
    [self.BluntHepaticPicker selectRow:0 inComponent:0 animated:NO];*/
    
    self.nextButton.cornerRadius = 10.0;
    self.nextButton.shadowHeight = self.nextButton.frame.size.height * 0.17;
    self.nextButton.buttonColor = [UIColor ht_bitterSweetColor];
    self.nextButton.shadowColor = [UIColor ht_bitterSweetDarkColor];
    
    [self.nextButton setTitle:@"Next" forState:UIControlStateNormal];
    
    
}

@end
