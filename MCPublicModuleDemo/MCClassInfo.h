//
//  MCClassInfo.h
//  MCPublicModuleDemo
//
//  Created by Mirko on 15/12/24.
//  Copyright (c) 2015年 Mirko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MCClassInfo : NSObject

@property (nonatomic, strong) NSString *className;
@property (nonatomic, assign) BOOL needViewController;

+(MCClassInfo *) info:(NSDictionary *) infoDic;

+(NSArray *) getMCClassInfoArr;

@end
