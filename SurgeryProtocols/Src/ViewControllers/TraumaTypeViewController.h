//
//  TraumaTypeViewController.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 7/29/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_TraumaTypeViewController_h
#define SurgeryProtocols_TraumaTypeViewController_h
#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"
#import "AFPickerView.h"
#import "CPPickerView.h"


@interface TraumaTypeViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *traumaTypePickerView;
@property(strong, nonatomic) NSArray *traumaTypesArray;
@property(strong, nonatomic) NSString *selectedTraumaType;
@property (weak, nonatomic) IBOutlet HTPressableButton *nextButton;
- (IBAction)nextButtonPressed:(id)sender;


@end

#endif
