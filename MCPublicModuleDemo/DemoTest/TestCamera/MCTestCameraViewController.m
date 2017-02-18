//
//  MCTestCameraViewController.m
//  MCPublicModuleDemo
//
//  Created by lutianlei on 16/1/7.
//  Copyright © 2016年 Mirko. All rights reserved.
//

#import "MCTestCameraViewController.h"


@interface MCTestCameraViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation MCTestCameraViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = RandomColor();
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clickCameraAction:(id)sender {
    MCCameraSourceManager *manager = [[MCCameraSourceManager alloc] init];
    [manager callCameraDefaultWithGetImageBlcok:^(UIImage *image) {
        NSLog(@"执行成功~");
        self.imageView.image = image;
    }];

}


@end
