//
//  TestViewController.m
//  MCPublicModuleDemo
//
//  Created by Mirko on 15/12/29.
//  Copyright (c) 2015年 Mirko. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = RandomColor();
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) handleNavigationAction:(EMCNavigationActionType)actionType
{
    [super handleNavigationAction:actionType];
}

-(void) handleGoBackEvent:(UIButton *)sender
{
    [super handleGoBackEvent:sender];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
