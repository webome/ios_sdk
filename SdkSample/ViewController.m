//
//  ViewController.m
//  SdkSample
//
//  Created by Roman Slysh on 2/5/16.
//  Copyright © 2016 Roman Slysh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <SdkDelegate>

@property(nonatomic, strong)Sdk* sdk;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)showPopUp:(id)sender {
  if (self.sdk == nil) {
    self.sdk = [[Sdk alloc] initWithAppId:@"SAMPLE-APP-ID"];
  }
  self.sdk.delegate = self;
  [self.sdk showPopUp];
}

#pragma SdkDelegate

- (void)willAppearAd {
  NSLog(@"willAppearAd");
}

- (void)didAppearAd {
  NSLog(@"didAppearAd");
}

- (void)willDissappearAd {
  NSLog(@"willDissappearAd");
}
- (void)didDissappearAd {
  NSLog(@"didDissappearAd");
}

@end
