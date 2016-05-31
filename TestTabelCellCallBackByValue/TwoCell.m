//
//  TwoCell.m
//  ValueTabel
//
//  Created by 金晓浩 on 16/5/31.
//  Copyright © 2016年 XiaoHaoJin. All rights reserved.
//

#import "TwoCell.h"

@implementation TwoCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.contentView addSubview:self.textFiled];
    }
    return self;
}

- (void)layoutSubviews {
    self.textFiled.frame = self.bounds;
}

- (void)textChangeAction:(UITextField *)sender {
    if (_TwoCellBlock) {
        _TwoCellBlock(sender.text);
    }
}

- (UITextField *)textFiled
{
    if (!_textFiled) {
        _textFiled = [UITextField new];
         _textFiled.borderStyle = UITextBorderStyleLine;
        _textFiled.backgroundColor = [UIColor redColor];
        _textFiled.placeholder = @"num2";
        [_textFiled addTarget:self action:@selector(textChangeAction:) forControlEvents:UIControlEventEditingChanged];
    }
    return _textFiled;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
