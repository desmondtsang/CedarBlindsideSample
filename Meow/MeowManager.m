//
//  MeowManager.m
//  Meow
//
//  Created by Desmond Tsang on 1/11/17.
//  Copyright © 2017 Desmond Tsang. All rights reserved.
//

#import "MeowManager.h"
#import "Blindside.h"

@interface MeowManager ()

@property (nonatomic, strong) NSMutableArray *cats;

@end

@implementation MeowManager

#pragma mark - Blindside

+ (BSInitializer *)bsInitializer {
    return [BSInitializer initializerWithClass:self selector:@selector(init) argumentKeys: nil];
}

#pragma mark - Initialization

- (instancetype)init {
    self = [super init];
    if (self) {
        self.cats = [NSMutableArray new];
    }
    return self;
}

#pragma mark - Public

- (NSArray <MeowModel *> *)getMeows {
    return [NSArray arrayWithArray:_cats];
}

- (void)addMeow:(MeowModel *)meow {
    if (meow != nil) {
        [self.cats addObject:meow];
    }
}

- (void)addMeows:(NSArray <MeowModel *> *)meows {
    
}

@end
