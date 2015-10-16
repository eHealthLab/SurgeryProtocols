//
//  Question6.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 10/16/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_Question6_h
#define SurgeryProtocols_Question6_h

#import <Foundation/Foundation.h>
#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface Question6: UIViewController

@property (strong, nonatomic) IBOutlet HTPressableButton *submitButton;

@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)submitButtonPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UITextView *commentField;


@end

#endif
