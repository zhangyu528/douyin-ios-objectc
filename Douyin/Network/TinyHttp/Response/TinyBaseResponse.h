//
//  TinyBaseResponse.h
//  Douyin
//
//  Created by zhangyu528 on 2020/1/17.
//  Copyright © 2020 Qiao Shi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TinyBaseResponse : NSObject
@property(assign, nonatomic)NSInteger code;
@property(assign, nonatomic)NSString* message;
@property(assign, nonatomic)NSInteger has_more;
@property(assign, nonatomic)NSInteger total_count;
@end

NS_ASSUME_NONNULL_END
