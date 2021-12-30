// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRecordOperation()
{
    NSString* _recordingLocation;
    NSString* _recordingAccessToken;
}
@end

@implementation MSGraphRecordOperation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.recordOperation";
    }
    return self;
}
- (NSString*) recordingLocation
{
    if([[NSNull null] isEqual:self.dictionary[@"recordingLocation"]])
    {
        return nil;
    }   
    return self.dictionary[@"recordingLocation"];
}

- (void) setRecordingLocation: (NSString*) val
{
    self.dictionary[@"recordingLocation"] = val;
}

- (NSString*) recordingAccessToken
{
    if([[NSNull null] isEqual:self.dictionary[@"recordingAccessToken"]])
    {
        return nil;
    }   
    return self.dictionary[@"recordingAccessToken"];
}

- (void) setRecordingAccessToken: (NSString*) val
{
    self.dictionary[@"recordingAccessToken"] = val;
}


@end
