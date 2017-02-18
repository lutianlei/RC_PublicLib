//
//  MCCenterView.h
//  MCPublicModule
//
//  Created by lutianlei on 16/1/9.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MCBasicView.h"

@class MCGuideView;

@protocol MCCenterViewDelegate <NSObject>

- (void)didSelectInSideOfCenterView;

@end

@interface MCCenterView : MCBasicView

@property (strong, nonatomic)UIImageView *imageView;
@property (weak, nonatomic) id <MCCenterViewDelegate> delegate;

+ (MCCenterView *)loadView;

@end
