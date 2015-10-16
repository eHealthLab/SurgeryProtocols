//
//  BATImage.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 10/13/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BSIImage.h"
#import "AppDelegate.h"

@implementation BSIImage
{
    AppDelegate *delegate;
}

-(void)viewDidLoad
{
    
    self.scrollView.delegate = self;
    
    self.scrollView.minimumZoomScale=1.0;
    self.scrollView.maximumZoomScale=6.0;
    

    
    delegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    
    self.nextButton.cornerRadius = 10.0;
    self.nextButton.shadowHeight = self.nextButton.frame.size.height * 0.17;
    self.nextButton.buttonColor = [UIColor ht_bitterSweetColor];
    self.nextButton.shadowColor = [UIColor ht_bitterSweetDarkColor];
    
    [self.nextButton setTitle:@"Next" forState:UIControlStateNormal];
}
-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.image;
}
@end
