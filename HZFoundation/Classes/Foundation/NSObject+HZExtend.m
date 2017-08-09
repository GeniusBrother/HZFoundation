//
//  NSObject+HZExtend.m
//  HZFoundation <https://github.com/GeniusBrother/HZFoundation>
//
//  Created by GeniusBrother on 15/7/26.
//  Copyright (c) 2015 GeniusBrother. All rights reserved.
//

#import "NSObject+HZExtend.h"

@implementation NSObject (HZExtend)

- (BOOL)isNoEmpty
{
    if ([self isKindOfClass:[NSNull class]])
    {
        return NO;
    }
    else if ([self isKindOfClass:[NSString class]])
    {
        return [(NSString *)self length] > 0;
    }
    else if ([self isKindOfClass:[NSData class]])
    {
        
        return [(NSData *)self length] > 0;
    }
    else if ([self isKindOfClass:[NSArray class]])
    {
        
        return [(NSArray *)self count] > 0;
    }
    else if ([self isKindOfClass:[NSDictionary class]])
    {
        
        return [(NSDictionary *)self count] > 0;
    }
    
    return YES;
}

@end
