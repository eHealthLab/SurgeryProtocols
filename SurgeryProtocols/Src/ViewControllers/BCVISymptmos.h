//
//  BCVISymptmos.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 10/13/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_BCVISymptmos_h
#define SurgeryProtocols_BCVISymptmos_h

#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface BCVISymptmos: UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *BCVIView;
@property (strong, nonatomic) IBOutlet HTPressableButton *nextButton;
@property(strong, nonatomic) NSArray *BCVIArray;


- (IBAction)nextButtonPressed:(id)sender;
@end

#endif
