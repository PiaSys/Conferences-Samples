// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphImageInfo()
{
    NSString* _iconUrl;
    NSString* _alternativeText;
    NSString* _alternateText;
    BOOL _addImageQuery;
}
@end

@implementation MSGraphImageInfo

- (NSString*) iconUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"iconUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"iconUrl"];
}

- (void) setIconUrl: (NSString*) val
{
    self.dictionary[@"iconUrl"] = val;
}

- (NSString*) alternativeText
{
    if([[NSNull null] isEqual:self.dictionary[@"alternativeText"]])
    {
        return nil;
    }   
    return self.dictionary[@"alternativeText"];
}

- (void) setAlternativeText: (NSString*) val
{
    self.dictionary[@"alternativeText"] = val;
}

- (NSString*) alternateText
{
    if([[NSNull null] isEqual:self.dictionary[@"alternateText"]])
    {
        return nil;
    }   
    return self.dictionary[@"alternateText"];
}

- (void) setAlternateText: (NSString*) val
{
    self.dictionary[@"alternateText"] = val;
}

- (BOOL) addImageQuery
{
    _addImageQuery = [self.dictionary[@"addImageQuery"] boolValue];
    return _addImageQuery;
}

- (void) setAddImageQuery: (BOOL) val
{
    _addImageQuery = val;
    self.dictionary[@"addImageQuery"] = @(val);
}

@end
