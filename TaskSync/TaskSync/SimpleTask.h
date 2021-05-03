//
//  SimpleTask.h
//  TaskSync
//
//  Created by Max Kolesnik on 03.05.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SimpleTask : NSObject

- (instancetype)initWith:(NSRange) rangeDuration name:(NSString*) name;
- (NSBlockOperation*)createOperation;

@end

NS_ASSUME_NONNULL_END
