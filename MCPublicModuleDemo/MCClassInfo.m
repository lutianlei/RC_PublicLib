//
//  MCClassInfo.m
//  MCPublicModuleDemo
//
//  Created by Mirko on 15/12/24.
//  Copyright (c) 2015年 Mirko. All rights reserved.
//

#import "MCClassInfo.h"

@implementation MCClassInfo

+(MCClassInfo *) info:(NSDictionary *) infoDic
{
    MCClassInfo *info = [[MCClassInfo alloc] init];
    NSString *className = infoDic[@"kClassNameKey"];
    info.className = className;
    info.needViewController = [infoDic[@"kActionType"] boolValue];
    return info;
}


+(NSArray *) getMCClassInfoArr
{
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"MCDemoClass" ofType:@"plist"];
    NSArray *data = [[NSArray alloc] initWithContentsOfFile:plistPath];
    
    NSMutableArray *result = [NSMutableArray array];
    
    for (NSDictionary *dic in data) {
        MCClassInfo *info = [MCClassInfo info:dic];
        [result addObject:info];
    }
    return result;
}

@end
