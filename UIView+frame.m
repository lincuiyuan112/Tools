//
//  UIView+frame.m
//  baisibudejie
//
//  Created by LCY on 16/7/3.
//  Copyright © 2016年 lincuiyuan. All rights reserved.
//

#import "UIView+frame.h"

@implementation UIView (frame)

-(CGFloat)LCY_x
{
    return self.frame.origin.x;
}
-(void)setLCY_x:(CGFloat)LCY_x
{
    CGRect frame = self.frame;
    frame.origin.x = LCY_x;
    self.frame = frame;
}
-(CGFloat)LCY_y
{
    return self.frame.origin.y;
}
-(void)setLCY_y:(CGFloat)LCY_y
{
    CGRect frame = self.frame;
    frame.origin.y = LCY_y;
    self.frame = frame;
}
-(CGFloat)LCY_width
{
    return self.frame.size.width;
}
-(void)setLCY_width:(CGFloat)LCY_width
{
    CGRect frame = self.frame;
    frame.size.width = LCY_width;
    self.frame = frame;
}

- (CGFloat)LCY_height
{
    return self.frame.size.height;
}

-(void)setLCY_height:(CGFloat)LCY_height
{
    CGRect frame = self.frame;
    frame.size.height = LCY_height;
    self.frame = frame;
}

-(void)setLCY_centerX:(CGFloat)LCY_centerX
{
    CGPoint center = self.center;
    center.x = LCY_centerX;
    self.center = center;
}

-(CGFloat)LCY_centerX
{
    return self.center.x;
}

-(void)setLCY_centerY:(CGFloat)LCY_centerY
{
    CGPoint center = self.center;
    center.y = LCY_centerY;
    self.center = center;
}

-(CGFloat)LCY_centerY
{
    return self.center.y;
}
@end
