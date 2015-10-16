//
//  PVIP2Initial.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 10/15/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_PVIP2Initial_h
#define SurgeryProtocols_PVIP2Initial_h

#import <Foundation/Foundation.h>
#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface PVIP2Initial: UIViewController

@property (strong, nonatomic) IBOutlet HTPressableButton *nextButton;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UILabel *label2;

@end

#endif
