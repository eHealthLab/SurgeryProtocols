//
//  SBPController.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 7/30/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_SBPController_h
#define SurgeryProtocols_SBPController_h

#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"


@interface SBPController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *sbpPickerView;

@property (weak, nonatomic) IBOutlet HTPressableButton *nextButton;
- (IBAction)nextButtonPressed:(id)sender;

@property(strong, nonatomic) NSArray *sbpArray;

@end

#endif
