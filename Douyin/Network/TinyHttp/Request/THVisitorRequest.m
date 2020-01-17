//
//  THVisitorRequest.m
//  Douyin
//
//  Created by zhangyu528 on 2020/1/17.
//  Copyright © 2020 Qiao Shi. All rights reserved.
//

#import "THVisitorRequest.h"

@implementation THVisitorRequest

- (TinyRequestMethod)requestMethod {
    return TinyRequestMethodPOST;
}

- (NSString*)requestPath {
    return @"visitor/create";
}

- (NSDictionary*)requestArgument {
    return @{
        @"udid": self.udid
    };
}
@end
