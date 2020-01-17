//
//  TinyBaseRequest.m
//  Douyin
//
//  Created by zhangyu528 on 2020/1/17.
//  Copyright © 2020 Qiao Shi. All rights reserved.
//

#import "TinyBaseRequest.h"

@implementation TinyBaseRequest

- (NSString*)requestPath {
    return nil;
}

- (NSDictionary*)requestArgument {
    return nil;
}

- (Class)responseClass {
    return nil;
}

- (TinyRequestMethod)requestMethod {
    return TinyRequestMethodGET;
}

- (NSString*)headerField {
    return @"Authorization";
}

- (NSTimeInterval)timeoutInterval {
    return 30.f;
}
@end
