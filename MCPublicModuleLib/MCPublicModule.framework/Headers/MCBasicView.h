//
//  BasicView.h
//  TestMutableView
//
//  Created by Mirko on 15/12/17.
//  Copyright (c) 2015年 Mirko. All rights reserved.
//


typedef NS_ENUM(NSInteger, EViewType)
{
    kViewType1 = 0,
    kViewType2 = 1,
};

@interface MCBasicView : UIView

+(MCBasicView *) loadIBView;
+(MCBasicView *) loadIBViewWithType:(EViewType) type;

+(MCBasicView *) loadMCIBView;
+(MCBasicView *) loadMCIBViewWithType:(EViewType) type;
@end
