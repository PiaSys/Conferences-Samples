// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphManagedAppDiagnosticStatus()
{
    NSString* _validationName;
    NSString* _state;
    NSString* _mitigationInstruction;
}
@end

@implementation MSGraphManagedAppDiagnosticStatus

- (NSString*) validationName
{
    if([[NSNull null] isEqual:self.dictionary[@"validationName"]])
    {
        return nil;
    }   
    return self.dictionary[@"validationName"];
}

- (void) setValidationName: (NSString*) val
{
    self.dictionary[@"validationName"] = val;
}

- (NSString*) state
{
    if([[NSNull null] isEqual:self.dictionary[@"state"]])
    {
        return nil;
    }   
    return self.dictionary[@"state"];
}

- (void) setState: (NSString*) val
{
    self.dictionary[@"state"] = val;
}

- (NSString*) mitigationInstruction
{
    if([[NSNull null] isEqual:self.dictionary[@"mitigationInstruction"]])
    {
        return nil;
    }   
    return self.dictionary[@"mitigationInstruction"];
}

- (void) setMitigationInstruction: (NSString*) val
{
    self.dictionary[@"mitigationInstruction"] = val;
}

@end
