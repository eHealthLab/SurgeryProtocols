//
//  TorsoViewController.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 7/31/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_TorsoViewController_h
#define SurgeryProtocols_TorsoViewController_h

#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface TorsoViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *torsoView;
@property (strong, nonatomic) IBOutlet HTPressableButton *nextButton;
@property(strong, nonatomic) NSArray *torsoArray;


- (IBAction)nextButtonPressed:(id)sender;
@end


#endif
