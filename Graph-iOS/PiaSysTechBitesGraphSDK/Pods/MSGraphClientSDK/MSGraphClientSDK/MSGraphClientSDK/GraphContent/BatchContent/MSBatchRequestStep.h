//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import <Foundation/Foundation.h>

/*
 To make batch request, native request objects needs to be clubbed with some 'id' and 'dependsOn'[optional] values. This class provides a mechanism to build such an object i.e. MSBatchRequestStep.
 */
@interface MSBatchRequestStep : NSObject

@property (strong, nonatomic) NSString *requestId;
@property (strong, nonatomic) NSMutableURLRequest *request;
@property (strong, nonatomic) NSMutableArray *arrayOfDependsOnIds;

/*
 Creates and returns an instance of MSBatchRequestStep.
 @param requestId The id to be associated with the request when creating batch request content.
 @param urlRequest The request object to be included in batch request content.
 @param requestIds The array of request Ids in string format which this batch request step depends on.
 @return The MSBatchRequestStep object created using above parameters.
 */
- (instancetype)initWithId:(nonnull NSString *)requestId request:(nonnull NSMutableURLRequest *)urlRequest andDependsOn:(NSArray<NSString *> *)requestIds;

@end

