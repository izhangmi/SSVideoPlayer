//
//  SSVideoPlayController.h
//  SSVideoPlayer
//
//  Created by Mrss on 16/1/22.
//  Copyright © 2016年 expai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SSVideoModel : NSObject

@property (nonatomic,copy) NSString *path;
@property (nonatomic,copy) NSString *name;

@end


@interface SSVideoPlayController : UIViewController

- (instancetype)initWithVideoList:(NSArray <SSVideoModel *> *)videoList;

@end
