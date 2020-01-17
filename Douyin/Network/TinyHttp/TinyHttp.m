//
//  TinyHttp.m
//  Douyin
//
//  Created by zhangyu528 on 2020/1/17.
//  Copyright © 2020 Qiao Shi. All rights reserved.
//

#import "TinyHttp.h"
#import "TinyRequestOperation.h"

@interface TinyHttp()
@property(strong, nonatomic)NSURLSession* session;
@property(strong, nonatomic)NSURLSessionConfiguration* configuration;
@property(strong, nonatomic)NSOperationQueue* queue;
@end

@implementation TinyHttp

+ (instancetype)shared {
    static dispatch_once_t onceToken;
    static TinyHttp* _instance;
    dispatch_once(&onceToken, ^{
        _instance = [TinyHttp new];
    });
    return _instance;
}

- (instancetype)init {
    if (self = [super init]) {
        _queue = [NSOperationQueue new];
        _queue.maxConcurrentOperationCount = 6;
    }
    return self;
}

- (void)startRequest:(id<TinyRequestProtocol>)request completion:(void (^)(id _Nullable, NSError * _Nullable))completion {
    NSURLRequest* req = [NSURLRequest new];//根据request生成req
    TinyRequestOperation* op = [[TinyRequestOperation alloc]initWithRequest:req session:self.session completion:completion];
    [self.queue addOperation:op];
}

- (NSURLSessionConfiguration*)configuration {
    if (_configuration) {
        return _configuration;
    }
    _configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    return _configuration;
}

- (NSURLSession*)session {
    if (_session) {
        return _session;
    }
    _session = [NSURLSession sessionWithConfiguration:self.configuration];
    return _session;
}
@end
