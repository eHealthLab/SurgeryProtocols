//
//  PCIP2CardiacOutcome.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 10/12/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_PCIP2CardiacOutcome_h
#define SurgeryProtocols_PCIP2CardiacOutcome_h

#import <Foundation/Foundation.h>
#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface PCIP2CardiacOutcome: UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>



@property (weak, nonatomic) IBOutlet UILabel *label;

@end

#endif
