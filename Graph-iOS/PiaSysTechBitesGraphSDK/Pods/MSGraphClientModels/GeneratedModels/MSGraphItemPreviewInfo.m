// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphItemPreviewInfo()
{
    NSString* _getUrl;
    NSString* _postParameters;
    NSString* _postUrl;
}
@end

@implementation MSGraphItemPreviewInfo

- (NSString*) getUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"getUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"getUrl"];
}

- (void) setGetUrl: (NSString*) val
{
    self.dictionary[@"getUrl"] = val;
}

- (NSString*) postParameters
{
    if([[NSNull null] isEqual:self.dictionary[@"postParameters"]])
    {
        return nil;
    }   
    return self.dictionary[@"postParameters"];
}

- (void) setPostParameters: (NSString*) val
{
    self.dictionary[@"postParameters"] = val;
}

- (NSString*) postUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"postUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"postUrl"];
}

- (void) setPostUrl: (NSString*) val
{
    self.dictionary[@"postUrl"] = val;
}

@end
