//
//  deadEnd.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 7/29/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "deadEnd.h"

@implementation deadEnd

-(void)viewDidLoad
{
    
    self.deadEndButton.cornerRadius = 10.0;
    self.deadEndButton.shadowHeight = self.deadEndButton.frame.size.height * 0.17;
    [self.deadEndButton setStyle:HTPressableButtonStyleCircular];
    self.deadEndButton.buttonColor = [UIColor ht_bitterSweetColor];
    self.deadEndButton.shadowColor = [UIColor ht_bitterSweetDarkColor];
    [self.deadEndButton setTitle:@"DEAD" forState:UIControlStateNormal];
}

@end