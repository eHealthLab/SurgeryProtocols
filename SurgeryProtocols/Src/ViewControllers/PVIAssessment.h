//
//  PVIAssessment.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 8/30/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_PVIAssessment_h
#define SurgeryProtocols_PVIAssessment_h


#import <Foundation/Foundation.h>
#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface PVIAssessment: UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet HTPressableButton *nextButton;
@property (weak, nonatomic) IBOutlet UIPickerView *PVIPicker;
@property(strong, nonatomic) NSArray *PVIArray;
- (IBAction)nextButtonPressed:(id)sender;

@end


#endif
