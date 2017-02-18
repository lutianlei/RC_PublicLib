//
//  TestBasicGuideVC+Guidance.m
//  MCPublicModuleDemo
//
//  Created by lutianlei on 16/1/12.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import "TestBasicGuideVC+Guidance.h"

@implementation TestBasicGuideVC (Guidance)

#pragma mark - MCGuideViewDataSource method
- (NSInteger)numberOfCenterViewInGuideView:(MCGuideView *)guideView{
    return self.classInfo.imageNames.count;
}

#pragma mark - MCGuideViewDelegate method

- (UIView *)guideView:(MCGuideView *)guideView showImageViewInGuideView:(IndexPath *)indexPath{
    TestGuideView *view = [TestGuideView loadView];
    view.imageView.image = [UIImage imageNamed:self.classInfo.imageNames[indexPath.page]];
    view.delegate = self;
    return view;
}

//@optional
- (void)didClickCloseView{
    DLOG(@"收到 closeView 的点击事件");
}
- (void)guideView:(MCGuideView *)guideView didSelectCenterViewInGuideView:(IndexPath *)indexPath{
    DLOG(@"didSelectCenterViewInGuideView -- indexPath %ld",indexPath.page);
}
@end
