// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphClient+DefaultConfiguration.h"
#import "MSGraphClientConfiguration+DefaultConfiguration.h"
#import "MSAuthenticationProvider.h"

@implementation MSGraphClient (DefaultConfiguration)

+ (void)setAuthenticationProvider:(id <MSAuthenticationProvider>)authenticationProvider {
    [MSGraphClientConfiguration defaultConfiguration].authenticationProvider = authenticationProvider;
}

+ (void)setHttpProvider:(id <MSHttpProvider>)httpProvider {
    [MSGraphClientConfiguration defaultConfiguration].httpProvider = httpProvider;
}

+ (void)setLogger:(id <MSLogger>)logger {
    [MSGraphClientConfiguration defaultConfiguration].logger = logger;
}

+ (void)setDefaultLogLevel:(MSLogLevel)level {
    [[MSGraphClientConfiguration defaultConfiguration].logger setLogLevel:level];
}

+ (void)setApiEndpoint:(NSString*)apiEndpoint {
    [MSGraphClientConfiguration defaultConfiguration].apiEndpoint = apiEndpoint;
}

- (void)setLogLevel:(MSLogLevel)level {
    [self.logger setLogLevel:level];
}

+ (MSGraphClient*)defaultClient {
    return [MSGraphClient clientWithConfig:[MSGraphClientConfiguration defaultConfiguration]];
}

@end
