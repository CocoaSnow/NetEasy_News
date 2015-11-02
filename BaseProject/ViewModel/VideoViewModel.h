//
//  VideoViewModel.h
//  BaseProject
//
//  Created by ios－08 on 15/10/26.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
#import "VideoModel.h"

@interface VideoViewModel : BaseNetManager

@property (nonatomic, assign) NSInteger rowNumber;
@property (nonatomic, strong)  NSMutableArray  *dataArr;

- (VideoListModel *)videoListModelForRow:(NSInteger)row;
- (NSURL *)playURLForRow:(NSInteger)row;

@property (nonatomic, assign) NSInteger pageId;

- (void)refreshDataCompletionHandle:(void(^)(NSError *error))completionHandle;
- (void)getMoreDataCompletionHandle:(void(^)(NSError *error))completionHandle;
@end
