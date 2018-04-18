// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphUserRequest, MSGraphDirectoryObjectRequestBuilder, MSGraphUserOwnedDevicesCollectionWithReferencesRequestBuilder, MSGraphUserRegisteredDevicesCollectionWithReferencesRequestBuilder, MSGraphManagerRequestBuilder, MSGraphUserDirectReportsCollectionWithReferencesRequestBuilder, MSGraphUserMemberOfCollectionWithReferencesRequestBuilder, MSGraphUserCreatedObjectsCollectionWithReferencesRequestBuilder, MSGraphUserOwnedObjectsCollectionWithReferencesRequestBuilder, MSGraphMessageRequestBuilder, MSGraphUserMessagesCollectionRequestBuilder, MSGraphMailFolderRequestBuilder, MSGraphUserMailFoldersCollectionRequestBuilder, MSGraphCalendarRequestBuilder, MSGraphUserCalendarsCollectionRequestBuilder, MSGraphCalendarGroupRequestBuilder, MSGraphUserCalendarGroupsCollectionRequestBuilder, MSGraphEventRequestBuilder, MSGraphUserCalendarViewCollectionRequestBuilder, MSGraphUserEventsCollectionRequestBuilder, MSGraphContactRequestBuilder, MSGraphUserContactsCollectionRequestBuilder, MSGraphContactFolderRequestBuilder, MSGraphUserContactFoldersCollectionRequestBuilder, MSGraphProfilePhotoRequestBuilder, MSGraphPhotoRequestBuilder, MSGraphDriveRequestBuilder, MSGraphProfilePhotoStreamRequest, MSGraphUserAssignLicenseRequestBuilder, MSGraphUserChangePasswordRequestBuilder, MSGraphUserSendMailRequestBuilder, MSGraphUserReminderViewRequestBuilder;


#import "MSGraphModels.h"
#import "MSGraphDirectoryObjectRequestBuilder.h"


@interface MSGraphUserRequestBuilder : MSGraphDirectoryObjectRequestBuilder

- (MSGraphUserOwnedDevicesCollectionWithReferencesRequestBuilder *)ownedDevices;

- (MSGraphDirectoryObjectRequestBuilder *)ownedDevices:(NSString *)directoryObject;

- (MSGraphUserRegisteredDevicesCollectionWithReferencesRequestBuilder *)registeredDevices;

- (MSGraphDirectoryObjectRequestBuilder *)registeredDevices:(NSString *)directoryObject;

- (MSGraphDirectoryObjectRequestBuilder *) manager;

- (MSGraphUserDirectReportsCollectionWithReferencesRequestBuilder *)directReports;

- (MSGraphDirectoryObjectRequestBuilder *)directReports:(NSString *)directoryObject;

- (MSGraphUserMemberOfCollectionWithReferencesRequestBuilder *)memberOf;

- (MSGraphDirectoryObjectRequestBuilder *)memberOf:(NSString *)directoryObject;

- (MSGraphUserCreatedObjectsCollectionWithReferencesRequestBuilder *)createdObjects;

- (MSGraphDirectoryObjectRequestBuilder *)createdObjects:(NSString *)directoryObject;

- (MSGraphUserOwnedObjectsCollectionWithReferencesRequestBuilder *)ownedObjects;

- (MSGraphDirectoryObjectRequestBuilder *)ownedObjects:(NSString *)directoryObject;

- (MSGraphUserMessagesCollectionRequestBuilder *)messages;

- (MSGraphMessageRequestBuilder *)messages:(NSString *)message;

- (MSGraphUserMailFoldersCollectionRequestBuilder *)mailFolders;

- (MSGraphMailFolderRequestBuilder *)mailFolders:(NSString *)mailFolder;

- (MSGraphCalendarRequestBuilder *) calendar;

- (MSGraphUserCalendarsCollectionRequestBuilder *)calendars;

- (MSGraphCalendarRequestBuilder *)calendars:(NSString *)calendar;

- (MSGraphUserCalendarGroupsCollectionRequestBuilder *)calendarGroups;

- (MSGraphCalendarGroupRequestBuilder *)calendarGroups:(NSString *)calendarGroup;

- (MSGraphEventRequestBuilder *)calendarView:(NSString *)event;

- (MSGraphUserEventsCollectionRequestBuilder *)events;

- (MSGraphEventRequestBuilder *)events:(NSString *)event;

- (MSGraphUserContactsCollectionRequestBuilder *)contacts;

- (MSGraphContactRequestBuilder *)contacts:(NSString *)contact;

- (MSGraphUserContactFoldersCollectionRequestBuilder *)contactFolders;

- (MSGraphContactFolderRequestBuilder *)contactFolders:(NSString *)contactFolder;

- (MSGraphProfilePhotoRequestBuilder *) photo;

- (MSGraphDriveRequestBuilder *) drive;

- (MSGraphProfilePhotoStreamRequest *) photoValueWithOptions:(NSArray *)options;

- (MSGraphProfilePhotoStreamRequest *) photoValue;

- (MSGraphUserAssignLicenseRequestBuilder *)assignLicenseWithAddLicenses:(NSArray *)addLicenses removeLicenses:(NSArray *)removeLicenses ;



- (MSGraphUserChangePasswordRequestBuilder *)changePasswordWithCurrentPassword:(NSString *)currentPassword newPassword:(NSString *)newPassword ;



- (MSGraphUserSendMailRequestBuilder *)sendMailWithMessage:(MSGraphMessage *)message saveToSentItems:(BOOL)saveToSentItems ;



- (MSGraphUserReminderViewRequestBuilder *)reminderViewWithStartDateTime:(NSString *)startDateTime endDateTime:(NSString *)endDateTime ;

- (MSGraphUserCalendarViewCollectionRequestBuilder *)calendarViewWithStartDateTime:(NSString *)startDateTime endDateTime:(NSString *)endDateTime;

- (MSGraphUserRequest *) request;

- (MSGraphUserRequest *) requestWithOptions:(NSArray *)options;


@end
