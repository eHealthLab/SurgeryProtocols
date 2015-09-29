//
//  PenetratingNeckInjuriesImage.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 8/16/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PenetratingNeckInjuriesImage.h"

@implementation PenetratingNeckInjuriesImage

-(void)viewDidLoad
{
    /*UIGraphicsBeginImageContext(self.view.frame.size);
     [[UIImage imageNamed:@"UCH_13_Shandra_Wilson_468.Jpeg"] drawInRect:self.view.bounds];
     UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
     [image drawAtPoint:CGPointZero blendMode:kCGBlendModeOverlay alpha:0.3];
     UIGraphicsEndImageContext();
     
     self.view.backgroundColor = [[UIColor colorWithPatternImage:image] colorWithAlphaComponent:0.8];*/
    
    self.scrollView.delegate = self;
    
    self.scrollView.minimumZoomScale=1.0;
    self.scrollView.maximumZoomScale=6.0;
    
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