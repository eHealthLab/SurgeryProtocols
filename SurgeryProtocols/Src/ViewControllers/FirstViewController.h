//
//  FirstViewController.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 7/23/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface FirstViewController : UIViewController

@property (weak, nonatomic) IBOutlet HTPressableButton *startButton;
@property (weak, nonatomic) IBOutlet HTPressableButton *feedbackButton;



@end

