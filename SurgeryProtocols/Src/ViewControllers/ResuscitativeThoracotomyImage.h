//
//  ResuscitativeThoracotomyImage.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 8/16/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_ResuscitativeThoracotomyImage_h
#define SurgeryProtocols_ResuscitativeThoracotomyImage_h

#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface ResuscitativeThoracotomyImage: UIViewController<UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet HTPressableButton *nextButton;
@property (strong, nonatomic) IBOutlet UIImageView *image;
//- (IBAction)handlePan:(UIGestureRecognizer *)sender;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end



#endif
