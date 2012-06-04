/*
 * Copyright 2012 Aetna, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0.html
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

#import "DICSearchResult.h"

@implementation DICSearchResult

@synthesize page;
@synthesize totalResults;
@synthesize totalPages;
@synthesize claims;

-(id)init {
    if (self = [super init]) {
        claims = [[NSMutableArray alloc] initWithCapacity:1];
    }
    
    return self;
}

-(DICResult *)claimObjectAtIndex:(int)index {
    return (DICResult *)[claims objectAtIndex:index];    
}

-(void)dealloc {
    [page release];
    [totalResults release];
    [totalPages release];
    [claims release];
}

@end
