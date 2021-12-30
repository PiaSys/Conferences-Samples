// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphRecentNotebookLinks; 
#import "MSGraphOnenoteSourceService.h"


#import "MSObject.h"

@interface MSGraphRecentNotebook : MSObject

@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nullable, nonatomic, setter=setLastAccessedTime:, getter=lastAccessedTime) NSDate* lastAccessedTime;
@property (nullable, nonatomic, setter=setLinks:, getter=links) MSGraphRecentNotebookLinks* links;
@property (nullable, nonatomic, setter=setSourceService:, getter=sourceService) MSGraphOnenoteSourceService* sourceService;

@end
