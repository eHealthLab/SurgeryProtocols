//
//  BCVIOperate.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 8/25/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "BCVIOperate.h"
#import <AVFoundation/AVFoundation.h>

@interface BCVIOperate()
{
    AVAudioPlayer *_audioPlayer;
}
@end

@implementation BCVIOperate

-(void)viewDidLoad
{
    
    NSString *path = [NSString stringWithFormat:@"%@/beep.wav", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    // Create audio player object and initialize with URL to sound
    _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    [_audioPlayer play];
    
    
    self.nextButton.cornerRadius = 10.0;
    self.nextButton.shadowHeight = self.nextButton.frame.size.height * 0.17;
    [self.nextButton setStyle:HTPressableButtonStyleCircular];
    self.nextButton.buttonColor = [UIColor ht_bitterSweetColor];
    self.nextButton.shadowColor = [UIColor ht_bitterSweetDarkColor];
    [self.nextButton setTitle:@"OPERATE" forState:UIControlStateNormal];
    self.nextButton.userInteractionEnabled = NO;
    
}
@end
