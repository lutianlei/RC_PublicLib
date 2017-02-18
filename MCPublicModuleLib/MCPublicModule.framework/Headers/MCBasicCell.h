//
//  MCBasicCell.h
//  MCPublicModule
//
//  Created by lutianlei on 16/1/1.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MCPMCommonHeader.h"
#import "MCCityDataSource.h"
#import "MCCityModel.h"

typedef NS_ENUM(NSInteger, ECellType) {
    kCellTypeLocation = 0,      // 
    kCellTypeFocus ,
    kCellTypeHot ,
    kCellTypeList,
};

@interface MCBasicCell : UITableViewCell
// main bundle
+ (MCBasicCell *)loadIBCell;
+ (MCBasicCell *)loadIBCellWithType:(ECellType)type;
// lib bundle
+ (MCBasicCell *)loadMCIBCell;
+ (MCBasicCell *)loadMCIBCellWithType:(ECellType)type;

- (void)setDataSource:(MCCityDataSource *)mDataSource indexPath:(NSIndexPath *)indexPath;

@end
