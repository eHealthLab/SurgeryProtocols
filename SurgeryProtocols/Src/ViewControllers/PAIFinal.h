//
//  PAIFinal.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 8/28/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_PAIFinal_h
#define SurgeryProtocols_PAIFinal_h

#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface PAIFinal : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *finalLabel;
@property (strong, nonatomic) IBOutlet HTPressableButton *nextButton;

@end

#endif
