//
//  TestBasicGuideVC.m
//  MCPublicModuleDemo
//
//  Created by lutianlei on 16/1/12.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import "TestBasicGuideVC.h"
#import "TestGuideViewOfSub.h"

@interface TestBasicGuideVC ()
@property (strong, nonatomic) TestGuideViewOfSub *sub;
@end

@implementation TestBasicGuideVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = RandomColor();
    [self performSelector:@selector(getGuideSource:) withObject:NSStringFromClass([self class])];
//    [self getGuideSource:NSStringFromClass([self class])];
}

- (void)getGuideSource:(NSString *)className{
    self.classInfo = [TestGuideClassInfo getInfo:className];
    if (self.classInfo) { // 判断是否有guidance
        NSInteger havedShow = [[[NSUserDefaults standardUserDefaults] objectForKey:className] integerValue];
        if (havedShow == 0) {    // 判断是否显示过
            [self loadGuidance:className];
        }
    }
}

- (void)loadGuidance:(NSString *)className{
    // ***** 代理 ****
    
//    [[NSUserDefaults standardUserDefaults] setObject:@(1) forKey:className];
//    self.guideView = [MCGuideView guideView];
//    self.guideView.delegate = self;
//    self.guideView.dataSource = self;
//    self.guideView.touchOutSideDismiss = self.classInfo.touchOutSideDismiss;
//    self.guideView.touchInSideDismiss = self.classInfo.touchInSideDismiss;
//    self.guideView.showCloseView = self.classInfo.showCloseView;
//    self.guideView.closeBtnImage = [UIImage imageNamed:@"Guide_Close"];
//    [self.guideView showInKeyWindow];
    
    // ***** 继承 ****
    
    TestGuideViewOfSub *sub = [[TestGuideViewOfSub alloc] init];
    sub.info = self.classInfo;
    [sub showInKeyWindow];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
