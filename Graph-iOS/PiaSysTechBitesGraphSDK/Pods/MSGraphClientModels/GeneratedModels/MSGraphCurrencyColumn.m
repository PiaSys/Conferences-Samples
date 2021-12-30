// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCurrencyColumn()
{
    NSString* _locale;
}
@end

@implementation MSGraphCurrencyColumn

- (NSString*) locale
{
    if([[NSNull null] isEqual:self.dictionary[@"locale"]])
    {
        return nil;
    }   
    return self.dictionary[@"locale"];
}

- (void) setLocale: (NSString*) val
{
    self.dictionary[@"locale"] = val;
}

@end
