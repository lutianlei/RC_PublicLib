//
//  TestBasicGuideViewController.m
//  MCPublicModuleDemo
//
//  Created by lutianlei on 16/1/12.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import "TestBasicGuideViewController.h"
#import "TestGuideViewController.h"

@implementation TestBasicGuideViewController


-(void) handleDisplayAction{
    if (self.para.needViewController) {
        TestGuideViewController *testVc = (TestGuideViewController *)[TestGuideViewController loadIBVCIdentifier:nil];
        [((UINavigationController*)[UIApplication sharedApplication].keyWindow.rootViewController) pushViewController:testVc animated:YES];
    }
}


@end
