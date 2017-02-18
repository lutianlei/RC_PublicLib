//
//  MCTestCamera.m
//  MCPublicModuleDemo
//
//  Created by lutianlei on 16/1/7.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import "MCTestCamera.h"
#import <MCPublicModule/MCPMCommonHeader.h>
#import "MCTestCameraViewController.h"

@implementation MCTestCamera

-(void) handleDisplayAction
{
    if (!self.para.needViewController) {
        MCTestCameraViewController *testVc = (MCTestCameraViewController *)[MCTestCameraViewController loadIBVCIdentifier:nil];
        [((UINavigationController*)[UIApplication sharedApplication].keyWindow.rootViewController) pushViewController:testVc animated:YES];
    }
}

@end
