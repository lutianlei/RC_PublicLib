//
//  TestGuideClassInfo.h
//  MCPublicModuleDemo
//
//  Created by lutianlei on 16/1/12.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestGuideClassInfo : NSObject

@property (strong, nonatomic) NSArray *imageNames;
@property (assign, nonatomic) BOOL touchOutSideDismiss;
@property (assign, nonatomic) BOOL touchInSideDismiss;
@property (assign, nonatomic) BOOL showCloseView;

+ (TestGuideClassInfo *)getInfo:(NSString *)className;

@end
