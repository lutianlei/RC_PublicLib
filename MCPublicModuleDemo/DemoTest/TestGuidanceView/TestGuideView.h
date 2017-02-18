//
//  TestGuideView.h
//  MCPublicModuleDemo
//
//  Created by lutianlei on 16/1/8.
//  Copyright © 2016年 Mirko. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <MCPublicModule/MCPMCommonHeader.h>

@protocol TestGuideViewDelegate <NSObject>

@optional
- (void)receiveClickInSideOfCenterViewEvent;

@end

@interface TestGuideView : MCBasicView

@property (strong, nonatomic) id<TestGuideViewDelegate>delegate;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
+ (TestGuideView *)loadView;

@end
