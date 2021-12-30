// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMdmWindowsInformationProtectionPolicy()
{
}
@end

@implementation MSGraphMdmWindowsInformationProtectionPolicy

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.mdmWindowsInformationProtectionPolicy";
    }
    return self;
}

@end
