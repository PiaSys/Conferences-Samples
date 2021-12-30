// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCommsNotification()
{
    MSGraphChangeType* _changeType;
    NSString* _resourceUrl;
}
@end

@implementation MSGraphCommsNotification

- (MSGraphChangeType*) changeType
{
    if(!_changeType){
        _changeType = [self.dictionary[@"changeType"] toMSGraphChangeType];
    }
    return _changeType;
}

- (void) setChangeType: (MSGraphChangeType*) val
{
    _changeType = val;
    self.dictionary[@"changeType"] = val;
}

- (NSString*) resourceUrl
{
    return self.dictionary[@"resourceUrl"];
}

- (void) setResourceUrl: (NSString*) val
{
    self.dictionary[@"resourceUrl"] = val;
}

@end
