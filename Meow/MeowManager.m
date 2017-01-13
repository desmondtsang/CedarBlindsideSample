//
//  MeowManager.m
//  Meow
//
//  Created by Desmond Tsang on 1/11/17.
//  Copyright © 2017 Desmond Tsang. All rights reserved.
//

#import "MeowManager.h"
#import "Blindside.h"

@implementation MeowManager

#pragma mark - Blindside

+ (BSInitializer *)bsInitializer {
    return [BSInitializer initializerWithClass:self selector:@selector(init) argumentKeys: nil];
}

#pragma mark - Initialization

- (instancetype)init {
    self = [super init];
    if (self) {
        // Meow
    }
    return self;
}

#pragma mark - Public

// Manage something blah blah

@end
