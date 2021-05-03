//
//  Provider.m
//  TaskSync
//
//  Created by Max Kolesnik on 02.05.2021.
//

#import "Provider.h"
@interface Provider ()

@property (nonatomic, strong) NSObject* syncronizer;
@property (nonatomic, strong) NSOperationQueue* queue;

@end

@implementation Provider

- (instancetype)init
{
    self = [super init];
    if (self) {
        _queue = [NSOperationQueue new];
    }
    return self;
}

- (void) start
{
    NSLog(@"Start provider");
//    [self addTask:[[SimpleTask alloc] initWith:NSMakeRange(5, 5) name:@"Facebook consent"]];
//    [self addTask:[[SimpleTask alloc] initWith:NSMakeRange(5, 5) name:@"Instagram consent"]];
    NSBlockOperation *blockCompletionOperation = [NSBlockOperation blockOperationWithBlock:^{
        sleep(3);
        NSLog(@"Finish provider");
        self.shouldExit = YES;
    }];
    [self.queue addOperation:blockCompletionOperation];
}

- (void) addTask:(SimpleTask*)task
{
    [self.queue addOperation:[task createOperation]];
}

@end
