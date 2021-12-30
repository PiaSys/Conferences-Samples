// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.

#import <Foundation/Foundation.h>

/*
 A helper category to add some convenient methods used by model classes
 */
@interface NSDate (Serialization)

/*
 This method generates a string equivalent of NSDate instance.
 */
- (NSString *)ms_toString;

/*
 This method can be used to get an NSDate instance from a date string
 @param dateString The date string which needs to be converted.
 */
+ (instancetype)ms_dateFromString:(NSString *)dateString;

@end
