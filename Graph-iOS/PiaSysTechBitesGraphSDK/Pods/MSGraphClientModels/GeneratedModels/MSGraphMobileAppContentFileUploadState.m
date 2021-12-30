// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphMobileAppContentFileUploadState.h"

@interface MSGraphMobileAppContentFileUploadState () {
    MSGraphMobileAppContentFileUploadStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphMobileAppContentFileUploadStateValue enumValue;
@end

@implementation MSGraphMobileAppContentFileUploadState

+ (MSGraphMobileAppContentFileUploadState*) success {
    static MSGraphMobileAppContentFileUploadState *_success;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _success = [[MSGraphMobileAppContentFileUploadState alloc] init];
        _success.enumValue = MSGraphMobileAppContentFileUploadStateSuccess;
    });
    return _success;
}
+ (MSGraphMobileAppContentFileUploadState*) transientError {
    static MSGraphMobileAppContentFileUploadState *_transientError;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _transientError = [[MSGraphMobileAppContentFileUploadState alloc] init];
        _transientError.enumValue = MSGraphMobileAppContentFileUploadStateTransientError;
    });
    return _transientError;
}
+ (MSGraphMobileAppContentFileUploadState*) error {
    static MSGraphMobileAppContentFileUploadState *_error;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _error = [[MSGraphMobileAppContentFileUploadState alloc] init];
        _error.enumValue = MSGraphMobileAppContentFileUploadStateError;
    });
    return _error;
}
+ (MSGraphMobileAppContentFileUploadState*) unknown {
    static MSGraphMobileAppContentFileUploadState *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphMobileAppContentFileUploadState alloc] init];
        _unknown.enumValue = MSGraphMobileAppContentFileUploadStateUnknown;
    });
    return _unknown;
}
+ (MSGraphMobileAppContentFileUploadState*) azureStorageUriRequestSuccess {
    static MSGraphMobileAppContentFileUploadState *_azureStorageUriRequestSuccess;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _azureStorageUriRequestSuccess = [[MSGraphMobileAppContentFileUploadState alloc] init];
        _azureStorageUriRequestSuccess.enumValue = MSGraphMobileAppContentFileUploadStateAzureStorageUriRequestSuccess;
    });
    return _azureStorageUriRequestSuccess;
}
+ (MSGraphMobileAppContentFileUploadState*) azureStorageUriRequestPending {
    static MSGraphMobileAppContentFileUploadState *_azureStorageUriRequestPending;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _azureStorageUriRequestPending = [[MSGraphMobileAppContentFileUploadState alloc] init];
        _azureStorageUriRequestPending.enumValue = MSGraphMobileAppContentFileUploadStateAzureStorageUriRequestPending;
    });
    return _azureStorageUriRequestPending;
}
+ (MSGraphMobileAppContentFileUploadState*) azureStorageUriRequestFailed {
    static MSGraphMobileAppContentFileUploadState *_azureStorageUriRequestFailed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _azureStorageUriRequestFailed = [[MSGraphMobileAppContentFileUploadState alloc] init];
        _azureStorageUriRequestFailed.enumValue = MSGraphMobileAppContentFileUploadStateAzureStorageUriRequestFailed;
    });
    return _azureStorageUriRequestFailed;
}
+ (MSGraphMobileAppContentFileUploadState*) azureStorageUriRequestTimedOut {
    static MSGraphMobileAppContentFileUploadState *_azureStorageUriRequestTimedOut;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _azureStorageUriRequestTimedOut = [[MSGraphMobileAppContentFileUploadState alloc] init];
        _azureStorageUriRequestTimedOut.enumValue = MSGraphMobileAppContentFileUploadStateAzureStorageUriRequestTimedOut;
    });
    return _azureStorageUriRequestTimedOut;
}
+ (MSGraphMobileAppContentFileUploadState*) azureStorageUriRenewalSuccess {
    static MSGraphMobileAppContentFileUploadState *_azureStorageUriRenewalSuccess;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _azureStorageUriRenewalSuccess = [[MSGraphMobileAppContentFileUploadState alloc] init];
        _azureStorageUriRenewalSuccess.enumValue = MSGraphMobileAppContentFileUploadStateAzureStorageUriRenewalSuccess;
    });
    return _azureStorageUriRenewalSuccess;
}
+ (MSGraphMobileAppContentFileUploadState*) azureStorageUriRenewalPending {
    static MSGraphMobileAppContentFileUploadState *_azureStorageUriRenewalPending;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _azureStorageUriRenewalPending = [[MSGraphMobileAppContentFileUploadState alloc] init];
        _azureStorageUriRenewalPending.enumValue = MSGraphMobileAppContentFileUploadStateAzureStorageUriRenewalPending;
    });
    return _azureStorageUriRenewalPending;
}
+ (MSGraphMobileAppContentFileUploadState*) azureStorageUriRenewalFailed {
    static MSGraphMobileAppContentFileUploadState *_azureStorageUriRenewalFailed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _azureStorageUriRenewalFailed = [[MSGraphMobileAppContentFileUploadState alloc] init];
        _azureStorageUriRenewalFailed.enumValue = MSGraphMobileAppContentFileUploadStateAzureStorageUriRenewalFailed;
    });
    return _azureStorageUriRenewalFailed;
}
+ (MSGraphMobileAppContentFileUploadState*) azureStorageUriRenewalTimedOut {
    static MSGraphMobileAppContentFileUploadState *_azureStorageUriRenewalTimedOut;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _azureStorageUriRenewalTimedOut = [[MSGraphMobileAppContentFileUploadState alloc] init];
        _azureStorageUriRenewalTimedOut.enumValue = MSGraphMobileAppContentFileUploadStateAzureStorageUriRenewalTimedOut;
    });
    return _azureStorageUriRenewalTimedOut;
}
+ (MSGraphMobileAppContentFileUploadState*) commitFileSuccess {
    static MSGraphMobileAppContentFileUploadState *_commitFileSuccess;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _commitFileSuccess = [[MSGraphMobileAppContentFileUploadState alloc] init];
        _commitFileSuccess.enumValue = MSGraphMobileAppContentFileUploadStateCommitFileSuccess;
    });
    return _commitFileSuccess;
}
+ (MSGraphMobileAppContentFileUploadState*) commitFilePending {
    static MSGraphMobileAppContentFileUploadState *_commitFilePending;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _commitFilePending = [[MSGraphMobileAppContentFileUploadState alloc] init];
        _commitFilePending.enumValue = MSGraphMobileAppContentFileUploadStateCommitFilePending;
    });
    return _commitFilePending;
}
+ (MSGraphMobileAppContentFileUploadState*) commitFileFailed {
    static MSGraphMobileAppContentFileUploadState *_commitFileFailed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _commitFileFailed = [[MSGraphMobileAppContentFileUploadState alloc] init];
        _commitFileFailed.enumValue = MSGraphMobileAppContentFileUploadStateCommitFileFailed;
    });
    return _commitFileFailed;
}
+ (MSGraphMobileAppContentFileUploadState*) commitFileTimedOut {
    static MSGraphMobileAppContentFileUploadState *_commitFileTimedOut;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _commitFileTimedOut = [[MSGraphMobileAppContentFileUploadState alloc] init];
        _commitFileTimedOut.enumValue = MSGraphMobileAppContentFileUploadStateCommitFileTimedOut;
    });
    return _commitFileTimedOut;
}

