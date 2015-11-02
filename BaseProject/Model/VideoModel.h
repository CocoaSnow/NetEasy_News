//
//  VideoModel.h
//  BaseProject
//
//  Created by ios－08 on 15/10/26.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"



@interface VideoModel : BaseModel
@property (nonatomic, strong) NSString *videoHomeSid;
@property (nonatomic, strong) NSArray *videoSidList;
@property (nonatomic, strong) NSArray *videoList;
@end


@interface VideoListModel : BaseModel
@property (nonatomic, strong) NSString *videoListDescription;
@property (nonatomic, strong) NSString *replyid;
@property (nonatomic, strong) NSString *mp4Url;
@property (nonatomic, strong) NSNumber* playCount;
@property (nonatomic, strong) NSString *replyBoard;
@property (nonatomic, strong) NSString *vid;
@property (nonatomic, strong) NSNumber* length;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString* m3u8HdUrl;
@property (nonatomic, strong) NSString *ptime;
@property (nonatomic, strong) NSString *cover;
@property (nonatomic, strong) NSString *videosource;
@property (nonatomic, strong) NSString* mp4HdUrl;
@property (nonatomic, strong) NSNumber* playersize;
@property (nonatomic, strong) NSNumber* replyCount;
@property (nonatomic, strong) NSString *m3u8Url;
@end

@interface VideoSidListModel : BaseModel

@property (nonatomic, strong) NSString *sid;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *imgsrc;

@end