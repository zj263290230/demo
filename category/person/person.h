//
//  person.h
//  person
//
//  Created by zhao on 2018/3/22.
//  Copyright © 2018年 zhao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface person : NSObject
- (void)printName;
@end


@interface person (MyAddition)
- (void)printName;

@end
