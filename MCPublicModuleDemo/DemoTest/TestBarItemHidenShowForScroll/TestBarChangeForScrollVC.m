//
//  TestBarChangeForScrollVC.m
//  MCPublicModuleDemo
//
//  Created by lutianlei on 16/6/23.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import "TestBarChangeForScrollVC.h"

static float kNavBarTransfromInitOriginY = 0.0f;
static float kNavBarTransfromLastOriginY = -64.0f;

static float kNavBarFrameInitOriginY = 20.0f;
static float kNavBarFrameLastOriginY = -44.0f;

@interface TestBarChangeForScrollVC ()<UITableViewDelegate,UITableViewDataSource,UIScrollViewDelegate>

@property (assign, nonatomic) float lastChangeOffset;
@property (assign, nonatomic) float difChangeOffset; // 偏移量趋势发生变化的差值
@property (weak, nonatomic) IBOutlet UITableView *mcTableView;

@end

@implementation TestBarChangeForScrollVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController.navigationBar setTranslucent:NO];
    CGAffineTransform transform = self.navigationController.view.transform;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *cellIdentifier = @"cellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text = @"test";
    cell.backgroundColor = RandomColor();
    return cell;
}


- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    float offsetY = scrollView.contentOffset.y;
    self.difChangeOffset = offsetY - self.lastChangeOffset;

    DLOG(@"*****offsetY:%f \n space: %f",offsetY,self.difChangeOffset);
   
// *******  transfrom
//    CGAffineTransform transform = self.navigationController.view.transform;

//    if (offsetY < self.lastChangeOffset && self.lastChangeOffset > 0) { // show
//        if (transform.ty <= kNavBarInitOriginY && transform.ty >= kNavBarLastOriginY) {
//            transform.ty -= self.difChangeOffset;
//            self.navigationController.view.transform = transform;
//            // setTransform scale
//            [self setNavViewTransformToInit];
//            
//        }
//    }else if(offsetY > self.lastChangeOffset && self.lastChangeOffset > 0){ // hide
//        if (transform.ty <= kNavBarInitOriginY && transform.ty >= kNavBarLastOriginY) {
//            transform.ty -= self.difChangeOffset;
//            self.navigationController.view.transform = transform;
//            [self setNavViewTransformToInit];
//        }
//
//    }
    
// *******  nav bar frame
    CGRect navRect = self.navigationController.navigationBar.frame;
    CGRect tabRect = self.mcTableView.frame;
    
    if (offsetY < self.lastChangeOffset && self.lastChangeOffset > 0 && self.lastChangeOffset < self.mcTableView.contentSize.height - ScreenHeigth()) { // show
        if (navRect.origin.y < kNavBarFrameInitOriginY && navRect.origin.y >= kNavBarFrameLastOriginY) {
            navRect.origin.y  -= self.difChangeOffset;
            tabRect.origin.y  -= self.difChangeOffset;
            tabRect.size.height += self.difChangeOffset;
            self.navigationController.navigationBar.frame = navRect;
            self.mcTableView.frame = tabRect;
            [self setNavBarFrameToInitOrLast];

        }
    }else if(offsetY > self.lastChangeOffset && self.lastChangeOffset > 0 && self.lastChangeOffset < self.mcTableView.contentSize.height - ScreenHeigth()){ // hide
        if (navRect.origin.y <= kNavBarFrameInitOriginY && navRect.origin.y > kNavBarFrameLastOriginY) {
            navRect.origin.y -= self.difChangeOffset;
            tabRect.origin.y  -= self.difChangeOffset;
            tabRect.size.height += self.difChangeOffset;
            self.navigationController.navigationBar.frame = navRect;
            self.mcTableView.frame = tabRect;
            [self setNavBarFrameToInitOrLast];
        }

    }
    self.lastChangeOffset = offsetY;

//    if (offsetY > 0 && offsetY < self.mcTableView.contentSize.height - ScreenHeigth()) {
//        self.lastChangeOffset = offsetY;
//    }
}

- (void)setNavViewTransformToInit{
    CGAffineTransform transf = self.navigationController.view.transform;
    if (transf.ty <= kNavBarTransfromLastOriginY) {
        transf.ty = kNavBarTransfromLastOriginY;
        self.navigationController.view.transform = transf;
    }else if (transf.ty >= kNavBarTransfromInitOriginY){
        transf.ty = kNavBarTransfromInitOriginY;
        self.navigationController.view.transform = transf;
    }
}
- (void)setNavBarFrameToInitOrLast{
    CGRect navRect = self.navigationController.navigationBar.frame;
    CGRect tabRect = self.mcTableView.frame;

    if (navRect.origin.y < kNavBarFrameLastOriginY) {
        navRect.origin.y = kNavBarFrameLastOriginY;
        tabRect.origin.y = kNavBarTransfromLastOriginY;
        tabRect.size.height = ScreenHeigth();
        self.navigationController.navigationBar.frame = navRect;
        self.mcTableView.frame = tabRect;
        
    }else if (navRect.origin.y > kNavBarFrameInitOriginY){
        navRect.origin.y = kNavBarFrameInitOriginY;
        tabRect.origin.y = kNavBarTransfromInitOriginY;
        tabRect.size.height = ScreenHeigth() - 64;
        self.navigationController.navigationBar.frame = navRect;
        self.mcTableView.frame = tabRect;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
