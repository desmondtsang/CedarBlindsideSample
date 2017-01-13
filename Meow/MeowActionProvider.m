//
//  MeowActionProvider.m
//  Meow
//
//  Created by Desmond Tsang on 1/12/17.
//  Copyright © 2017 Desmond Tsang. All rights reserved.
//

#import "MeowActionProvider.h"
#import "Blindside.h"

@implementation MeowActionProvider

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

- (NSString *)actionForItem:(NSString *)item {
    if ([item isEqualToString:@"keyboard"]) {
        return @"sleep";
    } else if ([item isEqualToString:@"lasagna"]) {
        return @"eat";
    } else {
        return @"ignore";
    }
}
@end
