//
//  AppDelegate.m
//  SocialProject
//
//  Created by Yan Tian on 8/17/17.
//  Copyright © 2017 Yan Tian. All rights reserved.
//

#import "AppDelegate.h"
#import "SCTabBarController.h"
#import "SCLocationManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[SCTabBarController alloc] init];
    [self.window makeKeyAndVisible];
    [self updateLocation];
    return YES;

}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}

- (void)updateLocation
{
    if ([SCLocationManager isLocationServicesEnabled]) {
        SCLocationManager *locationManager  = [SCLocationManager sharedManager];
        [locationManager startLoadUserLocation];
    }
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    [[SCLocationManager sharedManager] stopLoadUserLocation];
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    [self updateLocation];
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
