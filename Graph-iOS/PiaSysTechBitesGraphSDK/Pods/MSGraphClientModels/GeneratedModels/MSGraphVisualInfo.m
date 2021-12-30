// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphVisualInfo()
{
    MSGraphImageInfo* _attribution;
    NSString* _backgroundColor;
    NSString* _visualInfoDescription;
    NSString* _displayText;
    NSDictionary* _content;
}
@end

@implementation MSGraphVisualInfo

- (MSGraphImageInfo*) attribution
{
    if(!_attribution){
        _attribution = [[MSGraphImageInfo alloc] initWithDictionary: self.dictionary[@"attribution"]];
    }
    return _attribution;
}

- (void) setAttribution: (MSGraphImageInfo*) val
{
    _attribution = val;
    self.dictionary[@"attribution"] = val;
}

- (NSString*) backgroundColor
{
    if([[NSNull null] isEqual:self.dictionary[@"backgroundColor"]])
    {
        return nil;
    }   
    return self.dictionary[@"backgroundColor"];
}

- (void) setBackgroundColor: (NSString*) val
{
    self.dictionary[@"backgroundColor"] = val;
}

- (NSString*) visualInfoDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setVisualInfoDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) displayText
{
    return self.dictionary[@"displayText"];
}

- (void) setDisplayText: (NSString*) val
{
    self.dictionary[@"displayText"] = val;
}

- (NSDictionary*) content
{
    if(!_content){
        _content = [[NSDictionary alloc] initWithDictionary: self.dictionary[@"content"]];
    }
    return _content;
}

- (void) setContent: (NSDictionary*) val
{
    _content = val;
    self.dictionary[@"content"] = val;
}

@end
