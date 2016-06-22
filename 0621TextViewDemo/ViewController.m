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
        _ewenTextView = [[EwenTextView alloc]initWithFrame:kScreenBounds];
        _ewenTextView.backgroundColor = [UIColor clearColor];
        [_ewenTextView setPlaceholderText:@"请输入文字"];
        _ewenTextView.EwenTextViewBlock = ^(NSString *test){
            NSLog(@"%@",test);
        };
    }
    return _ewenTextView;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
