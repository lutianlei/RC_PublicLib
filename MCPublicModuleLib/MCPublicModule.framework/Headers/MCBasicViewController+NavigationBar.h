//
//  MCBasicViewController+NavigationBar.h
//  MCPublicModule
//
//  Created by Mirko on 15/12/29.
//  Copyright (c) 2015年 Mirko. All rights reserved.
//

#import "MCBasicViewController.h"

typedef NS_ENUM(NSInteger, EMCNavgationBarType)
{
    kMCNavgationBarTypeDefault = 1,            //left   center  right
    kMCNavgationBarTypeCompoundLeft,            //left*2  center right
    kMCNavgationBarTypeCompoundRight,           //left  center  right*2
    kMCNavgationBarTypeCompoundLeftAndRight,    //left*2  center right*2
};

@interface MCBasicViewController (NavigationBar)

-(void) setupNavigationBar:(EMCNavgationBarType) type;
-(void) addLeftAreaRightButton;
-(void) addRightAreaLeftButton;

@end
