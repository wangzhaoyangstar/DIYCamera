//
//  ViewController.m
//  DIYCamera
//
//  Created by 王朝阳 on 2016/11/17.
//  Copyright © 2016年 wangzhaoyang. All rights reserved.
//

#import "ViewController.h"
#import "CameraViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)showCameraView {
    
    CameraViewController *camera = [CameraViewController new];
    [self presentViewController:camera animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
