//
//  HardSignsP2.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 8/13/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_HardSignsP2_h
#define SurgeryProtocols_HardSignsP2_h

#import <UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface HardSignsP2 : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *hardSignsView;
@property (strong, nonatomic) IBOutlet HTPressableButton *nextButton;
@property(strong, nonatomic) NSArray *hardSignsArray;


- (IBAction)nextButtonPressed:(id)sender;
@end

#endif
