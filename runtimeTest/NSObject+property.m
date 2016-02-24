//
//  NSObject+property.m
//  runtimeTest
//
//  Created by 杨航 on 16/2/24.
//  Copyright © 2016年 yanghang. All rights reserved.
//

#import "NSObject+property.h"
#import <objc/runtime.h>
static const char *key = "str";

@implementation NSObject (property)

- (void)setStr:(NSString *)str {
 objc_setAssociatedObject(self, key, str, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)str {
      return objc_getAssociatedObject(self, key);
}
@end
