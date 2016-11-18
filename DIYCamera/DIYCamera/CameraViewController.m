//
//  CameraViewController.m
//  DIYCamera
//
//  Created by 王朝阳 on 2016/11/17.
//  Copyright © 2016年 wangzhaoyang. All rights reserved.
//

#import "CameraViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface CameraViewController ()
@property (strong, nonatomic) IBOutletCollection(NSLayoutConstraint) NSArray *maskViewConstraints;

@end

@implementation CameraViewController {
    //四个对象
    ///拍摄会话
    AVCaptureSession *_caputerSession;
    ///输入设备
    AVCaptureDeviceInput *_inputdevice;
    ///图像输出设备
    AVCapturePhotoOutput *_photoOutput;
    ///取景框-预览视图
    AVCaptureVideoPreviewLayer *_previewLayer;
       
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)camera {
    //关闭快门
    [self maskViewAnimationClose:YES];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self maskViewAnimationClose:NO];
    });
}
- (void)maskViewAnimationClose:(BOOL)close {
    
    if (close) {
        //禁用选中的约束
        [NSLayoutConstraint deactivateConstraints:_maskViewConstraints];
    } else {
        [NSLayoutConstraint activateConstraints:_maskViewConstraints];
    }
    [UIView animateWithDuration:0.25 animations:^{
        [self.view layoutIfNeeded];
    }];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
