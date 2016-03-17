# iOS SDK

## iOS SDK will allow you to integrate our Ad Monetization Platform inside your native iOS applications. ##

Support:

* *iOS 8 or greater*
* *Banner*

There are two versions of iOS SDK:

* Debug (includes armv7, armv7s, arm64, i386, x86_64 architectures) for iOS Simulator

* **Release** (includes only armv7, armv7s, arm64 architectures)

Register your app and get your unique appid.

Download and add **Sdk.framework** to your project.

In your project settings change **ENABLE_BITCODE** to **NO.**

For iOS 9 add TransportSecurity key to you Info.plist file:

```xml
<key>NSAppTransportSecurity</key>
	<dict>
		<key>NSAllowsArbitraryLoads</key>
		<true/>
	</dict>
```

### In source code import Sdk.h ###


```
#!objective-c

#import <Sdk/Sdk.h>

@property(nonatomic, strong)Sdk* sdk;

- (void)viewDidLoad {
  if (self.sdk == nil) {
    self.sdk = [[Sdk alloc] initWithAppId:@"SAMPLE-APP-ID"];
  }
  self.sdk.delegate = self;
  [self.sdk showPopUp];
}
```

### SdkDelegate optional methods: ###


```
#!objective-c

- (void)willAppearAd //called before to be presented

- (void)didAppearAd // called after to be presented

- (void)willDissappearAd // celled before to be dissapear

- (void)didDissappearAd // celled after to be dissapear
```
