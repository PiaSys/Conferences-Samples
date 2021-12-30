// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphControlScore : MSObject

@property (nullable, nonatomic, setter=setControlCategory:, getter=controlCategory) NSString* controlCategory;
@property (nullable, nonatomic, setter=setControlName:, getter=controlName) NSString* controlName;
@property (nullable, nonatomic, setter=setControlScoreDescription:, getter=controlScoreDescription) NSString* controlScoreDescription;
@property (nonatomic, setter=setScore:, getter=score) double score;

@end
