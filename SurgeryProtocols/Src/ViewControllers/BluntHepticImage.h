//
//  BluntHepticImage.h
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 10/14/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#ifndef SurgeryProtocols_BluntHepticImage_h
#define SurgeryProtocols_BluntHepticImage_h

#import <Foundation/Foundation.h>
#import<UIKit/UIKit.h>
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface BluntHepticImage: UIViewController<UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet HTPressableButton *nextButton;


@property (strong, nonatomic) IBOutlet UIImageView *image;

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end


#endif
