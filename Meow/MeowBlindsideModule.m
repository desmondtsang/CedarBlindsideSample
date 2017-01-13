//
//  MeowBlindsideModule.m
//  Meow
//
//  Created by Desmond Tsang on 1/11/17.
//  Copyright © 2017 Desmond Tsang. All rights reserved.
//

#import "MeowBlindsideModule.h"
#import "MeowManager.h"
#import "ViewControllerFactory.h"
#import "MeowActionProvider.h"

@implementation MeowBlindsideModule

- (void)configure:(id<BSBinder>) binder {
    [binder bind:[MeowManager class] withScope:[BSSingleton scope]];
    
    MeowActionProvider *meowActionProvider = [MeowActionProvider new];
    [binder bind:[MeowActionProvider class] toInstance:meowActionProvider];
    
    [binder bind:[ViewControllerFactory class] withScope:[BSSingleton scope]];
}

@end
