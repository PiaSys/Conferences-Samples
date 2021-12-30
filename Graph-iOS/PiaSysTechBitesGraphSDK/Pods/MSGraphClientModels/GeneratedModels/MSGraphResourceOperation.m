// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphResourceOperation()
{
    NSString* _resourceName;
    NSString* _actionName;
    NSString* _resourceOperationDescription;
}
@end

@implementation MSGraphResourceOperation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.resourceOperation";
    }
    return self;
}
- (NSString*) resourceName
{
    if([[NSNull null] isEqual:self.dictionary[@"resourceName"]])
    {
        return nil;
    }   
    return self.dictionary[@"resourceName"];
}

- (void) setResourceName: (NSString*) val
{
    self.dictionary[@"resourceName"] = val;
}

- (NSString*) actionName
{
    if([[NSNull null] isEqual:self.dictionary[@"actionName"]])
    {
        return nil;
    }   
    return self.dictionary[@"actionName"];
}

- (void) setActionName: (NSString*) val
{
    self.dictionary[@"actionName"] = val;
}

- (NSString*) resourceOperationDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setResourceOperationDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}


@end
