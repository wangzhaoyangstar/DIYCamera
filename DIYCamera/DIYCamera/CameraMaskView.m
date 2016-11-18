//
//  CameraMaskView.m
//  DIYCamera
//
//  Created by 王朝阳 on 2016/11/17.
//  Copyright © 2016年 wangzhaoyang. All rights reserved.
//

#import "CameraMaskView.h"
#import "CZAdditions.h"

@interface CameraMaskView ()
@property (nonatomic, weak) IBOutlet UIImageView *imageView;

@end

@implementation CameraMaskView


- (void)drawRect:(CGRect)rect {
    
    //绘制一个矩形.填充指定的颜色
    [[UIColor cz_colorWithHex:0x24282e] setFill];
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:rect];
    [path fill];
    
    CGContextClearRect(UIGraphicsGetCurrentContext(),_imageView.frame);
    
}


@end
