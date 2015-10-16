//
//  PVIP2Left.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 10/16/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_PVIP2Left_h
#define SurgeryProtocols_PVIP2Left_h

#import <Foundation/Foundation.h>
#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface PVIP2Left: UIViewController

@property (strong, nonatomic) IBOutlet HTPressableButton *nextButton;

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UILabel *label2;

@end

#endif
