//
//  MCTestBasicViewController.m
//  MCPublicModuleDemo
//
//  Created by Mirko on 15/12/29.
//  Copyright (c) 2015年 Mirko. All rights reserved.
//

#import "MCTestBasicViewController.h"
#import "TestViewController.h"
#import <MCPublicModule/MCBasicViewController.h>
#import <MCPublicModule/MCBasicViewController+NavigationBar.h>

@implementation MCTestBasicViewController

-(void) handleDisplayAction
{
    if (self.para.needViewController) {
        
        TestViewController *testVc = (TestViewController *)[TestViewController loadIBVCIdentifier:nil];
        [((UINavigationController*)[UIApplication sharedApplication].keyWindow.rootViewController) pushViewController:testVc animated:YES];
    }
}


@end
