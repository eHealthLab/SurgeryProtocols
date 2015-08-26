//
//  BCVIEmergentYes.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 8/25/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_BCVIEmergentYes_h
#define SurgeryProtocols_BCVIEmergentYes_h

#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface BCVIEmergentYes: UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet HTPressableButton *nextButton;

@property (weak, nonatomic) IBOutlet UIPickerView *BCVIPicker;
@property(strong, nonatomic) NSArray *ctScanArray;


- (IBAction)nextButtonPressed:(id)sender;


@end


#endif
