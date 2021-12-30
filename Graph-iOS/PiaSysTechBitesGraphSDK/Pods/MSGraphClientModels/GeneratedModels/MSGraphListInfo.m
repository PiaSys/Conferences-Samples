// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphListInfo()
{
    BOOL _contentTypesEnabled;
    BOOL _hidden;
    NSString* _template;
}
@end

@implementation MSGraphListInfo

- (BOOL) contentTypesEnabled
{
    _contentTypesEnabled = [self.dictionary[@"contentTypesEnabled"] boolValue];
    return _contentTypesEnabled;
}

- (void) setContentTypesEnabled: (BOOL) val
{
    _contentTypesEnabled = val;
    self.dictionary[@"contentTypesEnabled"] = @(val);
}

- (BOOL) hidden
{
    _hidden = [self.dictionary[@"hidden"] boolValue];
    return _hidden;
}

- (void) setHidden: (BOOL) val
{
    _hidden = val;
    self.dictionary[@"hidden"] = @(val);
}

- (NSString*) template
{
    if([[NSNull null] isEqual:self.dictionary[@"template"]])
    {
        return nil;
    }   
    return self.dictionary[@"template"];
}

- (void) setTemplate: (NSString*) val
{
    self.dictionary[@"template"] = val;
}

@end
