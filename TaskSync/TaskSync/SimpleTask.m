//
//  SimpleTask.m
//  TaskSync
//
//  Created by Max Kolesnik on 03.05.2021.
//

#import "SimpleTask.h"

@implementation SimpleTask

- (void)execute:(NSRange) rangeDuration {
    NSUInteger sleepTime = rangeDuration.location + arc4random_uniform((uint32)rangeDuration.length);
    [NSThread sleepForTimeInterval:sleepTime];
}

@end