+ (MSGraphMobileAppContentFileUploadState*) UnknownEnumValue {
    static MSGraphMobileAppContentFileUploadState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphMobileAppContentFileUploadState alloc] init];
        _unknownValue.enumValue = MSGraphMobileAppContentFileUploadStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphMobileAppContentFileUploadState*) mobileAppContentFileUploadStateWithEnumValue:(MSGraphMobileAppContentFileUploadStateValue)val {

    switch(val)
    {
        case MSGraphMobileAppContentFileUploadStateSuccess:
            return [MSGraphMobileAppContentFileUploadState success];
        case MSGraphMobileAppContentFileUploadStateTransientError:
            return [MSGraphMobileAppContentFileUploadState transientError];
        case MSGraphMobileAppContentFileUploadStateError:
            return [MSGraphMobileAppContentFileUploadState error];
        case MSGraphMobileAppContentFileUploadStateUnknown:
            return [MSGraphMobileAppContentFileUploadState unknown];
        case MSGraphMobileAppContentFileUploadStateAzureStorageUriRequestSuccess:
            return [MSGraphMobileAppContentFileUploadState azureStorageUriRequestSuccess];
        case MSGraphMobileAppContentFileUploadStateAzureStorageUriRequestPending:
            return [MSGraphMobileAppContentFileUploadState azureStorageUriRequestPending];
        case MSGraphMobileAppContentFileUploadStateAzureStorageUriRequestFailed:
            return [MSGraphMobileAppContentFileUploadState azureStorageUriRequestFailed];
        case MSGraphMobileAppContentFileUploadStateAzureStorageUriRequestTimedOut:
            return [MSGraphMobileAppContentFileUploadState azureStorageUriRequestTimedOut];
        case MSGraphMobileAppContentFileUploadStateAzureStorageUriRenewalSuccess:
            return [MSGraphMobileAppContentFileUploadState azureStorageUriRenewalSuccess];
        case MSGraphMobileAppContentFileUploadStateAzureStorageUriRenewalPending:
            return [MSGraphMobileAppContentFileUploadState azureStorageUriRenewalPending];
        case MSGraphMobileAppContentFileUploadStateAzureStorageUriRenewalFailed:
            return [MSGraphMobileAppContentFileUploadState azureStorageUriRenewalFailed];
        case MSGraphMobileAppContentFileUploadStateAzureStorageUriRenewalTimedOut:
            return [MSGraphMobileAppContentFileUploadState azureStorageUriRenewalTimedOut];
        case MSGraphMobileAppContentFileUploadStateCommitFileSuccess:
            return [MSGraphMobileAppContentFileUploadState commitFileSuccess];
        case MSGraphMobileAppContentFileUploadStateCommitFilePending:
            return [MSGraphMobileAppContentFileUploadState commitFilePending];
        case MSGraphMobileAppContentFileUploadStateCommitFileFailed:
            return [MSGraphMobileAppContentFileUploadState commitFileFailed];
        case MSGraphMobileAppContentFileUploadStateCommitFileTimedOut:
            return [MSGraphMobileAppContentFileUploadState commitFileTimedOut];
        case MSGraphMobileAppContentFileUploadStateEndOfEnum:
        default:
            return [MSGraphMobileAppContentFileUploadState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphMobileAppContentFileUploadStateSuccess:
            return @"success";
        case MSGraphMobileAppContentFileUploadStateTransientError:
            return @"transientError";
        case MSGraphMobileAppContentFileUploadStateError:
            return @"error";
        case MSGraphMobileAppContentFileUploadStateUnknown:
            return @"unknown";
        case MSGraphMobileAppContentFileUploadStateAzureStorageUriRequestSuccess:
            return @"azureStorageUriRequestSuccess";
        case MSGraphMobileAppContentFileUploadStateAzureStorageUriRequestPending:
            return @"azureStorageUriRequestPending";
        case MSGraphMobileAppContentFileUploadStateAzureStorageUriRequestFailed:
            return @"azureStorageUriRequestFailed";
        case MSGraphMobileAppContentFileUploadStateAzureStorageUriRequestTimedOut:
            return @"azureStorageUriRequestTimedOut";
        case MSGraphMobileAppContentFileUploadStateAzureStorageUriRenewalSuccess:
            return @"azureStorageUriRenewalSuccess";
        case MSGraphMobileAppContentFileUploadStateAzureStorageUriRenewalPending:
            return @"azureStorageUriRenewalPending";
        case MSGraphMobileAppContentFileUploadStateAzureStorageUriRenewalFailed:
            return @"azureStorageUriRenewalFailed";
        case MSGraphMobileAppContentFileUploadStateAzureStorageUriRenewalTimedOut:
            return @"azureStorageUriRenewalTimedOut";
        case MSGraphMobileAppContentFileUploadStateCommitFileSuccess:
            return @"commitFileSuccess";
        case MSGraphMobileAppContentFileUploadStateCommitFilePending:
            return @"commitFilePending";
        case MSGraphMobileAppContentFileUploadStateCommitFileFailed:
            return @"commitFileFailed";
        case MSGraphMobileAppContentFileUploadStateCommitFileTimedOut:
            return @"commitFileTimedOut";
        case MSGraphMobileAppContentFileUploadStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphMobileAppContentFileUploadStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphMobileAppContentFileUploadState)

- (MSGraphMobileAppContentFileUploadState*) toMSGraphMobileAppContentFileUploadState{

    if([self isEqualToString:@"success"])
    {
          return [MSGraphMobileAppContentFileUploadState success];
    }
    else if([self isEqualToString:@"transientError"])
    {
          return [MSGraphMobileAppContentFileUploadState transientError];
    }
    else if([self isEqualToString:@"error"])
    {
          return [MSGraphMobileAppContentFileUploadState error];
    }
    else if([self isEqualToString:@"unknown"])
    {
          return [MSGraphMobileAppContentFileUploadState unknown];
    }
    else if([self isEqualToString:@"azureStorageUriRequestSuccess"])
    {
          return [MSGraphMobileAppContentFileUploadState azureStorageUriRequestSuccess];
    }
    else if([self isEqualToString:@"azureStorageUriRequestPending"])
    {
          return [MSGraphMobileAppContentFileUploadState azureStorageUriRequestPending];
    }
    else if([self isEqualToString:@"azureStorageUriRequestFailed"])
    {
          return [MSGraphMobileAppContentFileUploadState azureStorageUriRequestFailed];
    }
    else if([self isEqualToString:@"azureStorageUriRequestTimedOut"])
    {
          return [MSGraphMobileAppContentFileUploadState azureStorageUriRequestTimedOut];
    }
    else if([self isEqualToString:@"azureStorageUriRenewalSuccess"])
    {
          return [MSGraphMobileAppContentFileUploadState azureStorageUriRenewalSuccess];
    }
    else if([self isEqualToString:@"azureStorageUriRenewalPending"])
    {
          return [MSGraphMobileAppContentFileUploadState azureStorageUriRenewalPending];
    }
    else if([self isEqualToString:@"azureStorageUriRenewalFailed"])
    {
          return [MSGraphMobileAppContentFileUploadState azureStorageUriRenewalFailed];
    }
    else if([self isEqualToString:@"azureStorageUriRenewalTimedOut"])
    {
          return [MSGraphMobileAppContentFileUploadState azureStorageUriRenewalTimedOut];
    }
    else if([self isEqualToString:@"commitFileSuccess"])
    {
          return [MSGraphMobileAppContentFileUploadState commitFileSuccess];
    }
    else if([self isEqualToString:@"commitFilePending"])
    {
          return [MSGraphMobileAppContentFileUploadState commitFilePending];
    }
    else if([self isEqualToString:@"commitFileFailed"])
    {
          return [MSGraphMobileAppContentFileUploadState commitFileFailed];
    }
    else if([self isEqualToString:@"commitFileTimedOut"])
    {
          return [MSGraphMobileAppContentFileUploadState commitFileTimedOut];
    }
    else {
        return [MSGraphMobileAppContentFileUploadState UnknownEnumValue];
    }
}

@end
