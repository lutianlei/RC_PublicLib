//
//  MCCityDataSource.h
//  MCPublicModule
//
//  Created by lutianlei on 16/1/5.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol MCCityDataSourceDelegate;

@interface MCCityDataSource : NSObject
// set
@property (weak, nonatomic) id<MCCityDataSourceDelegate>delegate;
@property (assign, nonatomic) BOOL isShowHeaderView;
// get
@property (strong, nonatomic) NSMutableDictionary *listInfo;
@property (strong, nonatomic) NSMutableDictionary *locaInfo;
@property (strong, nonatomic) NSMutableDictionary *focusInfo;
@property (strong, nonatomic) NSMutableDictionary *hotInfo;

//- (NSArray *)getSource;
- (void)setCityData:(NSDictionary *)dic;

- (NSDictionary *)cellTypes;
- (NSArray *)cellIdentifiers;   // 加载的cell identifier
- (NSArray *)indexKeys;         // 索引 index of key
- (NSInteger)numberOfSection;   // number of section
- (NSInteger)numberOfRow:(NSInteger)section;  // number of row
- (CGFloat)heightOfRow:(NSIndexPath *)indexPath; // height of rows of section
- (CGFloat)heightOfSectionHeader:(NSInteger)section;  // height of section header


- (void)addFocusData:(NSDictionary *)dic;
- (void)cancelFocusData:(NSDictionary *)dic;
@end

@protocol MCCityDataSourceDelegate <NSObject>

- (UIView *)viewForContentViewInLocaltionCell;
- (UIView *)viewForContentViewInFocusCell;
- (UIView *)viewForContentViewInHotCell;
- (UIView *)viewForContentViewInListCell;


@end