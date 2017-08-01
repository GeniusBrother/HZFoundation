//
//  NSArray+HzExtend.h
//  HZFoundation <https://github.com/GeniusBrother/HZFoundation>
//
//  Created by GeniusBrother on 15/7/20.
//  Copyright (c) 2015 GeniusBrother. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+HZExtend.h"

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (HZExtend)

/**
 Returns the object located at index, or return nil when out of bounds
 
 @param index index of the object
 */
- (nullable id)objectAtSafeIndex:(NSInteger)index;

/**
 Returns a reversed Array
 */
- (NSArray *)reversedArray;

/**
 Converts receiver to json string. return nil if an error occurs.
 */
- (NSString *)jsonString;

@end



typedef NSComparisonResult	(^NSMutableArrayCompareBlock)(id left, id right);
@interface NSMutableArray (HZExtend)

/**
 Removes the object located at index.
 
 @discussion If index is out of bounds, the method has no effect and never throw exception.

 @param index index of the object
 */
- (void)safeRemoveObjectAtIndex:(NSInteger)index;

/**
 *	添加不重复的元素
 *
 *	@param object  元素
 *  @param compare 指定比较的方式,基本数据类型可以传递nil
 */
- (void)addUniqueObject:(id)object compare:(NSMutableArrayCompareBlock)compare;

@end

@interface NSMutableArray (HZDeprecated)

- (void)appendPageArray:(NSArray *)pageArray pageNumber:(NSInteger)currentPageNumber pageSize:(NSInteger)pageSize __deprecated_msg("已经废弃");

- (void)removeDataForPage:(NSInteger)page pageSize:(NSInteger)pageSize __deprecated_msg("已经废弃");

@end
NS_ASSUME_NONNULL_END
