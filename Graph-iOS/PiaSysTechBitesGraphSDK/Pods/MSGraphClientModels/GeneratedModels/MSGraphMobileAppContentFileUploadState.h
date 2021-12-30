// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphMobileAppContentFileUploadStateValue){

	MSGraphMobileAppContentFileUploadStateSuccess = 0,
	MSGraphMobileAppContentFileUploadStateTransientError = 1,
	MSGraphMobileAppContentFileUploadStateError = 2,
	MSGraphMobileAppContentFileUploadStateUnknown = 3,
	MSGraphMobileAppContentFileUploadStateAzureStorageUriRequestSuccess = 100,
	MSGraphMobileAppContentFileUploadStateAzureStorageUriRequestPending = 101,
	MSGraphMobileAppContentFileUploadStateAzureStorageUriRequestFailed = 102,
	MSGraphMobileAppContentFileUploadStateAzureStorageUriRequestTimedOut = 103,
	MSGraphMobileAppContentFileUploadStateAzureStorageUriRenewalSuccess = 200,
	MSGraphMobileAppContentFileUploadStateAzureStorageUriRenewalPending = 201,
	MSGraphMobileAppContentFileUploadStateAzureStorageUriRenewalFailed = 202,
	MSGraphMobileAppContentFileUploadStateAzureStorageUriRenewalTimedOut = 203,
	MSGraphMobileAppContentFileUploadStateCommitFileSuccess = 300,
	MSGraphMobileAppContentFileUploadStateCommitFilePending = 301,
	MSGraphMobileAppContentFileUploadStateCommitFileFailed = 302,
	MSGraphMobileAppContentFileUploadStateCommitFileTimedOut = 303,
    MSGraphMobileAppContentFileUploadStateEndOfEnum
};

@interface MSGraphMobileAppContentFileUploadState : NSObject

+(MSGraphMobileAppContentFileUploadState*) success;
+(MSGraphMobileAppContentFileUploadState*) transientError;
+(MSGraphMobileAppContentFileUploadState*) error;
+(MSGraphMobileAppContentFileUploadState*) unknown;
+(MSGraphMobileAppContentFileUploadState*) azureStorageUriRequestSuccess;
+(MSGraphMobileAppContentFileUploadState*) azureStorageUriRequestPending;
+(MSGraphMobileAppContentFileUploadState*) azureStorageUriRequestFailed;
+(MSGraphMobileAppContentFileUploadState*) azureStorageUriRequestTimedOut;
+(MSGraphMobileAppContentFileUploadState*) azureStorageUriRenewalSuccess;
+(MSGraphMobileAppContentFileUploadState*) azureStorageUriRenewalPending;
+(MSGraphMobileAppContentFileUploadState*) azureStorageUriRenewalFailed;
+(MSGraphMobileAppContentFileUploadState*) azureStorageUriRenewalTimedOut;
+(MSGraphMobileAppContentFileUploadState*) commitFileSuccess;
+(MSGraphMobileAppContentFileUploadState*) commitFilePending;
+(MSGraphMobileAppContentFileUploadState*) commitFileFailed;
+(MSGraphMobileAppContentFileUploadState*) commitFileTimedOut;

+(MSGraphMobileAppContentFileUploadState*) UnknownEnumValue;

+(MSGraphMobileAppContentFileUploadState*) mobileAppContentFileUploadStateWithEnumValue:(MSGraphMobileAppContentFileUploadStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphMobileAppContentFileUploadStateValue enumValue;

@end


@interface NSString (MSGraphMobileAppContentFileUploadState)

- (MSGraphMobileAppContentFileUploadState*) toMSGraphMobileAppContentFileUploadState;

@end
