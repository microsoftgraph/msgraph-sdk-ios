// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphODataEntities.h"
#import "MSCollection.h"
#import "MSURLSessionDataTask.h"
#import "MSFunctionParameters.h"

@interface MSCollectionRequest()

@property NSMutableArray *options;

- (NSMutableURLRequest *)requestWithMethod:(NSString *)method
                                      body:(NSData *)body
                                   headers:(NSDictionary *)headers;
@end

@interface MSGraphUserCalendarViewCollectionRequest()

@property (nonatomic, getter=startDateTime) NSString * startDateTime;
@property (nonatomic, getter=endDateTime) NSString * endDateTime;

@end

@implementation MSGraphUserCalendarViewCollectionRequest

- (instancetype)initWithStartDateTime:(NSString *)startDateTime endDateTime:(NSString *)endDateTime URL:(NSURL *)url options:(NSArray *)options client:(ODataBaseClient*)client
{
    NSParameterAssert(startDateTime);
    NSParameterAssert(endDateTime);
    self = [super initWithURL:url options:options client:client];
    if (self){
        _startDateTime = startDateTime;
        _endDateTime = endDateTime;
    }
    return self;
}

- (NSMutableURLRequest *)get
{
    [self.options addObject:[[MSQueryParameters alloc] initWithKey:@"StartDateTime"
                                                                value:[MSObject getNSJsonSerializationCompatibleValue:_startDateTime]]];
    [self.options addObject:[[MSQueryParameters alloc] initWithKey:@"EndDateTime"
                                                                value:[MSObject getNSJsonSerializationCompatibleValue:_endDateTime]]];
    return [self requestWithMethod:@"GET"
                              body:nil
                           headers:nil];
}

- (MSURLSessionDataTask *)getWithCompletion:(MSGraphUserCalendarViewCollectionCompletionHandler)completionHandler
{

    MSURLSessionDataTask * task = [self collectionTaskWithRequest:[self get]
                                             odObjectWithDictionary:^(id response){
                                            return [[MSGraphEvent alloc] initWithDictionary:response];
                                         }
                                                        completion:^(MSCollection *collectionResponse, NSError *error){
                                            if(!error && collectionResponse.nextLink && completionHandler){
                                                MSGraphUserCalendarViewCollectionRequest *nextRequest = [[MSGraphUserCalendarViewCollectionRequest alloc] initWithURL:collectionResponse.nextLink options:nil client:self.client];
                                                completionHandler(collectionResponse, nextRequest, nil);
                                            }
                                            else if(completionHandler){
                                                completionHandler(collectionResponse, nil, error);
                                            }
                                        }];
    [task execute];
    return task;
}



- (NSMutableURLRequest *)addEvent:(MSGraphEvent*)event
{
    NSData *body = [NSJSONSerialization dataWithJSONObject:[event dictionaryFromItem]
                                                   options:0
                                                     error:nil];
    return [self requestWithMethod:@"POST"
                              body:body
                           headers:nil];

}

- (MSURLSessionDataTask *)addEvent:(MSGraphEvent*)event withCompletion:(MSGraphEventCompletionHandler)completionHandler
{
    MSURLSessionDataTask *task = [self taskWithRequest:[self addEvent:event]
							     odObjectWithDictionary:^(NSDictionary *response){
                                            return [[MSGraphEvent alloc] initWithDictionary:response];
                                        }
                                              completion:completionHandler];
    [task execute];
    return task;
}



@end
