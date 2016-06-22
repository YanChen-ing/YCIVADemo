//
//  ViewController.m
//  YCIVADemo
//
//  Created by yanchen on 16/6/21.
//  Copyright © 2016年 yanchen. All rights reserved.
//

#import "ViewController.h"
#import "NSString+YCI.h"



@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    //显示: 申请秒豆: ??
    
    NSString *numStr = @"20";
    
    NSString *tips;
    
    //初级做法. 直接使用系统API
    tips = [NSString stringWithFormat:@"剩余天数: %@",numStr];
        //或
    tips = [@"剩余天数: " stringByAppendingString:numStr];
    
    //中级做法. 使用宏来简化
#define AddStr(str1,str2)           [str1 stringByAppendingString:str2]
    
    tips = AddStr(@"剩余天数: ", numStr);
    
    /*
     但是遇到拼接两个以上字符串时,又变得麻烦了.
     也许可以再定义一个宏,处理三个字符串的情况.
     也可以像这样使用:
    */
    tips = AddStr(@"活动", AddStr(@"剩余天数: ", numStr));
    
    //以后可以这样做了
    tips = YCIJoinStrings(@"活动",@"剩余天数: ",numStr);
    NSLog(@"%@",tips);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
