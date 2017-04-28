# Collections in the Microsoft Graph SDK for iOS

## Getting a collection

To retrieve a collection, like a folder's children, you call `getWithCompletion`:

```objc
[[[[[[graphClient me] drive] items:<item_id>] children] request] getWithCompletion:
    ^(MSCollection *children, MSGraphDriveItemChildrenCollectionRequest *nextRequest, NSError *error){
        // Returns a MSCollection, 
        // another children request if there are more children to get, 
        // or an error if one occurred.
}];
```

`MSCollection` has the following: 

|Name|Description|
|----|-----------|
|**value**|An `NSArray` of entity types, e.g. MSGraphDriveItem |
|**nextLink**| An `NSURL` used to get to the next page of items, if another page exists.|
|**additionData**| An `NSDictionary` to any additional values returned by the service. In this case, none.|

The completion handler also supplies a request object called `nextRequest` of the same type as the original request.  If there is another page of items this object can be used to make the next page request on the collection. If there are no pages left this object will be nil.

## Adding to a collection

Some collections, like the children of a folder, can be changed. To add a folder to the children of an item you can call the `addDriveItem` method:

```objc
MSGraphDriveItem *newFolder = [[MSGraphDriveItem alloc] init];
newFolder.name = <new_folder_name>;
newFolder.folder = [[MSGraphFolder alloc] init];
[[[[[[graphClient me] drive] items:<item_id>] children] request] addDriveItem:newFolder withCompletion:^(MSGraphDriveItem *item, NSError *error){
    //returns the new item or an error if there was one.
}];
```

## Expanding a collection

To expand a collection, you call expand on the `CollectionRequest` object with the string you want to expand:

```objc
MSGraphDriveItemChildrenCollectionRequest *request = [[[[[[[odClient] me] drive] items:<item_id>] children] request] expand:@"<property to expand>"];

[request getWithCompletion:^(MSCollection *children, MSGraphDriveItemChildrenCollectionRequest *nextRequest, NSError *error){
    // children will have a collection of MSGraphDriveItems, that will have the relevant property populated
}];
```

## Collections as entity properties
Collections that are returned as part of an entity, as opposed to requesting the collection directly, are exposed as an `NSArray` of contained types. For example, if a MSGraphDriveItem is requested with children expanded:
```objc
[[[[[[graphClient me] drive] root] request] expand:@"children"] getWithCompletion:^(MSGraphDriveItem *item, NSError *error) {
    // item.children is an NSArray of MSGraphDriveItem
    for (MSGraphDriveItem *child in item.children) {
        // Do something with the child item
    }
}];
```

