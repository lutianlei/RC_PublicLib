//
//  ViewController.m
//  MCPublicModuleDemo
//
//  Created by Mirko on 15/12/22.
//  Copyright (c) 2015年 Mirko. All rights reserved.
//

#import "ViewController.h"
#import "MCDemoBasicClass.h"
#import "MCClassInfo.h"
#import <MCPublicModule/MCTestClass.h>
//#import <MCPublicModule/MCPMCommonHeader.h>
//#import <MCPublicModule/MCBasicView.h>
//#import <MCPublicModule/UIViewAdditions.h>
#import <MCPublicModule/MCPMCommonHeader.h>
#import <MCPublicModule/MCBasicPopView.h>


@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *classInfos;
                   
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"MCPublickModuleDemo";
    [self loadClassInfo];
}

-(void) loadClassInfo
{
    self.classInfos = [MCClassInfo getMCClassInfoArr];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.classInfos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewDefaultCellIdentifier"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"TableViewDefaultCellIdentifier"];
    }
    
    MCClassInfo *info = self.classInfos[indexPath.row];
    cell.textLabel.text = info.className;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    MCClassInfo *info = self.classInfos[indexPath.row];
    if (!info.className || info.className.length == 0) {
        return;
    }
    Class basicClass = NSClassFromString(info.className);
    MCDemoBasicClass *object = (MCDemoBasicClass *)[[basicClass alloc] init];
    object.para = info;
    [object displayDemo];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
