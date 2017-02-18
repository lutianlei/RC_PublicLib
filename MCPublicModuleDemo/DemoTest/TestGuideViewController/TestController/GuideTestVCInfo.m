//
//  GuideTestVCInfo.m
//  MCPublicModuleDemo
//
//  Created by lutianlei on 16/1/12.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import "GuideTestVCInfo.h"

@implementation GuideTestVCInfo

+(GuideTestVCInfo *) info:(NSDictionary *) infoDic
{
    GuideTestVCInfo *info = [[GuideTestVCInfo alloc] init];
    NSString *className = infoDic[@"kClassNameKey"];
    BOOL havedGuidance = [infoDic[@"kHavedGuideKey"] boolValue];
    info.className = className;
    info.havedGuidance = havedGuidance;
    return info;
}


+(NSArray *) getMCClassInfoArr
{
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"GuideTestVCInfo" ofType:@"plist"];
    NSArray *data = [[NSArray alloc] initWithContentsOfFile:plistPath];
    
    NSMutableArray *result = [NSMutableArray array];
    
    for (NSDictionary *dic in data) {
        GuideTestVCInfo *info = [GuideTestVCInfo info:dic];
        [result addObject:info];
    }
    return result;
}


@end
