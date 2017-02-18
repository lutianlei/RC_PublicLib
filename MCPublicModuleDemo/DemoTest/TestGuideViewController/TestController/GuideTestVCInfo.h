//
//  GuideTestVCInfo.h
//  MCPublicModuleDemo
//
//  Created by lutianlei on 16/1/12.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface GuideTestVCInfo : NSObject

@property (nonatomic, strong) NSString *className;
@property (nonatomic, assign) BOOL havedGuidance;

+(GuideTestVCInfo *) info:(NSDictionary *) infoDic;

+(NSArray *) getMCClassInfoArr;


@end
