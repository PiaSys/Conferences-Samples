// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOnPremisesProvisioningError()
{
    NSString* _value;
    NSString* _category;
    NSString* _propertyCausingError;
    NSDate* _occurredDateTime;
}
@end

@implementation MSGraphOnPremisesProvisioningError

- (NSString*) value
{
    if([[NSNull null] isEqual:self.dictionary[@"value"]])
    {
        return nil;
    }   
    return self.dictionary[@"value"];
}

- (void) setValue: (NSString*) val
{
    self.dictionary[@"value"] = val;
}

- (NSString*) category
{
    if([[NSNull null] isEqual:self.dictionary[@"category"]])
    {
        return nil;
    }   
    return self.dictionary[@"category"];
}

- (void) setCategory: (NSString*) val
{
    self.dictionary[@"category"] = val;
}

- (NSString*) propertyCausingError
{
    if([[NSNull null] isEqual:self.dictionary[@"propertyCausingError"]])
    {
        return nil;
    }   
    return self.dictionary[@"propertyCausingError"];
}

- (void) setPropertyCausingError: (NSString*) val
{
    self.dictionary[@"propertyCausingError"] = val;
}

- (NSDate*) occurredDateTime
{
    if(!_occurredDateTime){
        _occurredDateTime = [NSDate ms_dateFromString: self.dictionary[@"occurredDateTime"]];
    }
    return _occurredDateTime;
}

- (void) setOccurredDateTime: (NSDate*) val
{
    _occurredDateTime = val;
    self.dictionary[@"occurredDateTime"] = [val ms_toString];
}

@end
