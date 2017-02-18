//
//  MCBasicGuideView.h
//  MCPublicModule
//
//  Created by lutianlei on 16/1/13.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MCBasicView.h"
#import "IndexPath.h"

@interface MCBasicGuideView : MCBasicView
@property (assign, nonatomic) BOOL touchOutSideDismiss;
@property (assign, nonatomic) BOOL touchInSideDismiss;
@property (assign, nonatomic) BOOL showCloseView;
@property (strong, nonatomic) UIImage *closeBtnImage;

- (void)showInKeyWindow;

- (UIImage *)getCloseBtnimage;   // closeBtn background image
- (NSInteger)displayNumberOfCenterView;   // centerView number
- (UIView *)getCenterView:(IndexPath *)indexPath;  // reinit centerView

@end
