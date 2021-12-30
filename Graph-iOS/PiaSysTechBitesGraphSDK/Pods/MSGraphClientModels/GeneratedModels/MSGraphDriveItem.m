// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDriveItem()
{
    MSGraphAudio* _audio;
    NSString* _cTag;
    MSGraphDeleted* _deleted;
    MSGraphFile* _file;
    MSGraphFileSystemInfo* _fileSystemInfo;
    MSGraphFolder* _folder;
    MSGraphImage* _image;
    MSGraphGeoCoordinates* _location;
    MSGraphPackage* _package;
    MSGraphPhoto* _photo;
    MSGraphPublicationFacet* _publication;
    MSGraphRemoteItem* _remoteItem;
    MSGraphRoot* _root;
    MSGraphSearchResult* _searchResult;
    MSGraphShared* _shared;
    MSGraphSharepointIds* _sharepointIds;
    int64_t _size;
    MSGraphSpecialFolder* _specialFolder;
    MSGraphVideo* _video;
    NSString* _webDavUrl;
    MSGraphWorkbook* _workbook;
    MSGraphItemAnalytics* _analytics;
    NSArray* _children;
    MSGraphListItem* _listItem;
    NSArray* _permissions;
    NSArray* _subscriptions;
    NSArray* _thumbnails;
    NSArray* _versions;
}
@end

@implementation MSGraphDriveItem

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.driveItem";
    }
    return self;
}
- (MSGraphAudio*) audio
{
    if(!_audio){
        _audio = [[MSGraphAudio alloc] initWithDictionary: self.dictionary[@"audio"]];
    }
    return _audio;
}

- (void) setAudio: (MSGraphAudio*) val
{
    _audio = val;
    self.dictionary[@"audio"] = val;
}

- (NSString*) cTag
{
    if([[NSNull null] isEqual:self.dictionary[@"cTag"]])
    {
        return nil;
    }   
    return self.dictionary[@"cTag"];
}

- (void) setCTag: (NSString*) val
{
    self.dictionary[@"cTag"] = val;
}

- (MSGraphDeleted*) deleted
{
    if(!_deleted){
        _deleted = [[MSGraphDeleted alloc] initWithDictionary: self.dictionary[@"deleted"]];
    }
    return _deleted;
}

- (void) setDeleted: (MSGraphDeleted*) val
{
    _deleted = val;
    self.dictionary[@"deleted"] = val;
}

- (MSGraphFile*) file
{
    if(!_file){
        _file = [[MSGraphFile alloc] initWithDictionary: self.dictionary[@"file"]];
    }
    return _file;
}

- (void) setFile: (MSGraphFile*) val
{
    _file = val;
    self.dictionary[@"file"] = val;
}

- (MSGraphFileSystemInfo*) fileSystemInfo
{
    if(!_fileSystemInfo){
        _fileSystemInfo = [[MSGraphFileSystemInfo alloc] initWithDictionary: self.dictionary[@"fileSystemInfo"]];
    }
    return _fileSystemInfo;
}

- (void) setFileSystemInfo: (MSGraphFileSystemInfo*) val
{
    _fileSystemInfo = val;
    self.dictionary[@"fileSystemInfo"] = val;
}

- (MSGraphFolder*) folder
{
    if(!_folder){
        _folder = [[MSGraphFolder alloc] initWithDictionary: self.dictionary[@"folder"]];
    }
    return _folder;
}

- (void) setFolder: (MSGraphFolder*) val
{
    _folder = val;
    self.dictionary[@"folder"] = val;
}

- (MSGraphImage*) image
{
    if(!_image){
        _image = [[MSGraphImage alloc] initWithDictionary: self.dictionary[@"image"]];
    }
    return _image;
}

- (void) setImage: (MSGraphImage*) val
{
    _image = val;
    self.dictionary[@"image"] = val;
}

- (MSGraphGeoCoordinates*) location
{
    if(!_location){
        _location = [[MSGraphGeoCoordinates alloc] initWithDictionary: self.dictionary[@"location"]];
    }
    return _location;
}

