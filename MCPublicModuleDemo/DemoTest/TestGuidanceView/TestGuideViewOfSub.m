//
//  TestGuideViewOfSub.m
//  MCPublicModuleDemo
//
//  Created by lutianlei on 16/1/13.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import "TestGuideViewOfSub.h"
#import <MCPublicModule/Masonry.h>

@implementation TestGuideViewOfSub

- (instancetype)init{
    self = [super init];
    if (self) {
//        self.closeBtnImage = [UIImage imageNamed:@"Guide_Close"];
    }
    return self;
}

- (NSInteger)displayNumberOfCenterView{
    return self.info.imageNames.count;
}
- (UIImage *)getCloseBtnimage{
    return [UIImage imageNamed:@"Guide_Close"];
}
- (UIView *)getCenterView:(IndexPath *)indexPath{
    UIView *centerView = [[UIView alloc] init];
    centerView.backgroundColor = [UIColor clearColor];
    UIImageView *cImageView = [[UIImageView alloc] init];
    UIImage *image = [UIImage imageNamed:self.info.imageNames[indexPath.page]];
    cImageView.image = image;
    [centerView addSubview:cImageView];
    [cImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(centerView);
    }];
    return centerView;
}


@end
