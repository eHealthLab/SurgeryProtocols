//
//  PVIP2Left.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 10/16/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "PVIP2Left.h"
#import "AppDelegate.h"

@implementation PVIP2Left
{
    AppDelegate *delegate;
}

-(void)viewDidLoad
{
    
    delegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    
    self.label.text=delegate.PVIP2OperatioOutcome2;
    
    
    
    self.nextButton.cornerRadius = 10.0;
    self.nextButton.shadowHeight = self.nextButton.frame.size.height * 0.17;
    self.nextButton.buttonColor = [UIColor ht_bitterSweetColor];
    self.nextButton.shadowColor = [UIColor ht_bitterSweetDarkColor];
    
    [self.nextButton setTitle:@"Next" forState:UIControlStateNormal];
    
}

@end

