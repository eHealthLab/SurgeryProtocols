//
//  TEInjury.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 8/16/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_TEInjury_h
#define SurgeryProtocols_TEInjury_h

#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface TEInjury: UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *teInjuryView;
@property (strong, nonatomic) IBOutlet HTPressableButton *nextButton;
@property(strong, nonatomic) NSArray *teInjuryArray;
- (IBAction)nextButtonPressed:(id)sender;
@end



#endif
