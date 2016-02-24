//
//  ViewController.m
//  runtimeTest
//
//  Created by 杨航 on 16/2/24.
//  Copyright © 2016年 yanghang. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "UIImage+Addition.h"
#import "NSObject+property.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"123"];//扩展方法
    NSObject *obj = [NSObject new];//扩展属性
    image.str = @"asdf";
    obj.str = @"wajgns";
    NSLog(@"%@---%@",image.str,obj.str);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
