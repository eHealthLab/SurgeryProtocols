//
//  EDTCardiacRhythm.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 7/30/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_EDTCardiacRhythm_h
#define SurgeryProtocols_EDTCardiacRhythm_h

#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface EDTCardiacRhythm : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *EDTPickerView;

@property (weak, nonatomic) IBOutlet HTPressableButton *nextButton;
- (IBAction)nextButtonPressed:(id)sender;

@property(strong, nonatomic) NSArray *edtArray;

@end

#endif
