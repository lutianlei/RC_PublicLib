//
//  MCTestPopView.m
//  MCPublicModuleDemo
//
//  Created by Mirko on 15/12/24.
//  Copyright (c) 2015年 Mirko. All rights reserved.
//

#import "MCTestPopView.h"
#import "TestPopView.h"
#import <MCPublicModule/MCPMCommonHeader.h>

@implementation MCTestPopView

-(void) handleDisplayAction
{
    if (!self.para.needViewController) {
        TestPopView *popView = (TestPopView *)[TestPopView popView:YES];
        [popView showPopViewInKeyWindow];
    }
}

@end
