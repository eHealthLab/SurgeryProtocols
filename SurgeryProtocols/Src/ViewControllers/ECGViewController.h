//
//  ECGViewController.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 7/29/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_ECGViewController_h
#define SurgeryProtocols_ECGViewController_h
#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface ECGViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *rhythmView;
@property (strong, nonatomic) IBOutlet HTPressableButton *nextButton;
@property(strong, nonatomic) NSArray *rhythmArray;
- (IBAction)nextButtonPressed:(id)sender;
- (IBAction)moreInfoButtonPressed:(id)sender;


@end

#endif
