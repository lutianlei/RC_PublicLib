//
//  MCGuideView.h
//  MCPublicModule
//
//  Created by lutianlei on 16/1/8.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MCBasicView.h"
#import "IndexPath.h"

@protocol MCGuideViewDataSource;
@protocol MCGuideViewDelegate;

@interface MCGuideView : MCBasicView 

@property (weak, nonatomic) id <MCGuideViewDelegate> delegate;
@property (weak, nonatomic) id <MCGuideViewDataSource> dataSource;
@property (assign, nonatomic) BOOL touchOutSideDismiss;
@property (assign, nonatomic) BOOL touchInSideDismiss;
@property (assign, nonatomic) BOOL showCloseView;
@property (strong, nonatomic) UIImage *closeBtnImage;
// setting

+ (MCGuideView *)guideView;

- (void)showInKeyWindow;
- (void)showInView:(UIView *)view;
- (void)dismiss;

@end

@protocol MCGuideViewDataSource <NSObject>
@optional
- (NSInteger)numberOfCenterViewInGuideView:(MCGuideView *)guideView;  // number of center view
- (CGSize)guideView:(MCGuideView *)guideView sizeForCenterViewAtIndexPath:(IndexPath *)indexPath;  // custom of center view size ( have default height width)

@end

@protocol  MCGuideViewDelegate <NSObject>
@optional
- (UIView *)guideView:(MCGuideView *)guideView showImageViewInGuideView:(IndexPath *)indexPath; // custom center view
- (void)didClickCloseView;     // did click close button event
- (void)guideView:(MCGuideView *)guideView didSelectCenterViewInGuideView:(IndexPath *)indexPath;  // did select page of center view at indexPath
@end
