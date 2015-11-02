//
//  VideoModel.m
//  BaseProject
//
//  Created by ios－08 on 15/10/26.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "VideoModel.h"

@implementation VideoModel

+ (NSDictionary *)objectClassInArray {
    return @{@"videoSidList":[VideoSidListModel class],
             @"videoList":[VideoListModel class]
             };
}

@end

@implementation VideoListModel
+ (NSDictionary *)replacedKeyFromPropertyName {
    return @{@"videoListDescription":@"description",
             @"m3u8Url":@"m3u8_url",
             @"m3u8HdUrl":@"m3u8Hd_url",
             @"mp4Url":@"mp4_url",
             @"mp4HdUrl":@"mp4Hd_url",
             };
}
@end

@implementation VideoSidListModel
@end