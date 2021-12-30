// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphResourceVisualization()
{
    NSString* _title;
    NSString* _type;
    NSString* _mediaType;
    NSString* _previewImageUrl;
    NSString* _previewText;
    NSString* _containerWebUrl;
    NSString* _containerDisplayName;
    NSString* _containerType;
}
@end

@implementation MSGraphResourceVisualization

- (NSString*) title
{
    if([[NSNull null] isEqual:self.dictionary[@"title"]])
    {
        return nil;
    }   
    return self.dictionary[@"title"];
}

- (void) setTitle: (NSString*) val
{
    self.dictionary[@"title"] = val;
}

- (NSString*) type
{
    if([[NSNull null] isEqual:self.dictionary[@"type"]])
    {
        return nil;
    }   
    return self.dictionary[@"type"];
}

- (void) setType: (NSString*) val
{
    self.dictionary[@"type"] = val;
}

- (NSString*) mediaType
{
    if([[NSNull null] isEqual:self.dictionary[@"mediaType"]])
    {
        return nil;
    }   
    return self.dictionary[@"mediaType"];
}

- (void) setMediaType: (NSString*) val
{
    self.dictionary[@"mediaType"] = val;
}

- (NSString*) previewImageUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"previewImageUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"previewImageUrl"];
}

- (void) setPreviewImageUrl: (NSString*) val
{
    self.dictionary[@"previewImageUrl"] = val;
}

- (NSString*) previewText
{
    if([[NSNull null] isEqual:self.dictionary[@"previewText"]])
    {
        return nil;
    }   
    return self.dictionary[@"previewText"];
}

- (void) setPreviewText: (NSString*) val
{
    self.dictionary[@"previewText"] = val;
}

- (NSString*) containerWebUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"containerWebUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"containerWebUrl"];
}

- (void) setContainerWebUrl: (NSString*) val
{
    self.dictionary[@"containerWebUrl"] = val;
}

- (NSString*) containerDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"containerDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"containerDisplayName"];
}

- (void) setContainerDisplayName: (NSString*) val
{
    self.dictionary[@"containerDisplayName"] = val;
}

- (NSString*) containerType
{
    if([[NSNull null] isEqual:self.dictionary[@"containerType"]])
    {
        return nil;
    }   
    return self.dictionary[@"containerType"];
}

- (void) setContainerType: (NSString*) val
{
    self.dictionary[@"containerType"] = val;
}

@end
