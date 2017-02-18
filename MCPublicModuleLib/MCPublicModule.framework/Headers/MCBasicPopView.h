//
//  SSBasicPopView.h
//  SesameSister
//
//  Created by Mirko_wei on 15/5/9.
//  Copyright (c) 2015年 Sesame. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MCBasicView.h"

typedef NS_ENUM(NSInteger, EPopViewType)
{
    kPopViewTypeNone,
    kPopViewTypeDefault,
};

@interface MCBasicPopView : MCBasicView

@property (nonatomic, strong) UIView *maskBackgroundView;
@property (nonatomic, assign) BOOL touchOutSideHide;

+(instancetype) popView:(BOOL) touchOutSideHide;
-(void) showPopViewInView:(UIView *) view;
-(void) showPopViewInKeyWindow;
-(void) hidePopView:(BOOL) anima;

@end
