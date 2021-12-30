// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationTeacher()
{
    NSString* _teacherNumber;
    NSString* _externalId;
}
@end

@implementation MSGraphEducationTeacher

- (NSString*) teacherNumber
{
    if([[NSNull null] isEqual:self.dictionary[@"teacherNumber"]])
    {
        return nil;
    }   
    return self.dictionary[@"teacherNumber"];
}

- (void) setTeacherNumber: (NSString*) val
{
    self.dictionary[@"teacherNumber"] = val;
}

- (NSString*) externalId
{
    if([[NSNull null] isEqual:self.dictionary[@"externalId"]])
    {
        return nil;
    }   
    return self.dictionary[@"externalId"];
}

- (void) setExternalId: (NSString*) val
{
    self.dictionary[@"externalId"] = val;
}

@end
