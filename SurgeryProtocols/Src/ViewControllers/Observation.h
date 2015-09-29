//
//  Observation.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 9/26/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_Observation_h
#define SurgeryProtocols_Observation_h

#import <Foundation/Foundation.h>
#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface Observation: UIViewController

@property (strong, nonatomic) IBOutlet HTPressableButton *nextButton;
//- (IBAction)nextButtonPressed:(id)sender;
//@property (weak, nonatomic) IBOutlet UILabel *AngioLabel;
@end



#endif
