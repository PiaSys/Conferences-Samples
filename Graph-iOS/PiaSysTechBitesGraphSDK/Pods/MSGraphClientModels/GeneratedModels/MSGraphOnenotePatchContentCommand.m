// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOnenotePatchContentCommand()
{
    MSGraphOnenotePatchActionType* _action;
    NSString* _target;
    NSString* _content;
    MSGraphOnenotePatchInsertPosition* _position;
}
@end

@implementation MSGraphOnenotePatchContentCommand

- (MSGraphOnenotePatchActionType*) action
{
    if(!_action){
        _action = [self.dictionary[@"action"] toMSGraphOnenotePatchActionType];
    }
    return _action;
}

- (void) setAction: (MSGraphOnenotePatchActionType*) val
{
    _action = val;
    self.dictionary[@"action"] = val;
}

- (NSString*) target
{
    return self.dictionary[@"target"];
}

- (void) setTarget: (NSString*) val
{
    self.dictionary[@"target"] = val;
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

- (MSGraphOnenotePatchInsertPosition*) position
{
    if(!_position){
        _position = [self.dictionary[@"position"] toMSGraphOnenotePatchInsertPosition];
    }
    return _position;
}

- (void) setPosition: (MSGraphOnenotePatchInsertPosition*) val
{
    _position = val;
    self.dictionary[@"position"] = val;
}

@end
