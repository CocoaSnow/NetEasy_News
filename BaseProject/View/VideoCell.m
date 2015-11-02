//
//  VideoCell.m
//  BaseProject
//
//  Created by ios－08 on 15/10/26.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "VideoCell.h"

@interface VideoCell ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *ImageView;
@property (weak, nonatomic) IBOutlet UILabel *ptimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *playCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *replyCountLabel;

@end

@implementation VideoCell

- (void)setModel:(VideoListModel *)model {
    if (_model != model) {
        _model = model;
        
        
        _titleLabel.text = _model.title;
        _descriptionLabel.text = _model.videoListDescription;
        [_ImageView setImageWithURL:[NSURL URLWithString:_model.cover] placeholderImage:[UIImage imageNamed:@"MVVM"]];
        _ptimeLabel.text = _model.ptime;
        _playCountLabel.text = [NSString stringWithFormat:@"%ld万",[_model.playCount integerValue]/1000];
        _replyCountLabel.text = [NSString stringWithFormat:@"%@",_model.replyCount];
    }
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
