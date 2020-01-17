//
//  TinyRequestProtocol.h
//  Douyin
//
//  Created by zhangyu528 on 2020/1/17.
//  Copyright © 2020 Qiao Shi. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, TinyRequestMethod) {
    TinyRequestMethodGET = 0,
    TinyRequestMethodPOST = 1
};

NS_ASSUME_NONNULL_BEGIN

@protocol TinyRequestProtocol <NSObject>
- (NSString*)requestPath;
- (NSDictionary*)requestArgument;
- (Class)responseClass;
- (TinyRequestMethod)requestMethod;
- (NSString*)headerField;
- (NSTimeInterval)timeoutInterval;
@end

NS_ASSUME_NONNULL_END
