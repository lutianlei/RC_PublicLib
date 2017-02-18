//
//  TestGuideViewController.m
//  MCPublicModuleDemo
//
//  Created by lutianlei on 16/1/12.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import "TestGuideViewController.h"
#import "GuideTestVCInfo.h"
#import "MCDemoBasicClass.h"
#import "TestBasicGuideVC.h"

@interface TestGuideViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) NSArray *guideInfo;

@end

@implementation TestGuideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"TestGuideVCDemo";
    [self loadClassInfo];
    
}
-(void) loadClassInfo
{
    self.guideInfo = [GuideTestVCInfo getMCClassInfoArr];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.guideInfo.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewDefaultCellIdentifier"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"TableViewDefaultCellIdentifier"];
    }
    
    GuideTestVCInfo *info = self.guideInfo[indexPath.row];
    cell.textLabel.text = info.className;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    GuideTestVCInfo *info = self.guideInfo[indexPath.row];
    if (!info.className || info.className.length == 0) {
        return;
    }
    Class basicClass = NSClassFromString(info.className);
    TestBasicGuideVC *object = (TestBasicGuideVC *)[[basicClass alloc] init];
    [((UINavigationController*)[UIApplication sharedApplication].keyWindow.rootViewController) pushViewController:object animated:YES];
//    [object handleAction];
    
}

- (void)handleDisplayAction{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
