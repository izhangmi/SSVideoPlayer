# SSVideoPlayer
Run the project for more information.
## Features
* Support both local and remote video resource.
* Adjust the volume. (Not support simulator)
* Show buffer progress and play progress.
* Set play progress manually.
* Switch play list.
* Switch display fill mode.

## Requirements
* iOS 6.0 or higher

## Usage

```objective-c
NSMutableArray *videoList = [NSMutableArray array];
SSVideoModel *model1 = [[SSVideoModel alloc]init];
model1.name = @"";
model1.path = @"";
[videoList addObject:model1];
SSVideoPlayController *playController = [[SSVideoPlayController alloc]initWithVideoList:videoList];
SSVideoPlayContainer *playContainer = [[SSVideoPlayContainer alloc]initWithRootViewController:playController];
[self presentViewController:playContainer animated:YES completion:nil];
```

## License
The project is available under the MIT license.
