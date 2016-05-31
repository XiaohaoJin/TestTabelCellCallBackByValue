//
//  ThreeCell.m
//  ValueTabel
//
//  Created by 金晓浩 on 16/5/31.
//  Copyright © 2016年 XiaoHaoJin. All rights reserved.
//

#import "ThreeCell.h"

@implementation ThreeCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.contentView addSubview:self.sumLabel];
    }
    return self;
}

- (void)layoutSubviews {
    self.sumLabel.frame = self.bounds;
}

- (UILabel *)sumLabel
{
    if (!_sumLabel) {
        UILabel* label = [[UILabel alloc]init];
        label.backgroundColor = [UIColor greenColor];
        label.textColor = [UIColor blackColor];
        label.font = [UIFont systemFontOfSize:14.0f];
        label.text = @"两数之和：";
        _sumLabel = label;
    }
    return _sumLabel;
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
