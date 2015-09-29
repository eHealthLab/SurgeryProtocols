//
//  BLTHepticStable.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 9/26/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_BLTHepticStable_h
#define SurgeryProtocols_BLTHepticStable_h


#import <Foundation/Foundation.h>
#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface BLTHepticStable: UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet HTPressableButton *nextButton;
@property (weak, nonatomic) IBOutlet UIPickerView *BluntHepaticPicker;
@property(strong, nonatomic) NSArray *BluntHepaticArray;
- (IBAction)nextButtonPressed:(id)sender;
@end

#endif
