//
//  VideoNetmanager.m
//  BaseProject
//
//  Created by ios－08 on 15/10/26.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "VideoNetmanager.h"

@implementation VideoNetmanager

//http://c.m.163.com/nc/video/home/0-10.html

+ (id)getVideoWithPageID:(NSInteger)pageID completionHandle:(void(^)(VideoModel *model, NSError *error))completionHandle {
    NSString *path = [NSString stringWithFormat:@"http://c.m.163.com/nc/video/home/%ld-10.html", pageID];
    
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandle([VideoModel objectWithKeyValues:responseObj], error);
    }];
}

@end
