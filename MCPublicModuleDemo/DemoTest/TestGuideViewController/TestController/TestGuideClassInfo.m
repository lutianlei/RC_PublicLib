//
//  TestGuideClassInfo.m
//  MCPublicModuleDemo
//
//  Created by lutianlei on 16/1/12.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import "TestGuideClassInfo.h"

@implementation TestGuideClassInfo

+ (TestGuideClassInfo *)setInfo:(NSDictionary *)infoDic className:(NSString *)className{
    TestGuideClassInfo *info = [[TestGuideClassInfo alloc] init];
    NSDictionary *classDic = infoDic[className];
    if (!classDic) {
        return nil;
    }
    info.imageNames = classDic[@"kImageNameKey"];
    info.touchOutSideDismiss = [classDic[@"kTouchOutSideKey"] boolValue];
    info.touchInSideDismiss = [classDic[@"kTouchInSideKey"] boolValue];
    info.showCloseView = [classDic[@"kShowCloseViewKey"] boolValue];
    return info;
}
+ (TestGuideClassInfo *)getInfo:(NSString *)className{
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"TestGuideVC" ofType:@"plist"];
    NSDictionary *data = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
    TestGuideClassInfo *info = [TestGuideClassInfo setInfo:data className:className];
    return info;
}

@end
