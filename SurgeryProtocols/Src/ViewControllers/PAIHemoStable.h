//
//  PAIHemoStable.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 8/28/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_PAIHemoStable_h
#define SurgeryProtocols_PAIHemoStable_h

#import <Foundation/Foundation.h>
#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface PAIHemoStable: UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet HTPressableButton *nextButton;
@property (weak, nonatomic) IBOutlet UIPickerView *PAIPicker;
@property(strong, nonatomic) NSArray *PAIArray;
- (IBAction)nextButtonPressed:(id)sender;

@end


#endif
