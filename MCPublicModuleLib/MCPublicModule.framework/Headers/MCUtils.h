//
//  MCUtils.h
//  MCPublicModule
//
//  Created by Mirko on 15/12/23.
//  Copyright (c) 2015年 Mirko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MCUtils : NSObject

+(NSString *) mc_DocumentPath;

+(NSBundle *) MCPMBundle;
+(UIImage *) mcImageWithName:(NSString *) imgName;

@end

CGSize ScreenSize();
CGFloat ScreenWidth();
CGFloat ScreenHeigth();
