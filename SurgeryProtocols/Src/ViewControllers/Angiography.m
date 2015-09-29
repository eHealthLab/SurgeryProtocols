//
//  Angiography.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 9/26/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Angiography.h"
#import "AppDelegate.h"

@implementation Angiography
{
    AppDelegate *delegate;
}

-(void)viewDidLoad
{
    
    delegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    
    
    self.AngioLabel = delegate.AbdPelvicTrauma;
    self.nextButton.cornerRadius = 10.0;
    self.nextButton.shadowHeight = self.nextButton.frame.size.height * 0.17;
    self.nextButton.buttonColor = [UIColor ht_bitterSweetColor];
    self.nextButton.shadowColor = [UIColor ht_bitterSweetDarkColor];
    
    [self.nextButton setTitle:@"Next" forState:UIControlStateNormal];
    
}



- (IBAction)nextButtonPressed:(id)sender {
    
    
        UIViewController *uiViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"observation"];
        
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
        barButton.title=@"Back";
        
        self.navigationController.navigationBar.topItem.backBarButtonItem = barButton;
        
        [self.navigationController pushViewController:uiViewController animated:YES];
    
}

@end

