//
//  person+Category1.m
//  person
//
//  Created by zhao on 2018/3/22.
//  Copyright © 2018年 zhao. All rights reserved.
//

#import "person+Category1.h"

@implementation person (Category1)

+ (void)load {
    NSLog(@"person category1 load");
}

- (void)printName {
    NSLog(@"%@",@"category1");
}

@end
