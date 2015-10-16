//
//  Question6.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 10/16/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question6.h"
#import "AppDelegate.h"

@implementation Question6
{
    AppDelegate *delegate;
}

-(void)viewDidLoad
{
    
    delegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    
    self.submitButton.cornerRadius = 10.0;
    self.submitButton.shadowHeight = self.submitButton.frame.size.height * 0.17;
    self.submitButton.buttonColor = [UIColor ht_bitterSweetColor];
    self.submitButton.shadowColor = [UIColor ht_bitterSweetDarkColor];
    
    [self.submitButton setTitle:@"Next" forState:UIControlStateNormal];
    
}

-(void)submitButtonPressed:(id)sender
{
    
}

@end
