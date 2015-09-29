//
//  PenetratingNeckInjuriesImage.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 8/16/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_PenetratingNeckInjuriesImage_h
#define SurgeryProtocols_PenetratingNeckInjuriesImage_h

#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface PenetratingNeckInjuriesImage: UIViewController<UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet HTPressableButton *nextButton;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end



#endif
