//
//  MeowManager.h
//  Meow
//
//  Created by Desmond Tsang on 1/11/17.
//  Copyright © 2017 Desmond Tsang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MeowModel;

@interface MeowManager : NSObject

/*
 * The MeowManager manages a collection of cats.
 * We want to be able to add and retrieve cats.
 * We do not need deletion yet.
// */

- (NSArray <MeowModel *> *)getMeows;
- (void)addMeow:(MeowModel *)meow;
- (void)addMeows:(NSArray <MeowModel *> *)meows;


@end
