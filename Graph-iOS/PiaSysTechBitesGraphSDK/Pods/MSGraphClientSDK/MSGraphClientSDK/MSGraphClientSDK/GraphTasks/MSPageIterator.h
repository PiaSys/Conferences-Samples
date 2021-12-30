//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import <Foundation/Foundation.h>

/*
 This class is designed to ease the process of iterating through paged responses.
 */

#import "MSHTTPClient.h"

// Block to be called while iterating through the page
typedef void (^MSPageIteratorBlock)(NSDictionary *itemDictionary, BOOL *stop);

@interface MSPageIterator : NSObject

// Boolean property indicating whether all the pages have been iterated.
@property (nonatomic, readonly) BOOL isComplete;

/*
 Initializes and returns an instance of MSPageIterator class

 @param data Instance of NSData which will be used to populate the values and next link
 @param httpClient Instance of MSHTTPClient which will be used to fetch values from next link URL.
 @param iteratorBlock Block to be executed while iterating through the values
 @return MSPageIterator instance
 */
- (instancetype)initWithData:(NSData *)data client:(MSHTTPClient *)httpClient andIteratorBlock:(MSPageIteratorBlock)iteratorBlock;

// This method starts the iteration through the page values.
- (void)iterate;
@end


