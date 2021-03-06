//
//  AppDelegate.m
//  SurgeryProtocols
//
//  Created by Aarti Munjal on 7/23/15.
//  Copyright (c) 2015 University of Colorado Denver. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
-(void)initProfile
{
    self.ResThoractomySBPControllerLabel = @" ";
    self.AbdominalInjuryFinalOutcomeLabel = @" ";
    self.AbdPelvicTrauma = @"";
    self.AbdPelvicTraumaGradeType = @"";
    self.BluntHepaticLabel = @"";
    self.BluntHepaticScanOutcome = @"";
    self.BluntHepaticPart2BleedingType=@"";
    self.PCIP2HemothoraxType=@"";
    self.PCIP2PneumoType=@"";
    self.PCIP2CXRType=@"";
    self.PCIP2CardiacType=@"";
    self.PCIP2TransmedType=@"";
    self.PCIP1Type=@"";
    self.PCIP1Final=@"";
    self.BPIExpectantFinal=@"";
    self.BATStableFinalOutcome=@"";
    self.PVIP1ImagingOutcome=@"";
    self.PVIP1ImagingType=@"";
    self.PVIP2OperatioOutcome=@"";
    self.PVIP2OperatioOutcome2=@"";
    
    self.responseQuestion1=@"";
    self.responseQuestion2=@"";
    self.responseQuestion3=@"";
    self.responseQuestion4=@"";
    self.responseQuestion5=@"";

}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.ResThoractomySBPControllerLabel = @" ";
    self.AbdominalInjuryFinalOutcomeLabel = @" ";
    self.AbdPelvicTrauma = @"";
    self.AbdPelvicTraumaGradeType = @"";
    self.BluntHepaticLabel = @"";
    self.BluntHepaticScanOutcome = @"";
    self.BluntHepaticPart2BleedingType=@"";
    self.PCIP2HemothoraxType=@"";
    self.PCIP2PneumoType=@"";
    self.PCIP2CXRType=@"";
    self.PCIP2CardiacType=@"";
    self.PCIP2TransmedType=@"";
    self.PCIP1Type=@"";
    self.PCIP1Final=@"";
    self.BPIExpectantFinal=@"";
    self.BATStableFinalOutcome=@"";
    self.PVIP1ImagingOutcome=@"";
    self.PVIP1ImagingType=@"";
    self.PVIP2OperatioOutcome=@"";
    self.PVIP2OperatioOutcome2=@"";
    
    self.responseQuestion1=@"";
    self.responseQuestion2=@"";
    self.responseQuestion3=@"";
    self.responseQuestion4=@"";
    self.responseQuestion5=@"";


    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
