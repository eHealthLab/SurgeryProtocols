//
//  OrEndController.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 7/30/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "orEndController.h"
#import <AVFoundation/AVFoundation.h>

@interface OrEndController()
{
    AVAudioPlayer *_audioPlayer;
}
@end

@implementation OrEndController

-(void)viewDidLoad
{
    NSString *path = [NSString stringWithFormat:@"%@/Voicemail.wav", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    // Create audio player object and initialize with URL to sound
    _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    [_audioPlayer play];
    
    self.orEndButton.cornerRadius = 10.0;
    self.orEndButton.shadowHeight = self.orEndButton.frame.size.height * 0.17;
    self.orEndButton.buttonColor = [UIColor ht_bitterSweetColor];
    self.orEndButton.shadowColor = [UIColor ht_bitterSweetDarkColor];
    [self.orEndButton setTitle:@"OR" forState:UIControlStateNormal];
    self.orEndButton.userInteractionEnabled = NO;
}

-(void)viewDidAppear
{
    NSLog(@"in appear\n");
    [_audioPlayer play];
}

@end

