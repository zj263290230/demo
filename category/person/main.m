//
//  main.m
//  person
//
//  Created by zhao on 2018/3/22.
//  Copyright © 2018年 zhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "person.h"
#import <objc/runtime.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Class currentClass = [person class];
        person *my = [[person alloc] init];
        
        if (currentClass) {
            unsigned int methodCount;
            Method *methodList = class_copyMethodList(currentClass, &methodCount);
            IMP lastImp = NULL;
            SEL lastSel = NULL;
            for (NSInteger i = 0; i < methodCount; i++) {
                Method method = methodList[i];
                NSString *methodName = [NSString stringWithCString:sel_getName(method_getName(method))
                                                          encoding:NSUTF8StringEncoding];
                if ([@"printName" isEqualToString:methodName]) {
                    lastImp = method_getImplementation(method);
                    lastSel = method_getName(method);
                }
            }
            typedef void (*fn)(id,SEL);
            
            if (lastImp != NULL) {
                fn f = (fn)lastImp;
                f(my,lastSel);
            }
            free(methodList);
        }
    }
    return 0;
}
