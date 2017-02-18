//
//  TestBarItemHidenShowForScroll.m
//  MCPublicModuleDemo
//
//  Created by lutianlei on 16/6/23.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import "TestBarItemHidenShowForScroll.h"
#import "TestBarChangeForScrollVC.h"

@implementation TestBarItemHidenShowForScroll

- (void)displayDemo{
    if (self.para.needViewController) {
        
        TestBarChangeForScrollVC *vc = (TestBarChangeForScrollVC *)[TestBarChangeForScrollVC loadIBVCIdentifier:nil];
        [((UINavigationController*)[UIApplication sharedApplication].keyWindow.rootViewController) pushViewController:vc animated:YES];
    }
}

@end
