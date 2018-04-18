// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphODataEntities.h"

@implementation MSGraphUserRequestBuilder

- (MSGraphUserOwnedDevicesCollectionWithReferencesRequestBuilder *)ownedDevices
{
    return [[MSGraphUserOwnedDevicesCollectionWithReferencesRequestBuilder alloc] initWithURL:[self.requestURL URLByAppendingPathComponent:@"ownedDevices"]  
                                                                                       client:self.client];
}

- (MSGraphDirectoryObjectRequestBuilder *)ownedDevices:(NSString *)directoryObject
{
    return [[self ownedDevices] directoryObject:directoryObject];
}

- (MSGraphUserRegisteredDevicesCollectionWithReferencesRequestBuilder *)registeredDevices
{
    return [[MSGraphUserRegisteredDevicesCollectionWithReferencesRequestBuilder alloc] initWithURL:[self.requestURL URLByAppendingPathComponent:@"registeredDevices"]  
                                                                                            client:self.client];
}

- (MSGraphDirectoryObjectRequestBuilder *)registeredDevices:(NSString *)directoryObject
{
    return [[self registeredDevices] directoryObject:directoryObject];
}

-(MSGraphDirectoryObjectRequestBuilder *)manager
{
    return [[MSGraphDirectoryObjectRequestBuilder alloc] initWithURL:[self.requestURL URLByAppendingPathComponent:@"manager"] client:self.client];

}

- (MSGraphUserDirectReportsCollectionWithReferencesRequestBuilder *)directReports
{
    return [[MSGraphUserDirectReportsCollectionWithReferencesRequestBuilder alloc] initWithURL:[self.requestURL URLByAppendingPathComponent:@"directReports"]  
                                                                                        client:self.client];
}

- (MSGraphDirectoryObjectRequestBuilder *)directReports:(NSString *)directoryObject
{
    return [[self directReports] directoryObject:directoryObject];
}

- (MSGraphUserMemberOfCollectionWithReferencesRequestBuilder *)memberOf
{
    return [[MSGraphUserMemberOfCollectionWithReferencesRequestBuilder alloc] initWithURL:[self.requestURL URLByAppendingPathComponent:@"memberOf"]  
                                                                                   client:self.client];
}

- (MSGraphDirectoryObjectRequestBuilder *)memberOf:(NSString *)directoryObject
{
    return [[self memberOf] directoryObject:directoryObject];
}

- (MSGraphUserCreatedObjectsCollectionWithReferencesRequestBuilder *)createdObjects
{
    return [[MSGraphUserCreatedObjectsCollectionWithReferencesRequestBuilder alloc] initWithURL:[self.requestURL URLByAppendingPathComponent:@"createdObjects"]  
                                                                                         client:self.client];
}

- (MSGraphDirectoryObjectRequestBuilder *)createdObjects:(NSString *)directoryObject
{
    return [[self createdObjects] directoryObject:directoryObject];
}

- (MSGraphUserOwnedObjectsCollectionWithReferencesRequestBuilder *)ownedObjects
{
    return [[MSGraphUserOwnedObjectsCollectionWithReferencesRequestBuilder alloc] initWithURL:[self.requestURL URLByAppendingPathComponent:@"ownedObjects"]  
                                                                                       client:self.client];
}

- (MSGraphDirectoryObjectRequestBuilder *)ownedObjects:(NSString *)directoryObject
{
    return [[self ownedObjects] directoryObject:directoryObject];
}

- (MSGraphUserMessagesCollectionRequestBuilder *)messages
{
    return [[MSGraphUserMessagesCollectionRequestBuilder alloc] initWithURL:[self.requestURL URLByAppendingPathComponent:@"messages"]  
                                                                     client:self.client];
}

- (MSGraphMessageRequestBuilder *)messages:(NSString *)message
{
    return [[self messages] message:message];
}

- (MSGraphUserMailFoldersCollectionRequestBuilder *)mailFolders
{
    return [[MSGraphUserMailFoldersCollectionRequestBuilder alloc] initWithURL:[self.requestURL URLByAppendingPathComponent:@"mailFolders"]  
                                                                        client:self.client];
}

- (MSGraphMailFolderRequestBuilder *)mailFolders:(NSString *)mailFolder
{
    return [[self mailFolders] mailFolder:mailFolder];
}

-(MSGraphCalendarRequestBuilder *)calendar
{
    return [[MSGraphCalendarRequestBuilder alloc] initWithURL:[self.requestURL URLByAppendingPathComponent:@"calendar"] client:self.client];

}

- (MSGraphUserCalendarsCollectionRequestBuilder *)calendars
{
    return [[MSGraphUserCalendarsCollectionRequestBuilder alloc] initWithURL:[self.requestURL URLByAppendingPathComponent:@"calendars"]  
                                                                      client:self.client];
}

- (MSGraphCalendarRequestBuilder *)calendars:(NSString *)calendar
{
    return [[self calendars] calendar:calendar];
}

- (MSGraphUserCalendarGroupsCollectionRequestBuilder *)calendarGroups
{
    return [[MSGraphUserCalendarGroupsCollectionRequestBuilder alloc] initWithURL:[self.requestURL URLByAppendingPathComponent:@"calendarGroups"]  
                                                                           client:self.client];
}

- (MSGraphCalendarGroupRequestBuilder *)calendarGroups:(NSString *)calendarGroup
{
    return [[self calendarGroups] calendarGroup:calendarGroup];
}

