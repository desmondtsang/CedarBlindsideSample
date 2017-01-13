//
//  MeowModel.h
//  Meow
//
//  Created by Desmond Tsang on 1/11/17.
//  Copyright © 2017 Desmond Tsang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MeowModel : NSObject

@property (nonatomic, strong, readonly) NSString *name;
@property (nonatomic, strong, readonly) NSString *breed;

- (instancetype)initWithName:(NSString *)name breed:(NSString *)breed;

@end
