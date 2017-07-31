//
//  NSDate+HZExtend.m
//  Pods
//
//  Created by xzh on 2017/2/17.
//
//

#import "NSDate+HZExtend.h"
#import "NSObject+HZExtend.h"
@implementation NSDate (HZExtend)

#pragma mark - Public Method

#pragma mark Range
- (BOOL)isInToday
{
    return [CURRENT_CALENDAR isDateInToday:self];
}

- (BOOL)isInTomorrow
{
    return [CURRENT_CALENDAR isDateInTomorrow:self];
}

- (BOOL)isInYesterday
{
    return [CURRENT_CALENDAR isDateInYesterday:self];
}

- (BOOL)isInThisMonth
{
    NSDateComponents *nowComponents = [CURRENT_CALENDAR components:NSCalendarUnitMonth fromDate:[NSDate date]];
    NSDateComponents *selfComponents = [CURRENT_CALENDAR components:NSCalendarUnitMonth fromDate:self];
    return nowComponents.month == selfComponents.month;
}

- (BOOL)isInThisWeek
{
    NSDateComponents *nowComponents = [CURRENT_CALENDAR components:NSCalendarUnitWeekOfYear fromDate:[NSDate date]];
    NSDateComponents *selfComponents = [CURRENT_CALENDAR components:NSCalendarUnitWeekOfYear fromDate:self];
    return nowComponents.weekOfYear == selfComponents.weekOfYear;
}

- (BOOL)isInThisYear
{
    NSDateComponents *nowComponents = [CURRENT_CALENDAR components:NSCalendarUnitYear fromDate:[NSDate date]];
    NSDateComponents *selfComponents = [CURRENT_CALENDAR components:NSCalendarUnitYear fromDate:self];
    
    return nowComponents.year == selfComponents.year;
}

#pragma mark Convenience
+ (NSDate *)today
{
    NSDate *date = [NSDate date];
    NSDateComponents *components = [CURRENT_CALENDAR components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay fromDate:date];
    
    return [self dateForFormatterDate:[NSString stringWithFormat:@"%ld-%02ld-%02ld",components.year,components.month,components.day]];
}

+ (NSInteger)currentYear
{
    NSDateComponents *components = [CURRENT_CALENDAR components:NSCalendarUnitYear fromDate:[NSDate today]];
    return components.year;
}

+ (NSUInteger)timeStamp
{
    return [[[NSDate alloc] init] timeStamp];
}


#pragma mark Convert
+ (NSDate *)dateForFormatterDate:(NSString *)fomatterStr
{
    if (!fomatterStr.isNoEmpty) return nil;
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    return [formatter dateFromString:fomatterStr];
}

- (NSString *)formattedDateWithSeparator:(NSString *)separator
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:[NSString stringWithFormat:@"yyyy%@MM%@dd",separator,separator]];
    return [formatter stringFromDate:self];
}

- (NSString *)formattedTimeWithSeparator:(NSString *)separator
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:[NSString stringWithFormat:@"HH%@mm",separator]];
    return [formatter stringFromDate:self];
}

- (NSUInteger)timeStamp
{
    return (NSUInteger)self.timeIntervalSince1970;
}

@end
