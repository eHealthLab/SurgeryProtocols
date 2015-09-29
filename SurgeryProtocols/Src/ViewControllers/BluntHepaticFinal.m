//
//  BluntHepaticFinal.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 9/27/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BluntHepaticFinal.h"
#import "AppDelegate.h"

@implementation BluntHepaticFinal
{
    AppDelegate *delegate;
}

-(void)viewDidLoad
{
    
    delegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    
    self.label1.text = @"ERCP+Sphincterotomy";
    
    if([delegate.BluntHepaticScanOutcome isEqualToString:@"Liver Abscess"] || [delegate.BluntHepaticScanOutcome isEqualToString:@"Biloma"]) {
            self.label1.hidden = true;
    }
    
    
    /*self.nextButton.cornerRadius = 10.0;
    self.nextButton.shadowHeight = self.nextButton.frame.size.height * 0.17;
    self.nextButton.buttonColor = [UIColor ht_bitterSweetColor];
    self.nextButton.shadowColor = [UIColor ht_bitterSweetDarkColor];
    
    [self.nextButton setTitle:@"Next" forState:UIControlStateNormal];*/
    
}



@end
