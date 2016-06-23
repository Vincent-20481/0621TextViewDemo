//
//  ViewController.m
//  0621TextViewDemo
//
//  Created by apple on 16/6/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "EwenTextView.h"
#define kScreenBounds ([[UIScreen mainScreen] bounds])
#define kScreenwidth (kScreenBounds.size.width)
#define kScreenheight (kScreenBounds.size.height)

@interface ViewController ()
@property (nonatomic,strong)EwenTextView *ewenTextView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.ewenTextView];
}

- (EwenTextView *)ewenTextView{
    if (!_ewenTextView) {
        _ewenTextView = [[EwenTextView alloc]initWithFrame:CGRectMake(0, kScreenheight-49, kScreenwidth, 49)];
        _ewenTextView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
        [_ewenTextView setPlaceholderText:@"请输入文字"];
        _ewenTextView.EwenTextViewBlock = ^(NSString *test){
            NSLog(@"%@",test);
        };
    }
    return _ewenTextView;
}

- (IBAction)one:(UIButton *)sender {
     NSLog(@"我被点击了");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