- (void) setLocation: (MSGraphGeoCoordinates*) val
{
    _location = val;
    self.dictionary[@"location"] = val;
}

- (MSGraphPackage*) package
{
    if(!_package){
        _package = [[MSGraphPackage alloc] initWithDictionary: self.dictionary[@"package"]];
    }
    return _package;
}

- (void) setPackage: (MSGraphPackage*) val
{
    _package = val;
    self.dictionary[@"package"] = val;
}

- (MSGraphPhoto*) photo
{
    if(!_photo){
        _photo = [[MSGraphPhoto alloc] initWithDictionary: self.dictionary[@"photo"]];
    }
    return _photo;
}

- (void) setPhoto: (MSGraphPhoto*) val
{
    _photo = val;
    self.dictionary[@"photo"] = val;
}

- (MSGraphPublicationFacet*) publication
{
    if(!_publication){
        _publication = [[MSGraphPublicationFacet alloc] initWithDictionary: self.dictionary[@"publication"]];
    }
    return _publication;
}

- (void) setPublication: (MSGraphPublicationFacet*) val
{
    _publication = val;
    self.dictionary[@"publication"] = val;
}

- (MSGraphRemoteItem*) remoteItem
{
    if(!_remoteItem){
        _remoteItem = [[MSGraphRemoteItem alloc] initWithDictionary: self.dictionary[@"remoteItem"]];
    }
    return _remoteItem;
}

- (void) setRemoteItem: (MSGraphRemoteItem*) val
{
    _remoteItem = val;
    self.dictionary[@"remoteItem"] = val;
}

- (MSGraphRoot*) root
{
    if(!_root){
        _root = [[MSGraphRoot alloc] initWithDictionary: self.dictionary[@"root"]];
    }
    return _root;
}

- (void) setRoot: (MSGraphRoot*) val
{
    _root = val;
    self.dictionary[@"root"] = val;
}

- (MSGraphSearchResult*) searchResult
{
    if(!_searchResult){
        _searchResult = [[MSGraphSearchResult alloc] initWithDictionary: self.dictionary[@"searchResult"]];
    }
    return _searchResult;
}

- (void) setSearchResult: (MSGraphSearchResult*) val
{
    _searchResult = val;
    self.dictionary[@"searchResult"] = val;
}

- (MSGraphShared*) shared
{
    if(!_shared){
        _shared = [[MSGraphShared alloc] initWithDictionary: self.dictionary[@"shared"]];
    }
    return _shared;
}

- (void) setShared: (MSGraphShared*) val
{
    _shared = val;
    self.dictionary[@"shared"] = val;
}

- (MSGraphSharepointIds*) sharepointIds
{
    if(!_sharepointIds){
        _sharepointIds = [[MSGraphSharepointIds alloc] initWithDictionary: self.dictionary[@"sharepointIds"]];
    }
    return _sharepointIds;
}

- (void) setSharepointIds: (MSGraphSharepointIds*) val
{
    _sharepointIds = val;
    self.dictionary[@"sharepointIds"] = val;
}

- (int64_t) size
{
    _size = [self.dictionary[@"size"] longLongValue];
    return _size;
}

- (void) setSize: (int64_t) val
{
    _size = val;
    self.dictionary[@"size"] = @(val);
}

- (MSGraphSpecialFolder*) specialFolder
{
    if(!_specialFolder){
        _specialFolder = [[MSGraphSpecialFolder alloc] initWithDictionary: self.dictionary[@"specialFolder"]];
    }
    return _specialFolder;
}

- (void) setSpecialFolder: (MSGraphSpecialFolder*) val
{
    _specialFolder = val;
    self.dictionary[@"specialFolder"] = val;
}

- (MSGraphVideo*) video
{
    if(!_video){
        _video = [[MSGraphVideo alloc] initWithDictionary: self.dictionary[@"video"]];
    }
    return _video;
}

- (void) setVideo: (MSGraphVideo*) val
{
    _video = val;
    self.dictionary[@"video"] = val;
}

- (NSString*) webDavUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"webDavUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"webDavUrl"];
}

