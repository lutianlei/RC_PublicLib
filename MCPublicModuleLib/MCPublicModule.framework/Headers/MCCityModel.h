//
//  MCCityModel.h
//  MCPublicModule
//
//  Created by lutianlei on 16/1/5.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MCCityModel : NSObject

@property (strong, nonatomic) NSString *zone_id;
@property (strong, nonatomic) NSString *zone_name;


@end
@interface MCLocaModel : MCCityModel

+ (MCLocaModel *)setLocaModel:(NSDictionary *)dic;

@end
@interface MCFocusModel : MCCityModel

+ (MCFocusModel *)setFocusModel:(NSDictionary *)dic;

@end

@interface MCHotModel   : MCCityModel
@property (assign, nonatomic) BOOL isSelected; // 选中状态
+ (MCHotModel *)setHotModel:(NSDictionary *)dic;

@end

@interface MCListModel  : MCCityModel
@property (assign, nonatomic) BOOL isSelected;
+ (MCListModel *)setListModel:(NSDictionary *)dic;

@end
