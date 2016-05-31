//
//  TwoCell.h
//  ValueTabel
//
//  Created by 金晓浩 on 16/5/31.
//  Copyright © 2016年 XiaoHaoJin. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^TwoCellTextFiledTextBlock)(NSString * title);
@interface TwoCell : UITableViewCell

@property (nonatomic, strong) UITextField * textFiled;
@property (nonatomic, copy) TwoCellTextFiledTextBlock TwoCellBlock;
-(void)setTwoCellBlock:(TwoCellTextFiledTextBlock)TwoCellBlock;
@end
