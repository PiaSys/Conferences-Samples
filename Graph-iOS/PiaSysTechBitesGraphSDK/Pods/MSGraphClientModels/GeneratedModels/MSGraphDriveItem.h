// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAudio, MSGraphDeleted, MSGraphFile, MSGraphFileSystemInfo, MSGraphFolder, MSGraphImage, MSGraphGeoCoordinates, MSGraphPackage, MSGraphPhoto, MSGraphPublicationFacet, MSGraphRemoteItem, MSGraphRoot, MSGraphSearchResult, MSGraphShared, MSGraphSharepointIds, MSGraphSpecialFolder, MSGraphVideo, MSGraphWorkbook, MSGraphItemAnalytics, MSGraphListItem, MSGraphPermission, MSGraphSubscription, MSGraphThumbnailSet, MSGraphDriveItemVersion; 


#import "MSGraphBaseItem.h"

@interface MSGraphDriveItem : MSGraphBaseItem

  @property (nullable, nonatomic, setter=setAudio:, getter=audio) MSGraphAudio* audio;
    @property (nullable, nonatomic, setter=setCTag:, getter=cTag) NSString* cTag;
    @property (nullable, nonatomic, setter=setDeleted:, getter=deleted) MSGraphDeleted* deleted;
    @property (nullable, nonatomic, setter=setFile:, getter=file) MSGraphFile* file;
    @property (nullable, nonatomic, setter=setFileSystemInfo:, getter=fileSystemInfo) MSGraphFileSystemInfo* fileSystemInfo;
    @property (nullable, nonatomic, setter=setFolder:, getter=folder) MSGraphFolder* folder;
    @property (nullable, nonatomic, setter=setImage:, getter=image) MSGraphImage* image;
    @property (nullable, nonatomic, setter=setLocation:, getter=location) MSGraphGeoCoordinates* location;
    @property (nullable, nonatomic, setter=setPackage:, getter=package) MSGraphPackage* package;
    @property (nullable, nonatomic, setter=setPhoto:, getter=photo) MSGraphPhoto* photo;
    @property (nullable, nonatomic, setter=setPublication:, getter=publication) MSGraphPublicationFacet* publication;
    @property (nullable, nonatomic, setter=setRemoteItem:, getter=remoteItem) MSGraphRemoteItem* remoteItem;
    @property (nullable, nonatomic, setter=setRoot:, getter=root) MSGraphRoot* root;
    @property (nullable, nonatomic, setter=setSearchResult:, getter=searchResult) MSGraphSearchResult* searchResult;
    @property (nullable, nonatomic, setter=setShared:, getter=shared) MSGraphShared* shared;
    @property (nullable, nonatomic, setter=setSharepointIds:, getter=sharepointIds) MSGraphSharepointIds* sharepointIds;
    @property (nonatomic, setter=setSize:, getter=size) int64_t size;
    @property (nullable, nonatomic, setter=setSpecialFolder:, getter=specialFolder) MSGraphSpecialFolder* specialFolder;
    @property (nullable, nonatomic, setter=setVideo:, getter=video) MSGraphVideo* video;
    @property (nullable, nonatomic, setter=setWebDavUrl:, getter=webDavUrl) NSString* webDavUrl;
    @property (nullable, nonatomic, setter=setWorkbook:, getter=workbook) MSGraphWorkbook* workbook;
    @property (nullable, nonatomic, setter=setAnalytics:, getter=analytics) MSGraphItemAnalytics* analytics;
    @property (nullable, nonatomic, setter=setChildren:, getter=children) NSArray* children;
    @property (nullable, nonatomic, setter=setListItem:, getter=listItem) MSGraphListItem* listItem;
    @property (nullable, nonatomic, setter=setPermissions:, getter=permissions) NSArray* permissions;
    @property (nullable, nonatomic, setter=setSubscriptions:, getter=subscriptions) NSArray* subscriptions;
    @property (nullable, nonatomic, setter=setThumbnails:, getter=thumbnails) NSArray* thumbnails;
    @property (nullable, nonatomic, setter=setVersions:, getter=versions) NSArray* versions;
  
@end
