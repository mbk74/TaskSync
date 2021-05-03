//
//  SimpleTask.m
//  TaskSync
//
//  Created by Max Kolesnik on 03.05.2021.
//

#import "SimpleTask.h"

@interface SimpleTask ()
@property (nonatomic) NSRange rangeDuration;
@property (nonatomic, strong) NSString* name;
@end

@implementation SimpleTask

- (instancetype)initWith:(NSRange) rangeDuration name:(NSString*) name
{
    self = [super init];
    if (self) {
        _rangeDuration = rangeDuration;
        _name = name;
    }
    return self;
}

- (void)execute:(NSRange) rangeDuration {
    NSUInteger sleepTime = rangeDuration.location + arc4random_uniform((uint32)rangeDuration.length);
    [NSThread sleepForTimeInterval:sleepTime];
}

- (NSBlockOperation*)createOperation
{
    return [NSBlockOperation blockOperationWithBlock:^{
        NSLog(@"Begin: %@", self.name);
        [self execute:NSMakeRange(2, 2)];
        NSLog(@"End: %@", self.name);
    }] ;
}

@end
