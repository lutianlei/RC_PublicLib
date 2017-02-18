//
//  TestGuideView.m
//  MCPublicModuleDemo
//
//  Created by lutianlei on 16/1/8.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import "TestGuideView.h"

@interface TestGuideView ()

@end

@implementation TestGuideView

- (void)awakeFromNib{
    [super awakeFromNib];
    [self loadResource];

}

+ (TestGuideView *)loadView{
    TestGuideView *view = (TestGuideView *)[self loadIBView];
    if (!view) {
        view = [[TestGuideView alloc] init];
    }
    return view;
}

- (void)loadResource{
    self.backgroundColor = [UIColor clearColor];
    self.imageView.backgroundColor = RandomColor();
    self.userInteractionEnabled = YES;
}

- (void)dealloc{
    DLOG(@"TestGuideView == nil");
}

@end
