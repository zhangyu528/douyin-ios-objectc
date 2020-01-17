//
//  TinyRequestOperation.h
//  Douyin
//
//  Created by zhangyu528 on 2020/1/17.
//  Copyright © 2020 Qiao Shi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TinyRequestOperation : NSOperation

+ (instancetype)new UNAVAILABLE_ATTRIBUTE;
- (instancetype)init UNAVAILABLE_ATTRIBUTE;

- (instancetype)initWithRequest:(NSURLRequest* __nonnull)request
                        session:(NSURLSession* __nonnull)session
                     completion:(void(^)(id __nullable response, NSError* __nullable error))completion;
@end

NS_ASSUME_NONNULL_END