- (void) setWebDavUrl: (NSString*) val
{
    self.dictionary[@"webDavUrl"] = val;
}

- (MSGraphWorkbook*) workbook
{
    if(!_workbook){
        _workbook = [[MSGraphWorkbook alloc] initWithDictionary: self.dictionary[@"workbook"]];
    }
    return _workbook;
}

- (void) setWorkbook: (MSGraphWorkbook*) val
{
    _workbook = val;
    self.dictionary[@"workbook"] = val;
}

- (MSGraphItemAnalytics*) analytics
{
    if(!_analytics){
        _analytics = [[MSGraphItemAnalytics alloc] initWithDictionary: self.dictionary[@"analytics"]];
    }
    return _analytics;
}

- (void) setAnalytics: (MSGraphItemAnalytics*) val
{
    _analytics = val;
    self.dictionary[@"analytics"] = val;
}

- (NSArray*) children
{
    if(!_children){
        
    NSMutableArray *childrenResult = [NSMutableArray array];
    NSArray *children = self.dictionary[@"children"];

    if ([children isKindOfClass:[NSArray class]]){
        for (id tempDriveItem in children){
            [childrenResult addObject:tempDriveItem];
        }
    }

    _children = childrenResult;
        
    }
    return _children;
}

- (void) setChildren: (NSArray*) val
{
    _children = val;
    self.dictionary[@"children"] = val;
}

- (MSGraphListItem*) listItem
{
    if(!_listItem){
        _listItem = [[MSGraphListItem alloc] initWithDictionary: self.dictionary[@"listItem"]];
    }
    return _listItem;
}

- (void) setListItem: (MSGraphListItem*) val
{
    _listItem = val;
    self.dictionary[@"listItem"] = val;
}

- (NSArray*) permissions
{
    if(!_permissions){
        
    NSMutableArray *permissionsResult = [NSMutableArray array];
    NSArray *permissions = self.dictionary[@"permissions"];

    if ([permissions isKindOfClass:[NSArray class]]){
        for (id tempPermission in permissions){
            [permissionsResult addObject:tempPermission];
        }
    }

    _permissions = permissionsResult;
        
    }
    return _permissions;
}

- (void) setPermissions: (NSArray*) val
{
    _permissions = val;
    self.dictionary[@"permissions"] = val;
}

- (NSArray*) subscriptions
{
    if(!_subscriptions){
        
    NSMutableArray *subscriptionsResult = [NSMutableArray array];
    NSArray *subscriptions = self.dictionary[@"subscriptions"];

    if ([subscriptions isKindOfClass:[NSArray class]]){
        for (id tempSubscription in subscriptions){
            [subscriptionsResult addObject:tempSubscription];
        }
    }

    _subscriptions = subscriptionsResult;
        
    }
    return _subscriptions;
}

- (void) setSubscriptions: (NSArray*) val
{
    _subscriptions = val;
    self.dictionary[@"subscriptions"] = val;
}

- (NSArray*) thumbnails
{
    if(!_thumbnails){
        
    NSMutableArray *thumbnailsResult = [NSMutableArray array];
    NSArray *thumbnails = self.dictionary[@"thumbnails"];

    if ([thumbnails isKindOfClass:[NSArray class]]){
        for (id tempThumbnailSet in thumbnails){
            [thumbnailsResult addObject:tempThumbnailSet];
        }
    }

    _thumbnails = thumbnailsResult;
        
    }
    return _thumbnails;
}

- (void) setThumbnails: (NSArray*) val
{
    _thumbnails = val;
    self.dictionary[@"thumbnails"] = val;
}

- (NSArray*) versions
{
    if(!_versions){
        
    NSMutableArray *versionsResult = [NSMutableArray array];
    NSArray *versions = self.dictionary[@"versions"];

    if ([versions isKindOfClass:[NSArray class]]){
        for (id tempDriveItemVersion in versions){
            [versionsResult addObject:tempDriveItemVersion];
        }
    }

    _versions = versionsResult;
        
    }
    return _versions;
}

- (void) setVersions: (NSArray*) val
{
    _versions = val;
    self.dictionary[@"versions"] = val;
}


@end
