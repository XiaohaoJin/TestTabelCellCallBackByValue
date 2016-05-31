//
//  ViewController.m
//  TestTabelCellCallBackByValue
//
//  Created by 金晓浩 on 16/5/31.
//  Copyright © 2016年 XiaoHaoJin. All rights reserved.
//

#import "ViewController.h"
#import "OneCell.h"
#import "TwoCell.h"
#import "ThreeCell.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
{
    ThreeCell *threeCell;
}
@property (nonatomic, strong) UITableView * tableView;
@property (nonatomic, assign) CGFloat     numOne;
@property (nonatomic, assign) CGFloat     numTwo;
@property (nonatomic, copy  ) NSString    * numThree;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.tableView];
    _numThree = @"0";
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
        OneCell *onecell = [tableView dequeueReusableCellWithIdentifier:@"one"];
        if (!onecell) {
            onecell = [[OneCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"one"];
            
            __weak typeof(self) weakSelf = self;
            [onecell setOneCellBlock:^(NSString *title) {
                weakSelf.numOne = [title floatValue];
                weakSelf.numThree = [NSString stringWithFormat:@"%f",(weakSelf.numOne +weakSelf.numTwo)];
                
                NSLog(@"0===%@",weakSelf.numThree);
                threeCell.sumLabel.text = [NSString stringWithFormat:@"两数之和：%@", weakSelf.numThree];
                
            }];
            
        }
        return onecell;
        
    }
    
    if (indexPath.row == 1) {
        TwoCell *twocell = [tableView dequeueReusableCellWithIdentifier:@"two"];
        if (!twocell) {
            twocell = [[TwoCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"two"];
            
            __weak typeof(self) weakSelf = self;
            [twocell setTwoCellBlock:^(NSString *title) {
                weakSelf.numTwo = [title floatValue];
                weakSelf.numThree = [NSString stringWithFormat:@"%f",(weakSelf.numOne + weakSelf.numTwo)];
                threeCell.sumLabel.text = [NSString stringWithFormat:@"两数之和：%@", weakSelf.numThree];;
            }];
            
        }
        return twocell;
        
    }
    
    if (indexPath.row == 2) {
        threeCell = [tableView dequeueReusableCellWithIdentifier:@"three"];
        if (!threeCell) {
            threeCell = [[ThreeCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"three"];
        }
        
        threeCell.sumLabel.text = [NSString stringWithFormat:@"两数之和：%@", self.numThree];
        return threeCell;
        
    }
    
    return [UITableViewCell new];
    
}

- (UITableView *)tableView
{
    if (!_tableView) {
        UITableView *tableView = [[UITableView alloc]init];
        tableView.frame = self.view.frame;
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.rowHeight =  80;
        
        _tableView = tableView;
    }
    return _tableView;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
