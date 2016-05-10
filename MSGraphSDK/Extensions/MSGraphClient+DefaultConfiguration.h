// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphClient+Base.h"
#import "MSAuthenticationProvider.h"

/**
 ## Default Application Configuration Notes
 @warning When using this category, you must have called setAuthenticationProvider (described below) before you create a client object.
 */
@interface MSGraphClient (DefaultConfiguration)

/**
 Sets the authentication provider in [MSGraphClientConfiguration defaultConfiguration].
 @param authenticationProvider The authentication provider.
 @see MSAuthenticationProvider
 */
+ (void)setAuthenticationProvider:(id <MSAuthenticationProvider>)authenticationProvider;

/**
 Sets the httpProvider in [MSGraphClientConfiguration defaultConfiguration]
 @see MSHttpProvider
 */
+ (void)setHttpProvider:(id <MSHttpProvider>)httpProvider;

/**
 Sets the logger in [MSGraphClientConfiguration defaultConfiguration]
 @param logger The logger to set.
 @see MSLogger
 */
+ (void)setLogger:(id <MSLogger>)logger;

/**
 Sets the Graph API endpoint URL in [MSGraphClientConfiguration defaultConfiguration]
 @param apiEndpoint The URL to set.
 */
+ (void)setApiEndpoint:(NSString*)apiEndpoint;

/**
 Sets the log level for the clients logger.
 @param level The level of the logger.
 */
- (void)setLogLevel:(MSLogLevel)level;

/**
 Creates a client using settings from [MSGraphClientConfiguration defaultConfiguration]. Auth provider must be set beforehand.
 @warning With this method, the onus is on the developer to ensure the MSAuthenticationProvider is in a state ready to create auth headers before making client requests.
 */
+ (MSGraphClient*)defaultClient;

@end
