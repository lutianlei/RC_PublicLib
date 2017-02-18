//
//  MCBasicViewController.h
//  MCPublicModule
//
//  Created by Mirko on 15/12/29.
//  Copyright (c) 2015年 Mirko. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, EMCNavigationActionType)
{
    kMCNavActionLeftAreaLeft = 1001,
    kMCNavActionLeftAreaRight,
    kMCNavActionRightAreaLeft,
    kMCNavActionRightAreaRight,
    kMCNavActionCenterTitle,
};

@class MCUIButton;

@interface MCBasicViewController : UIViewController

@property (nonatomic, strong) MCUIButton *leftAreaLBtn;
@property (nonatomic, strong) MCUIButton *leftAreaRBtn;
@property (nonatomic, strong) MCUIButton *rightAreaLBtn;
@property (nonatomic, strong) MCUIButton *rightAreaRBtn;

@property (nonatomic, strong) UIView *leftArea;
@property (nonatomic, strong) UIView *centerArea;
@property (nonatomic, strong) UIView *rightArea;

@property (nonatomic, assign) NSInteger leftAreaW;
@property (nonatomic, assign) NSInteger centerAreaW;
@property (nonatomic, assign) NSInteger rightAreaW;

@property (nonatomic, strong) MCUIButton *titleButton;


-(void) handleNavigationAction:(EMCNavigationActionType) actionType;
-(void) handleGoBackEvent:(UIButton *) sender;
// TEST
- (void)handleAction;
@end

@interface MCBasicViewController (LoadIB)

+(MCBasicViewController *) loadIBVCIdentifier:(NSString *) name;
+(MCBasicViewController *) loadMCIBVCIdentifier:(NSString *) name;


@end
