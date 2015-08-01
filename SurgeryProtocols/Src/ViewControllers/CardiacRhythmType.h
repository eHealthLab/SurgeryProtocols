//
//  CardiacRhythmType.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 7/30/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_CardiacRhythmType_h
#define SurgeryProtocols_CardiacRhythmType_h


#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"


@interface CardiacRhythmType : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *rhythmPickerView;

@property (weak, nonatomic) IBOutlet HTPressableButton *nextButton;
- (IBAction)nextButtonPressed:(id)sender;

@property(strong, nonatomic) NSArray *rhythmTypeArray;

@end

#endif
