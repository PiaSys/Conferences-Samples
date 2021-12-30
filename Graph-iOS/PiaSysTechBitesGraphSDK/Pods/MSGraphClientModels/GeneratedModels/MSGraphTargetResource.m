// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTargetResource()
{
    NSString* _targetResourceId;
    NSString* _displayName;
    NSString* _type;
    NSString* _userPrincipalName;
    MSGraphGroupType* _groupType;
    NSArray* _modifiedProperties;
}
@end

@implementation MSGraphTargetResource

- (NSString*) targetResourceId
{
    if([[NSNull null] isEqual:self.dictionary[@"id"]])
    {
        return nil;
    }   
    return self.dictionary[@"id"];
}

- (void) setTargetResourceId: (NSString*) val
{
    self.dictionary[@"id"] = val;
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
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

- (NSString*) userPrincipalName
{
    if([[NSNull null] isEqual:self.dictionary[@"userPrincipalName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userPrincipalName"];
}

- (void) setUserPrincipalName: (NSString*) val
{
    self.dictionary[@"userPrincipalName"] = val;
}

- (MSGraphGroupType*) groupType
{
    if(!_groupType){
        _groupType = [self.dictionary[@"groupType"] toMSGraphGroupType];
    }
    return _groupType;
}

- (void) setGroupType: (MSGraphGroupType*) val
{
    _groupType = val;
    self.dictionary[@"groupType"] = val;
}

- (NSArray*) modifiedProperties
{
    if(!_modifiedProperties){
        
    NSMutableArray *modifiedPropertiesResult = [NSMutableArray array];
    NSArray *modifiedProperties = self.dictionary[@"modifiedProperties"];

    if ([modifiedProperties isKindOfClass:[NSArray class]]){
        for (id tempModifiedProperty in modifiedProperties){
            [modifiedPropertiesResult addObject:tempModifiedProperty];
        }
    }

    _modifiedProperties = modifiedPropertiesResult;
        
    }
    return _modifiedProperties;
}

- (void) setModifiedProperties: (NSArray*) val
{
    _modifiedProperties = val;
    self.dictionary[@"modifiedProperties"] = val;
}

@end
