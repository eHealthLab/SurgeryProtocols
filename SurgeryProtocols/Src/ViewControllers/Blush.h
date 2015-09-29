//
//  Blush.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 9/23/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_Blush_h
#define SurgeryProtocols_Blush_h

#import <Foundation/Foundation.h>
#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface Blush: UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet HTPressableButton *nextButton;
@property (weak, nonatomic) IBOutlet UIPickerView *AbdPelCTPicker;
@property(strong, nonatomic) NSArray *AbdPelCTArray;
- (IBAction)nextButtonPressed:(id)sender;
@end

#endif
