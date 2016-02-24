//
//  UIImage+Addition.m
//  runtimeTest
//
//  Created by 杨航 on 16/2/24.
//  Copyright © 2016年 yanghang. All rights reserved.
//

#import "UIImage+Addition.h"
#import <objc/runtime.h>
static const char *key = "str";
@implementation UIImage (Addition)

- (void)setStr:(NSString *)str1 {
    objc_setAssociatedObject(self,key,str1,OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)str {
    return objc_getAssociatedObject(self,key);
}

@end
