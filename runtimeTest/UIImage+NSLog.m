//
//  UIImage+NSLog.m
//  runtimeTest
//
//  Created by 杨航 on 16/2/24.
//  Copyright © 2016年 yanghang. All rights reserved.
//

#import "UIImage+NSLog.h"
#import <objc/runtime.h>
@implementation UIImage (NSLog)

+ (void)load
{
    // 交换方法
    // 获取imageWithName方法地址
    Method imageWithName = class_getClassMethod(self, @selector(imageReplaceMethod:));
    
    // 获取imageWithName方法地址
    Method imageName = class_getClassMethod(self, @selector(imageNamed:));
//    
    // 交换方法地址，相当于交换实现方式
    method_exchangeImplementations(imageWithName, imageName);
    
}


+ (instancetype)imageReplaceMethod:(NSString *)name
{
    // 这里调用imageWithName，相当于调用imageName
    UIImage *image = [self imageReplaceMethod:name];
    
    if (image == nil) {
        NSLog(@"加载失败");
    }
    return image;
}
@end
