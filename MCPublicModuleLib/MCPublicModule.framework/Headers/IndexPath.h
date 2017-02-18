//
//  MCIndexPath.h
//  MCPublicModule
//
//  Created by lutianlei on 16/1/9.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IndexPath : NSObject

@property (assign, nonatomic) NSInteger page;

+ (IndexPath *)setIndexPath:(NSDictionary *)indexPathInfo;

@end
