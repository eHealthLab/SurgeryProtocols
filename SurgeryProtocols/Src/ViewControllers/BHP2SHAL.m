//
//  BHP2SHAL.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 10/11/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BHP2SHAL.h"
#import "AppDelegate.h"

@implementation BHP2SHAL
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
    
    [self.nextButton setTitle:@"Next" forState:UIControlStateNormal];
    
    
}


- (IBAction)nextButtonPressed:(id)sender {
    
    
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"BHP2packAndRes"];
        //delegate.BluntHepaticPart2BleedingType = @"Electrocautery and argon beam Topical hemostatic agents";
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
}

@end

