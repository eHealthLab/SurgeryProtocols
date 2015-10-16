//
//  operativeIntervention.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 10/14/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "operativeIntervention.h"
#import "AppDelegate.h"

@implementation operativeIntervention
{
    AppDelegate *delegate;
}

-(void)viewDidLoad
{
    
    delegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    
    self.nextButton.cornerRadius = 10.0;
    self.nextButton.shadowHeight = self.nextButton.frame.size.height * 0.17;
    self.nextButton.buttonColor = [UIColor ht_bitterSweetColor];
    self.nextButton.shadowColor = [UIColor ht_bitterSweetDarkColor];
    
}
@end



