// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphChoiceColumn()
{
    BOOL _allowTextEntry;
    NSArray* _choices;
    NSString* _displayAs;
}
@end

@implementation MSGraphChoiceColumn

- (BOOL) allowTextEntry
{
    _allowTextEntry = [self.dictionary[@"allowTextEntry"] boolValue];
    return _allowTextEntry;
}

- (void) setAllowTextEntry: (BOOL) val
{
    _allowTextEntry = val;
    self.dictionary[@"allowTextEntry"] = @(val);
}

- (NSArray*) choices
{
    if([[NSNull null] isEqual:self.dictionary[@"choices"]])
    {
        return nil;
    }   
    return self.dictionary[@"choices"];
}

- (void) setChoices: (NSArray*) val
{
    self.dictionary[@"choices"] = val;
}

- (NSString*) displayAs
{
    if([[NSNull null] isEqual:self.dictionary[@"displayAs"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayAs"];
}

- (void) setDisplayAs: (NSString*) val
{
    self.dictionary[@"displayAs"] = val;
}

@end
