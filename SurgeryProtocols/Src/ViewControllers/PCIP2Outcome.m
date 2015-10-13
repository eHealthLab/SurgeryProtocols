//
//  PCIP2Outcome.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 10/12/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PCIP2Outcome.h"
#import "AppDelegate.h"

@implementation PCIP2Outcome
{
    AppDelegate *delegate;
}

-(void)viewDidLoad
{
    
    delegate = (AppDelegate*)[[UIApplication sharedApplication]delegate];
    self.label.text = delegate.PCIP2PneumoType;
}




@end


