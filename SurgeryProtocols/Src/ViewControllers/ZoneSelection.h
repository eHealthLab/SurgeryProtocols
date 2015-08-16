//
//  ZoneSelection.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 8/13/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_ZoneSelection_h
#define SurgeryProtocols_ZoneSelection_h
#import <UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface ZoneSelection : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *zoneSelectionView;
@property (strong, nonatomic) IBOutlet HTPressableButton *nextButton;
@property(strong, nonatomic) NSArray *zoneSelectionArray;


- (IBAction)nextButtonPressed:(id)sender;
@end

#endif
