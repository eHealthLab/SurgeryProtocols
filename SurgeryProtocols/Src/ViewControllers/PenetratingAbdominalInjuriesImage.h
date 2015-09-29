//
//  PenetratingAbdominalInjuriesImage.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 9/29/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_PenetratingAbdominalInjuriesImage_h
#define SurgeryProtocols_PenetratingAbdominalInjuriesImage_h

#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface PenetratingAbdominalInjuriesImage: UIViewController<UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet HTPressableButton *nextButton;
@property (strong, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;


@end

#endif
