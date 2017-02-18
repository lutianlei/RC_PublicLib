//
//  MCDemoBasicClass.m
//  MCPublicModuleDemo
//
//  Created by Mirko on 15/12/24.
//  Copyright (c) 2015年 Mirko. All rights reserved.
//

#import "MCDemoBasicClass.h"

@interface MCDemoBasicClass ()

-(void) handleDisplayAction;

@end

@implementation MCDemoBasicClass


-(instancetype) init
{
    self = [super init];
    if (self) {
    }
    return self;
}

-(void) displayDemo
{
    [self handleDisplayAction];
}

-(void) handleDisplayAction
{

}


@end
