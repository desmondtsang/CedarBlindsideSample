//
//  TestBlindsideModule.m
//  Meow
//
//  Created by Desmond Tsang on 1/13/17.
//  Copyright © 2017 Desmond Tsang. All rights reserved.
//

#import "TestBlindsideModule.h"
#import "MeowManager.h"
#import "MeowTypeProvider.h"
#import "ViewControllerFactory.h"
#import "MeowActionProvider.h"

@implementation TestBlindsideModule 

- (void)configure:(id<BSBinder>) binder {
    MeowManager *meowManager = [MeowManager new];
    [binder bind:[MeowManager class] toInstance:meowManager];
    
    MeowTypeProvider *meowTypeProvider = [MeowTypeProvider new];
    [binder bind:[MeowTypeProvider class] toInstance:meowTypeProvider];
    
    MeowActionProvider *meowActionProvider = [MeowActionProvider new];
    [binder bind:[MeowActionProvider class] toInstance:meowActionProvider];
    
    ViewControllerFactory *viewControllerFactory = [ViewControllerFactory new];
    [binder bind:[ViewControllerFactory class] toInstance:viewControllerFactory];
}

@end
