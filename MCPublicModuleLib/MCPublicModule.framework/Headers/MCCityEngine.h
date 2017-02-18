//
//  MCCityEngine.h
//  MCPublicModule
//
//  Created by lutianlei on 16/1/4.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MCPMCommonHeader.h"
#import "MCCityDataSource.h"

typedef NS_ENUM(NSInteger, EMCShowDemandType) { 
    kMCShowDemandTypeDefault = 1,
    kMCShowDemandTypeList    = 2,
    kMCShowDemandTypeLocal   = 4,
    kMCShowDemandTypeFocus   = 8,
    kMCShowDemandTypeHot     = 16,
};

@interface MCCityEngine : NSObject

@property (strong, nonatomic, readonly) MCCityListViewController *cityListVC;  // 城市列表 目标控制器
@property (assign, nonatomic) NSInteger demandValue;  // 对应：EMCShowDemandType ；需要那种组合就传进其相互 “相或“的值即可

+ (id)shareEngine;

- (MCCityDataSource *)getDataSource;
- (UITableView *)getTableView;

- (void)setCityDataInfo:(NSDictionary *)cityDataInfo;  // 城市总体数据 ： key : @"cityInfo"
@end
