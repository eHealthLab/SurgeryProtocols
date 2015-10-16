//
//  BPILowRisk2.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 10/16/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_BPILowRisk2_h
#define SurgeryProtocols_BPILowRisk2_h

#import <Foundation/Foundation.h>
#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface BPILowRisk2: UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet HTPressableButton *nextButton;
@property (weak, nonatomic) IBOutlet UIPickerView *BluntHepaticPicker;
@property(strong, nonatomic) NSArray *BluntHepaticArray;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)nextButtonPressed:(id)sender;
@end


#endif
