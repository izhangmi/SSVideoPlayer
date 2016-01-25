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
model1.name = @"video1";
model1.path = @"https://demo.cn/video1.mp4";
[videoList addObject:model1];
SSVideoModel *model2 = [[SSVideoModel alloc]init];
model2.name = @"video2";
model2.path = [[NSBundle mainBundle]pathForResource:@"video2" ofType:@"mp4"];
[videoList addObject:model2];
SSVideoPlayController *playController = [[SSVideoPlayController alloc]initWithVideoList:videoList];
SSVideoPlayContainer *playContainer = [[SSVideoPlayContainer alloc]initWithRootViewController:playController];
[self presentViewController:playContainer animated:NO completion:nil];
```

You can also play in your own custom view. See `SSVideoPlayer.h` for more information.

## License
The project is available under the MIT license.
