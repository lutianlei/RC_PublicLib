//
//  TestCityClass.m
//  MCPublicModuleDemo
//
//  Created by lutianlei on 16/1/1.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import "TestCityClass.h"
#import <MCPublicModule/MCBasicViewController.h>
#import <MCPublicModule/MCBasicViewController+NavigationBar.h>
#import <MCPublicModule/MCPMCommonHeader.h>

@implementation TestCityClass

-(void) handleDisplayAction
{
    if (self.para.needViewController) {
        MCCityEngine *engine = [MCCityEngine shareEngine];
        // 加载的列表模式
        [engine setDemandValue: (kMCShowDemandTypeLocal | kMCShowDemandTypeFocus | kMCShowDemandTypeHot | kMCShowDemandTypeList)];
        // 赋个假数据
        NSDictionary *cityData = @{@"cityLoca" :
                                      @{
                                           @"定" : @[
                                                     @{
                                                         @"zone_id" : @"100100",
                                                         @"zone_name" : @"北京市"
                                                      }
                                                    ]
                                       },
                                   @"cityFocus" :
                                       @{
                                           @"注" : @[
                                                      @{
                                                       @"zone_id" : @"100100,100100,100100",
                                                       @"zone_name" : @"上海市,重庆市,北京市"
                                                       },
                                                   ]
                                           },
                                   @"cityHot" :
                                       @{
                                           @"热" : @[
                                                      @{
                                                       @"zone_id" : @"100100,100100,100100,100100,100100,100100",
                                                       @"zone_name" : @"上海市,北京市,重庆市,郑州市,深圳市,香港"
                                                       }
                                                    ]
                                        },
                                   @"cityList" :
                                       @{
                                           @"A" : @[
                                                      @{
                                                       @"zone_id" : @"100100",
                                                       @"zone_name" : @"安阳市"
                                                       },
                                                      @{
                                                       @"zone_id" : @"100100",
                                                       @"zone_name" : @"安徽市"
                                                       },
                                                      @{
                                                       @"zone_id" : @"100100",
                                                       @"zone_name" : @"安安市"
                                                       }
                                                   ],
                                           @"B" : @[
                                                   @{
                                                       @"zone_id" : @"100100",
                                                       @"zone_name" : @"北京市"
                                                       },
                                                   @{
                                                       @"zone_id" : @"100100",
                                                       @"zone_name" : @"北仓市"
                                                       },
                                                   @{
                                                       @"zone_id" : @"100100",
                                                       @"zone_name" : @"北海市"
                                                       }
                                                   ]
                                        }
                                   
                                   };
        
        [engine setCityDataInfo:cityData];
        
        MCCityListViewController *testVc = (MCCityListViewController *)engine.cityListVC;
        [((UINavigationController*)[UIApplication sharedApplication].keyWindow.rootViewController) pushViewController:testVc animated:YES];
    }
}


@end
