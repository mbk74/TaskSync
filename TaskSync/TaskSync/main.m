//
//  main.m
//  TaskSync
//
//  Created by Max Kolesnik on 02.05.2021.
//

#import <Foundation/Foundation.h>
#import "Provider.h"

int main(int argc, const char * argv[]) {
    
    NSRunLoop   * runLoop;
    Provider * provider;
    
    @autoreleasepool {
        runLoop = [NSRunLoop currentRunLoop];
        provider = [Provider new];
        [provider start];
        while((!(provider.shouldExit)) && (([runLoop runMode:NSDefaultRunLoopMode beforeDate:[NSDate dateWithTimeIntervalSinceNow:2]])));
    }
    return 0;
}
