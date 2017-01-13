//
//  ViewControllerFactory.m
//  Meow
//
//  Created by Desmond Tsang on 1/11/17.
//  Copyright © 2017 Desmond Tsang. All rights reserved.
//

#import "ViewControllerFactory.h"
#import "Blindside.h"
#import "BlindsidedStoryboard.h"
#import "ViewController.h"

@interface ViewControllerFactory ()

@property (nonatomic, strong) id<BSInjector> injector;

@end

@implementation ViewControllerFactory

#pragma mark - Blindside

- (ViewController *)viewController {
    return [self instantiateViewControllerWithIdentifier:NSStringFromClass([ViewController class]) fromStoryboardNamed:@"Main"];
}

#pragma mark - Private

- (id)instantiateViewControllerWithIdentifier:(NSString *)viewControllerIdentifier
                          fromStoryboardNamed:(NSString *)storyboardName
{
    BlindsidedStoryboard *storyboard = [BlindsidedStoryboard storyboardWithName:storyboardName
                                                                         bundle:nil
                                                                       injector:self.injector];
    return [storyboard instantiateViewControllerWithIdentifier:viewControllerIdentifier];
}
@end
