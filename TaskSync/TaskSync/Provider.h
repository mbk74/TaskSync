//
//  Provider.h
//  TaskSync
//
//  Created by Max Kolesnik on 02.05.2021.
//

#import <Foundation/Foundation.h>
#import "SimpleTask.h"

NS_ASSUME_NONNULL_BEGIN

@interface Provider : NSObject

@property (nonatomic) BOOL shouldExit;

-(void) start;
- (void) addTask:(SimpleTask*)task;
- (BOOL) shouldExit;
@end

NS_ASSUME_NONNULL_END
