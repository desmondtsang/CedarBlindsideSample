//
//  MeowModel.m
//  Meow
//
//  Created by Desmond Tsang on 1/11/17.
//  Copyright © 2017 Desmond Tsang. All rights reserved.
//

#import "MeowModel.h"

@interface MeowModel ()

@property (nonatomic, strong, readwrite) NSString *name;
@property (nonatomic, strong, readwrite) NSString *breed;

@end

@implementation MeowModel

- (instancetype)initWithName:(NSString *)name breed:(NSString *)breed {
    self = [super init];
    if (self) {
        _name = name;
        _breed = breed;
    }
    return self;
}
@end
