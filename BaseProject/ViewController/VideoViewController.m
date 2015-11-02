//
//  VideoViewController.m
//  BaseProject
//
//  Created by ios－08 on 15/10/26.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "VideoViewController.h"
#import "VideoViewModel.h"
#import "VideoCell.h"
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>

@interface VideoViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong)  VideoViewModel *videoVM;
@end

@implementation VideoViewController

- (VideoViewModel *)videoVM {
    if (!_videoVM) {
        _videoVM = [[VideoViewModel alloc] init];
    }
    return _videoVM;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
       [self.videoVM refreshDataCompletionHandle:^(NSError *error) {
           [self.tableView reloadData];
           [self.tableView.header endRefreshing];
       }];
    }];
    
    [self.tableView.header beginRefreshing];
    
    
    self.tableView.footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
       [self.videoVM getMoreDataCompletionHandle:^(NSError *error) {
           [self.tableView reloadData];
           [self.tableView.footer endRefreshing];
       }];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.videoVM.rowNumber;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    VideoCell *cell = [tableView dequeueReusableCellWithIdentifier:@"VideoCell" forIndexPath:indexPath];
    
    cell.model = [self.videoVM videoListModelForRow:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    AVPlayerViewController *vc = [[AVPlayerViewController alloc] init];
    
    AVPlayer *player = [AVPlayer playerWithURL:[self.videoVM playURLForRow:indexPath.row]];
    
    vc.player = player;
    
    [self presentViewController:vc animated:YES completion:^{
        
    }];
    
    [vc.player play];
    
}

@end
