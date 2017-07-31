//
//  NSString+HZExtend.h
//  ZHFramework
//
//  Created by xzh. on 15/7/20.
//  Copyright (c) 2015年 xzh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+HZExtend.h"

NS_ASSUME_NONNULL_BEGIN

@interface NSString (HZExtend)

/**
 *  进行md5加密
 */
- (NSString *)md5;

/**
 *  进行URL-Encode
 */
- (NSString *)urlEncode;

/**
 *  进行URL-Decode
 */
- (NSString *)urlDecode;

/**
 *  将字符串转换成json对象
 */
- (id)hz_jsonObject;

/**
 *  以https://github.com/GeniusBrother/HZExtend?author=GeniusBrother为例
 */
- (NSString *)scheme;   //https
- (NSString *)host; //github.com
- (NSString *)allPath;  //https://github.com/GeniusBrother/HZExtend
- (NSString *)path; // /GeniusBrother/HZExtend
- (NSString *)keyValues;    // author=GeniusBrother
- (NSDictionary *)queryDic; //@ {@"author":@"GeniusBrother"}

@end

NS_ASSUME_NONNULL_END
