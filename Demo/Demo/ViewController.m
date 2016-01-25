//
//  ViewController.m
//  Demo
//
//  Created by Mrss on 16/1/22.
//  Copyright © 2016年 expai. All rights reserved.
//

#import "ViewController.h"
#import "SSVideoPlayContainer.h"
#import "SSVideoPlayController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    
    
    
}

- (IBAction)play:(id)sender {
    NSArray *paths = @[@"http://data.vod.itc.cn/?prod=app&new=/194/216/JBUeCIHV4s394vYk3nbgt2.mp4",
                       @"http://data.vod.itc.cn/?prod=app&new=/5/36/aUe9kB0906IvkI5UCpq11K.mp4",
                       @"http://data.vod.itc.cn/?prod=app&new=/10/66/eCGPkAewSVqy9P57hvB11D.mp4",
                       @"http://data.vod.itc.cn/?prod=app&new=/125/206/g586XlZhJQBGTnFDS75cPF.mp4",
                       [[NSBundle mainBundle]pathForResource:@"test" ofType:@"mp4"]
                       ];
    NSArray *names = @[@"First Love",@"I Kiss You in My Dreams",@"Take You Over",@"Keep Finding a Way",@"You're Beautiful"];
    NSMutableArray *videoList = [NSMutableArray array];
    for (NSInteger i = 0; i<paths.count; i++) {
        SSVideoModel *model = [[SSVideoModel alloc]init];
        model.path = paths[i];
        model.name = names[i];
        [videoList addObject:model];
    }
    SSVideoPlayController *playController = [[SSVideoPlayController alloc]initWithVideoList:videoList];
    SSVideoPlayContainer *playContainer = [[SSVideoPlayContainer alloc]initWithRootViewController:playController];
    [self presentViewController:playContainer animated:NO completion:nil];
}

@end
