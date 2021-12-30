// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphItemBody()
{
    MSGraphBodyType* _contentType;
    NSString* _content;
}
@end

@implementation MSGraphItemBody

- (MSGraphBodyType*) contentType
{
    if(!_contentType){
        _contentType = [self.dictionary[@"contentType"] toMSGraphBodyType];
    }
    return _contentType;
}

- (void) setContentType: (MSGraphBodyType*) val
{
    _contentType = val;
    self.dictionary[@"contentType"] = val;
}

- (NSString*) content
{
    if([[NSNull null] isEqual:self.dictionary[@"content"]])
    {
        return nil;
    }   
    return self.dictionary[@"content"];
}

- (void) setContent: (NSString*) val
{
    self.dictionary[@"content"] = val;
}

@end
