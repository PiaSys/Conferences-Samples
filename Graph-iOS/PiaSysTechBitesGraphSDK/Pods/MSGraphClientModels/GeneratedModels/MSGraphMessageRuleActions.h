// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphRecipient; 
#import "MSGraphImportance.h"


#import "MSObject.h"

@interface MSGraphMessageRuleActions : MSObject

@property (nullable, nonatomic, setter=setMoveToFolder:, getter=moveToFolder) NSString* moveToFolder;
@property (nullable, nonatomic, setter=setCopyToFolder:, getter=getCopyToFolder) NSString* copyToFolder;
@property (nonatomic, setter=setDelete:, getter=delete) BOOL delete;
@property (nonatomic, setter=setPermanentDelete:, getter=permanentDelete) BOOL permanentDelete;
@property (nonatomic, setter=setMarkAsRead:, getter=markAsRead) BOOL markAsRead;
@property (nullable, nonatomic, setter=setMarkImportance:, getter=markImportance) MSGraphImportance* markImportance;
@property (nullable, nonatomic, setter=setForwardTo:, getter=forwardTo) NSArray* forwardTo;
@property (nullable, nonatomic, setter=setForwardAsAttachmentTo:, getter=forwardAsAttachmentTo) NSArray* forwardAsAttachmentTo;
@property (nullable, nonatomic, setter=setRedirectTo:, getter=redirectTo) NSArray* redirectTo;
@property (nullable, nonatomic, setter=setAssignCategories:, getter=assignCategories) NSArray* assignCategories;
@property (nonatomic, setter=setStopProcessingRules:, getter=stopProcessingRules) BOOL stopProcessingRules;

@end
