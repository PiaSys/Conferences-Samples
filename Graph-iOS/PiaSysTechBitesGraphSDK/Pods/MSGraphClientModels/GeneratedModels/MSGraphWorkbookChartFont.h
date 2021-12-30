// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphWorkbookChartFont : MSGraphEntity

  @property (nonatomic, setter=setBold:, getter=bold) BOOL bold;
    @property (nullable, nonatomic, setter=setColor:, getter=color) NSString* color;
    @property (nonatomic, setter=setItalic:, getter=italic) BOOL italic;
    @property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
    @property (nonatomic, setter=setSize:, getter=size) double size;
    @property (nullable, nonatomic, setter=setUnderline:, getter=underline) NSString* underline;
  
@end
