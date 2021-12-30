// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphWorkbookSessionInfo : MSObject

@property (nullable, nonatomic, setter=setWorkbookSessionInfoId:, getter=workbookSessionInfoId) NSString* workbookSessionInfoId;
@property (nonatomic, setter=setPersistChanges:, getter=persistChanges) BOOL persistChanges;

@end
