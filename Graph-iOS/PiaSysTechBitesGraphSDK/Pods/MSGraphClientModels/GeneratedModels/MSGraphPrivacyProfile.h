// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphPrivacyProfile : MSObject

@property (nullable, nonatomic, setter=setContactEmail:, getter=contactEmail) NSString* contactEmail;
@property (nullable, nonatomic, setter=setStatementUrl:, getter=statementUrl) NSString* statementUrl;

@end
