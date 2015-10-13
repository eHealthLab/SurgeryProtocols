//
//  BPIExpectantFinal.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 10/12/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BPIExpectantFinal.h"
#import "AppDelegate.h"

@implementation BPIExpectantFinal
{
    AppDelegate *delegate;
}

-(void)viewDidLoad
{
    
    delegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    self.label.text=delegate.BPIExpectantFinal;
    
    
}
@end