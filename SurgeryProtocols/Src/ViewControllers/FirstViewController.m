//
//  FirstViewController.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 7/23/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"UCH_13_Shandra_Wilson_468.Jpeg"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    [image drawAtPoint:CGPointZero blendMode:kCGBlendModeOverlay alpha:0.3];
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [[UIColor colorWithPatternImage:image] colorWithAlphaComponent:0.8];
    
    
    self.startButton.cornerRadius = 10.0;
    self.startButton.shadowHeight = self.startButton.frame.size.height * 0.17;
    
    
    self.startButton.buttonColor = [UIColor ht_bitterSweetColor];
    self.startButton.shadowColor = [UIColor ht_bitterSweetDarkColor];
    
    [self.startButton setTitle:@"Start Here" forState:UIControlStateNormal];
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