- (MSGraphUserCalendarViewCollectionRequestBuilder *)calendarView
{
    return [[MSGraphUserCalendarViewCollectionRequestBuilder alloc] initWithURL:[self.requestURL URLByAppendingPathComponent:@"calendarView"]  
                                                                         client:self.client];
}

- (MSGraphEventRequestBuilder *)calendarView:(NSString *)event
{
    return [[self calendarView] event:event];
}

- (MSGraphUserEventsCollectionRequestBuilder *)events
{
    return [[MSGraphUserEventsCollectionRequestBuilder alloc] initWithURL:[self.requestURL URLByAppendingPathComponent:@"events"]  
                                                                   client:self.client];
}

- (MSGraphEventRequestBuilder *)events:(NSString *)event
{
    return [[self events] event:event];
}

- (MSGraphUserContactsCollectionRequestBuilder *)contacts
{
    return [[MSGraphUserContactsCollectionRequestBuilder alloc] initWithURL:[self.requestURL URLByAppendingPathComponent:@"contacts"]  
                                                                     client:self.client];
}

- (MSGraphContactRequestBuilder *)contacts:(NSString *)contact
{
    return [[self contacts] contact:contact];
}

- (MSGraphUserContactFoldersCollectionRequestBuilder *)contactFolders
{
    return [[MSGraphUserContactFoldersCollectionRequestBuilder alloc] initWithURL:[self.requestURL URLByAppendingPathComponent:@"contactFolders"]  
                                                                           client:self.client];
}

- (MSGraphContactFolderRequestBuilder *)contactFolders:(NSString *)contactFolder
{
    return [[self contactFolders] contactFolder:contactFolder];
}

-(MSGraphProfilePhotoRequestBuilder *)photo
{
    return [[MSGraphProfilePhotoRequestBuilder alloc] initWithURL:[self.requestURL URLByAppendingPathComponent:@"photo"] client:self.client];

}

-(MSGraphDriveRequestBuilder *)drive
{
    return [[MSGraphDriveRequestBuilder alloc] initWithURL:[self.requestURL URLByAppendingPathComponent:@"drive"] client:self.client];

}

- (MSGraphProfilePhotoStreamRequest *) photoValueWithOptions:(NSArray *)options
{
    NSURL *photoURL = [self.requestURL URLByAppendingPathComponent:@"photo/$value"];
    return [[MSGraphProfilePhotoStreamRequest alloc] initWithURL:photoURL options:options client:self.client];
}

- (MSGraphProfilePhotoStreamRequest *) photoValue
{
    return [self photoValueWithOptions:nil];
}

- (MSGraphUserAssignLicenseRequestBuilder *)assignLicenseWithAddLicenses:(NSArray *)addLicenses removeLicenses:(NSArray *)removeLicenses 
{
    NSURL *actionURL = [self.requestURL URLByAppendingPathComponent:@"microsoft.graph.assignLicense"];
    return [[MSGraphUserAssignLicenseRequestBuilder alloc] initWithAddLicenses:addLicenses
                                                                removeLicenses:removeLicenses
                                                                           URL:actionURL
                                                                        client:self.client];


}

- (MSGraphUserChangePasswordRequestBuilder *)changePasswordWithCurrentPassword:(NSString *)currentPassword newPassword:(NSString *)newPassword 
{
    NSURL *actionURL = [self.requestURL URLByAppendingPathComponent:@"microsoft.graph.changePassword"];
    return [[MSGraphUserChangePasswordRequestBuilder alloc] initWithCurrentPassword:currentPassword
                                                                        newPassword:newPassword
                                                                                URL:actionURL
                                                                             client:self.client];


}

- (MSGraphUserSendMailRequestBuilder *)sendMailWithMessage:(MSGraphMessage *)message saveToSentItems:(BOOL)saveToSentItems 
{
    NSURL *actionURL = [self.requestURL URLByAppendingPathComponent:@"microsoft.graph.sendMail"];
    return [[MSGraphUserSendMailRequestBuilder alloc] initWithMessage:message
                                                      saveToSentItems:saveToSentItems
                                                                  URL:actionURL
                                                               client:self.client];


}

- (MSGraphUserReminderViewRequestBuilder *)reminderViewWithStartDateTime:(NSString *)startDateTime endDateTime:(NSString *)endDateTime 
{
    NSURL *actionURL = [self.requestURL URLByAppendingPathComponent:@"microsoft.graph.reminderView"];
    return [[MSGraphUserReminderViewRequestBuilder alloc] initWithStartDateTime:startDateTime
                                                                    endDateTime:endDateTime
                                                                            URL:actionURL
                                                                         client:self.client];


}

- (MSGraphUserCalendarViewCollectionRequestBuilder *)calendarViewWithStartDateTime:(NSString *)startDateTime endDateTime:(NSString *)endDateTime
{
    NSURL *actionURL = [self.requestURL URLByAppendingPathComponent:@"calendarView"];
    return [[MSGraphUserCalendarViewCollectionRequestBuilder alloc] initWithStartDateTime:startDateTime
                                                                              endDateTime:endDateTime
                                                                                      URL:actionURL
                                                                                   client:self.client];
}


- (MSGraphUserRequest *)request
{
    return [self requestWithOptions:nil];
}

- (MSGraphUserRequest *) requestWithOptions:(NSArray *)options
{
    return [[MSGraphUserRequest alloc] initWithURL:self.requestURL options:options client:self.client];
}


@end
