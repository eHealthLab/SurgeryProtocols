//
//  ProtocolType.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 8/13/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_ProtocolType_h
#define SurgeryProtocols_ProtocolType_h
#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface ProtocolType: UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *protocolPicker;
@property (weak, nonatomic) IBOutlet HTPressableButton *nextButton;
- (IBAction)nextButtonPressed:(id)sender;
@property(strong, nonatomic) NSArray *protocolTypeArray;

@end

#endif
