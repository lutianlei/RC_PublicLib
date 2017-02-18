//
//  MCCityCellInterface.h
//  MCPublicModule
//
//  Created by lutianlei on 16/1/4.
//  Copyright © 2016年 Mirko. All rights reserved.
//


#ifndef MCCityCellInterface_h
#define MCCityCellInterface_h

@protocol MCCityCellInterface <NSObject>

@optional
- (void)setFocusDataIndexPath:(NSIndexPath *)indexPath;
//- (void)setHotData:(MCCityModel *)model indexPath:(NSIndexPath *)indexPath;
//- (void)setListData:(MCCityModel *)model indexPath:(NSIndexPath *)indexPath;
//- (void)setLocaData:(MCCityModel *)model indexPath:(NSIndexPath *)indexPath;

@end

#endif /* MCCityCellInterface_h */
