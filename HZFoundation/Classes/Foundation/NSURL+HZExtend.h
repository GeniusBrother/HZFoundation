//
//  NSURL+HZExtend.h
//  HZFoundation <https://github.com/GeniusBrother/HZFoundation>
//
//  Created by GeniusBrother on 15/8/21.
//  Copyright (c) 2015 GeniusBrother. All rights reserved.
//
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSURL (HZExtend)

/**
 *  获取查询参数
 *
 *  @return 返回NSDictionary类型实例
 */
- (NSDictionary *)queryDic;

@end

NS_ASSUME_NONNULL_END
