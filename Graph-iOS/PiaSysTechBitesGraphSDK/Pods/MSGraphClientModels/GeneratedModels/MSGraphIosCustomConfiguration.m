// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIosCustomConfiguration()
{
    NSString* _payloadName;
    NSString* _payloadFileName;
    NSString* _payload;
}
@end

@implementation MSGraphIosCustomConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.iosCustomConfiguration";
    }
    return self;
}
- (NSString*) payloadName
{
    return self.dictionary[@"payloadName"];
}

- (void) setPayloadName: (NSString*) val
{
    self.dictionary[@"payloadName"] = val;
}

- (NSString*) payloadFileName
{
    if([[NSNull null] isEqual:self.dictionary[@"payloadFileName"]])
    {
        return nil;
    }   
    return self.dictionary[@"payloadFileName"];
}

- (void) setPayloadFileName: (NSString*) val
{
    self.dictionary[@"payloadFileName"] = val;
}

- (NSString*) payload
{
    return self.dictionary[@"payload"];
}

- (void) setPayload: (NSString*) val
{
    self.dictionary[@"payload"] = val;
}


@end
