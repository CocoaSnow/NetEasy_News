//
//  VideoNetmanager.h
//  BaseProject
//
//  Created by ios－08 on 15/10/26.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
#import "VideoModel.h"


@interface VideoNetmanager : BaseNetManager

+ (id)getVideoWithPageID:(NSInteger)pageID completionHandle:(void(^)(VideoModel *model, NSError *error))completionHandle;

@end
