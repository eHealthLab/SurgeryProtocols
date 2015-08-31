 //
//  operatingRoom.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 8/28/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "operatingRoom.h"

@implementation operatingRoom

-(void)viewDidLoad
{
    
    
    self.operatingButton.cornerRadius = 10.0;
    self.operatingButton.shadowHeight = self.operatingButton.frame.size.height * 0.17;
    [self.operatingButton setStyle:HTPressableButtonStyleCircular];
    self.operatingButton.buttonColor = [UIColor ht_bitterSweetColor];
    self.operatingButton.shadowColor = [UIColor ht_bitterSweetDarkColor];
    [self.operatingButton setTitle:@"OPERATING ROOM" forState:UIControlStateNormal];
    self.operatingButton.userInteractionEnabled = NO;
}

@end