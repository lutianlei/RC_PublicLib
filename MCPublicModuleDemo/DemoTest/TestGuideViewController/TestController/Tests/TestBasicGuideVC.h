//
//  TestBasicGuideVC.h
//  MCPublicModuleDemo
//
//  Created by lutianlei on 16/1/12.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MCPublicModule/MCPMCommonHeader.h>
#import "TestGuideView.h"
#import "GuideTestVCInfo.h"
#import "TestGuideClassInfo.h"

@interface TestBasicGuideVC : MCBasicViewController <MCGuideViewDelegate,MCGuideViewDataSource,TestGuideViewDelegate>

@property (strong, nonatomic) MCGuideView *guideView;
@property (strong, nonatomic) TestGuideClassInfo *classInfo;

@end
