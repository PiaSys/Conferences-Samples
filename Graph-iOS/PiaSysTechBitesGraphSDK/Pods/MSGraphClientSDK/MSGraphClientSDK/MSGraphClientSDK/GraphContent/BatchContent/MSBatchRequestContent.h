//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import <Foundation/Foundation.h>

@class MSBatchRequestStep;

/*
 To make batch requests, all the individual request needs to be clubbed in one single request body. This class provides mechanism to create that content for batch requests.
 Maximum limit of MSBatchRequestSteps in one single MSBatchRequestContent is set to 20.
 */
@interface MSBatchRequestContent : NSObject

/*
 Creates and returns an instance of MSBatchRequestContent
 @param batchRequestStepsArray Array of batch request steps with unique ids.
 @param error If any error is encountered during the initalization, it will be assigned to this address.
 @return The MSBatchRequestContent object containng the Batch Request Steps.
 */
- (instancetype)initWithRequests:(NSArray<MSBatchRequestStep *> *)batchRequestStepsArray error:(NSError **)error;

/*
 Adds an MSBatchRequestStep object to MSBatchRequestContent object
 @param batchRequestStep The object which needs to be added.
 @param error If any error is encountered while adding a batch request step, it will be assigned to this address.
 */
- (void)addBatchRequestStep:(MSBatchRequestStep *)batchRequestStep error:(NSError **)error;

/*
 Removes an MSBatchRequestStep object from MSBatchRequestContent object
 @param requestId Id of the MSBatchRequestStep which should be removed.
 @param error If any error is encountered during the removal of a batch request step, it will be assigned to this address.
 */
- (void)removeBatchRequesStepWithId:(NSString *)requestId error:(NSError **)error;

/*
 Creates and returns a dictionary object which is created by clubbing all the individual batch request step into a format recognised by Microsoft Graph server.
 @return A dictionary object.
 */
- (NSMutableDictionary *)getBatchRequestContent;

@end

