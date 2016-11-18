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
    
    {//绘制一个矩形.填充指定的颜色
        [[UIColor cz_colorWithHex:0x24282e] setFill];
        UIBezierPath *path = [UIBezierPath bezierPathWithRect:rect];
        [path fill];
        
    }
    {
        //绘制中间的直线
        UIBezierPath *path = [UIBezierPath bezierPath];
        //区分左右快门
        if (_imageView.frame.origin.x > 0) {
            //左侧画线
            [path moveToPoint:CGPointMake(rect.size.width, 0)];
            [path addLineToPoint:CGPointMake(rect.size.width, rect.size.height)];
        } else{
            //右侧画线
            [path moveToPoint:CGPointMake(0, 0)];
            [path addLineToPoint:CGPointMake(0, rect.size.height)];
        }
        [[UIColor cz_colorWithHex:0x1a1a1a] setStroke];
        [path stroke];
    }
    CGContextClearRect(UIGraphicsGetCurrentContext(),CGRectInset(_imageView.frame, 1, 1));
}


@end
