//
//  AppDelegate.m
//  Meow
//
//  Created by Desmond Tsang on 1/11/17.
//  Copyright © 2017 Desmond Tsang. All rights reserved.
//

#import "AppDelegate.h"
#import "Blindside.h"
#import "MeowBlindsideModule.h"
#import "ViewControllerFactory.h"
#import "ViewController.h"

@interface AppDelegate ()

@property (nonatomic, strong) id<BSInjector> injector;

@end

@implementation AppDelegate

#pragma mark - Blindside

- (id<BSInjector>)injector {
    BOOL isRunningSpecs = ([[NSProcessInfo processInfo].environment objectForKey:@"XCInjectBundle"] != nil);
    if (!_injector && !isRunningSpecs){
        _injector = [Blindside injectorWithModules:@[[MeowBlindsideModule new]]];
    }
    return _injector;
}

#pragma mark - AppDele
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    MeowBlindsideModule *module = [MeowBlindsideModule new];
    id<BSInjector> injector = [Blindside injectorWithModule:module];
    ViewControllerFactory *viewControllerFactory = [injector getInstance:[ViewControllerFactory class]];
    self.window.rootViewController = [viewControllerFactory viewController];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
