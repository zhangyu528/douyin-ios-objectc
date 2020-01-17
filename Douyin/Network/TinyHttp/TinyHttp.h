//
//  TinyHttp.h
//  Douyin
//
//  Created by zhangyu528 on 2020/1/17.
//  Copyright © 2020 Qiao Shi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TinyRequestProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface TinyHttp : NSObject

+ (instancetype)shared;

- (void)startRequest:(id<TinyRequestProtocol> __nonnull)request completion:(void(^)(id __nullable response, NSError* __nullable error))completion;
@end

NS_ASSUME_NONNULL_END
