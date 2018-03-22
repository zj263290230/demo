//
//  person+Category2.m
//  person
//
//  Created by zhao on 2018/3/22.
//  Copyright © 2018年 zhao. All rights reserved.
//

#import "person+Category2.h"

@implementation person (Category2)
+ (void)load {
    NSLog(@"person Category2 load");
}

- (void)printName {
    NSLog(@"%@",@"Category2");
}
@end
