// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphOutlookItem; 


#import "MSGraphAttachment.h"

@interface MSGraphItemAttachment : MSGraphAttachment

  @property (nullable, nonatomic, setter=setItem:, getter=item) MSGraphOutlookItem* item;
  
@end
