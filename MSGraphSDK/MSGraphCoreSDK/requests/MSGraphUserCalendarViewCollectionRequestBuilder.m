// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphODataEntities.h"

@interface MSGraphUserCalendarViewCollectionRequestBuilder()

@property (nonatomic, getter=startDateTime) NSString * startDateTime;
@property (nonatomic, getter=endDateTime) NSString * endDateTime;

@end

@implementation MSGraphUserCalendarViewCollectionRequestBuilder : MSCollectionRequestBuilder

- (instancetype)initWithStartDateTime:(NSString *)startDateTime endDateTime:(NSString *)endDateTime URL:(NSURL *)url client:(ODataBaseClient*)client {
    self = [super initWithURL:url client:client];
    if (self){
        _startDateTime = startDateTime;
        _endDateTime = endDateTime;
    }
    return self;
}

- (MSGraphUserCalendarViewCollectionRequest*) request
{
    return [self requestWithOptions:nil];
}

- (MSGraphUserCalendarViewCollectionRequest *)requestWithOptions:(NSArray *)options
{
    return [[MSGraphUserCalendarViewCollectionRequest alloc] initWithStartDateTime:_startDateTime
                                                                       endDateTime:_endDateTime
                                                                               URL:self.requestURL
                                                                           options:options
                                                                            client:self.client];
}
- (MSGraphEventRequestBuilder *)event:(NSString *)event
{
    return [[MSGraphEventRequestBuilder alloc] initWithURL:[self.requestURL URLByAppendingPathComponent:event]
                                                   client:self.client];
}

@end
