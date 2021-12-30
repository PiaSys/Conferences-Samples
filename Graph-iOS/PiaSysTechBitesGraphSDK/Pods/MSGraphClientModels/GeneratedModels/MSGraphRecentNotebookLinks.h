// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphExternalLink; 


#import "MSObject.h"

@interface MSGraphRecentNotebookLinks : MSObject

@property (nullable, nonatomic, setter=setOneNoteClientUrl:, getter=oneNoteClientUrl) MSGraphExternalLink* oneNoteClientUrl;
@property (nullable, nonatomic, setter=setOneNoteWebUrl:, getter=oneNoteWebUrl) MSGraphExternalLink* oneNoteWebUrl;

@end
