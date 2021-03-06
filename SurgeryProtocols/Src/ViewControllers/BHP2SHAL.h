//
//  BHP2SHAL.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 10/11/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_BHP2SHAL_h
#define SurgeryProtocols_BHP2SHAL_h

#import <Foundation/Foundation.h>
#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface BHP2SHAL: UIViewController

@property (strong, nonatomic) IBOutlet HTPressableButton *nextButton;
//@property (weak, nonatomic) IBOutlet UIPickerView *BluntHepaticPicker;
//@property(strong, nonatomic) NSArray *BluntHepaticArray;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)nextButtonPressed:(id)sender;
@end

#endif
