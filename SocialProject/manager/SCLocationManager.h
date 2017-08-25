//
//  SCLocationManager.h
//  SocialProject
//
//  Created by Yan Tian on 8/22/17.
//  Copyright © 2017 Yan Tian. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CLLocation;

extern NSString * const SCLocationUpdateNotification;

@interface SCLocationManager : NSObject

+ (instancetype)sharedManager;
- (void)getUserPermission;
+ (BOOL)isLocationServicesEnabled;
- (void)startLoadUserLocation;
- (void)stopLoadUserLocation;
- (CLLocation *)getUserCurrentLocation;

@end
