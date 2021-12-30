// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphComplianceInformation()
{
    NSArray* _certificationControls;
    NSString* _certificationName;
}
@end

@implementation MSGraphComplianceInformation

- (NSArray*) certificationControls
{
    if(!_certificationControls){
        
    NSMutableArray *certificationControlsResult = [NSMutableArray array];
    NSArray *certificationControls = self.dictionary[@"certificationControls"];

    if ([certificationControls isKindOfClass:[NSArray class]]){
        for (id tempCertificationControl in certificationControls){
            [certificationControlsResult addObject:tempCertificationControl];
        }
    }

    _certificationControls = certificationControlsResult;
        
    }
    return _certificationControls;
}

- (void) setCertificationControls: (NSArray*) val
{
    _certificationControls = val;
    self.dictionary[@"certificationControls"] = val;
}

- (NSString*) certificationName
{
    if([[NSNull null] isEqual:self.dictionary[@"certificationName"]])
    {
        return nil;
    }   
    return self.dictionary[@"certificationName"];
}

- (void) setCertificationName: (NSString*) val
{
    self.dictionary[@"certificationName"] = val;
}

@end
