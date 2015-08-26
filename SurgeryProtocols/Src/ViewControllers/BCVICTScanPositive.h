//
//  BCVICTScanPositive.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 8/25/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_BCVICTScanPositive_h
#define SurgeryProtocols_BCVICTScanPositive_h

#import <Foundation/Foundation.h>
#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface BCVICTScanPositive: UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet HTPressableButton *nextButton;

@property (weak, nonatomic) IBOutlet UIPickerView *BCVIPicker;
@property(strong, nonatomic) NSArray *ctScanArray;


- (IBAction)nextButtonPressed:(id)sender;

@end

#endif
