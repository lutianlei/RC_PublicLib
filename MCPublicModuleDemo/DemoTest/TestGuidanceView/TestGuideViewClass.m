//
//  TestGuideViewClass.m
//  MCPublicModuleDemo
//
//  Created by lutianlei on 16/1/13.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import "TestGuideViewClass.h"
#import "TestGuideViewOfSub.h"

@interface TestGuideViewClass ()
@property (strong, nonatomic) TestGuideViewOfSub *sub;
@end

@implementation TestGuideViewClass

-(void) handleDisplayAction
{
    if (!self.para.needViewController) {
       TestGuideViewOfSub *sub = [[TestGuideViewOfSub alloc] init];
        [sub showInKeyWindow];
}
}


@end
