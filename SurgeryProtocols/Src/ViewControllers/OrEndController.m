//
//  OrEndController.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 7/30/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "orEndController.h"

@implementation OrEndController

-(void)viewDidLoad
{
    self.orEndButton.cornerRadius = 10.0;
    self.orEndButton.shadowHeight = self.orEndButton.frame.size.height * 0.17;
    self.orEndButton.buttonColor = [UIColor ht_bitterSweetColor];
    self.orEndButton.shadowColor = [UIColor ht_bitterSweetDarkColor];
    [self.orEndButton setTitle:@"OR" forState:UIControlStateNormal];
}
@end

