//
//  VideoViewModel.m
//  BaseProject
//
//  Created by ios－08 on 15/10/26.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "VideoViewModel.h"
#import "VideoNetmanager.h"

@implementation VideoViewModel

- (NSMutableArray *)dataArr {
    if (!_dataArr) {
        _dataArr = [NSMutableArray array];
    }
    return _dataArr;
}

- (NSInteger)rowNumber {
    return self.dataArr.count;
}

- (VideoListModel *)videoListModelForRow:(NSInteger)row {
    return self.dataArr[row];
}

- (NSURL *)playURLForRow:(NSInteger)row {
    NSString *path = [[self videoListModelForRow:row] mp4Url];
    return [NSURL URLWithString:path];
}

- (void)getDataCompletionHandle:(void(^)(NSError *error))completionHandle {
    
    [VideoNetmanager getVideoWithPageID:_pageId completionHandle:^(VideoModel *model, NSError *error) {
        if (_pageId == 1) {
            [self.dataArr removeAllObjects];
        }
        
        [self.dataArr addObjectsFromArray:model.videoList];
        
        completionHandle(error);
    }];
}

- (void)refreshDataCompletionHandle:(void (^)(NSError *))completionHandle  {
    _pageId = 0;
    [self getDataCompletionHandle:completionHandle];
}

- (void)getMoreDataCompletionHandle:(void (^)(NSError *))completionHandle {
    _pageId += 10;
    [self getDataCompletionHandle:completionHandle];
}

@end
