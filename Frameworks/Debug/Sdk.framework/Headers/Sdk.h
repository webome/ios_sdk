//
//  Sdk.h
//  Sdk
//
//  Created by Roman Slysh on 12/24/15.
//  Copyright © 2015 Sdk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//! Project version number for Sdk.
FOUNDATION_EXPORT double SdkVersionNumber;

//! Project version string for Sdk.
FOUNDATION_EXPORT const unsigned char SdkVersionString[];

@protocol SdkDelegate
@optional
- (void)willAppearAd;
- (void)didAppearAd;
- (void)willDissappearAd;
- (void)didDissappearAd;
@end


@interface Sdk : NSObject

@property (assign) id <SdkDelegate> delegate;

- (instancetype)initWithAppId:(NSString*)appId;

- (void)showPopUp;

@end