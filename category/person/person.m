//
//  person.m
//  person
//
//  Created by zhao on 2018/3/22.
//  Copyright © 2018年 zhao. All rights reserved.
//

#import "person.h"

@implementation person

+ (void)load {
    NSLog(@"person load");
}

- (void)printName {
    NSLog(@"%@", @"person");
}
@end

@implementation person (MyAddition)

+ (void)load {
    NSLog(@"person MyAddition load");
}


- (void)printName {
    NSLog(@"%@", @"MyAddition");
}

@end
