//
//  OneCell.h
//  ValueTabel
//
//  Created by 金晓浩 on 16/5/31.
//  Copyright © 2016年 XiaoHaoJin. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^OneCellTextFiledTextBlock)(NSString * title);

@interface OneCell : UITableViewCell

@property (nonatomic, strong) UITextField * textFiled;
@property (nonatomic, copy) OneCellTextFiledTextBlock OneCellBlock;
- (void)setOneCellBlock:(OneCellTextFiledTextBlock)OneCellBlock;

@end
