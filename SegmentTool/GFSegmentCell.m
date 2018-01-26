//
//  SegmentCell.m
//  products
//
//  Created by xsd on 2017/12/13.
//  Copyright © 2017年 com.GF. All rights reserved.
//

#import "GFSegmentCell.h"

/* 文字间隔~ !*/
#define TextPadding 5

@interface SegmentCell()

@end

@implementation SegmentCell
- (void)initWithOriginX:(CGFloat)originX
                          title:(NSString *)titleStr
                           font:(UIFont *)font
                         height:(CGFloat)height
                   defaultColor:(UIColor *)defaultColor
                    selectColor:(UIColor *)selectedColor {
    
    CGSize size = [titleStr sizeWithAttributes:@{NSFontAttributeName:font}];

    _width = size.width + TextPadding * 2;
    
    self.frame = CGRectMake(originX, 0, _width, height);
    self.titleLabel.font = font;
    [self setTitle:titleStr forState:UIControlStateNormal];
    [self setTitleColor:defaultColor forState:UIControlStateNormal];
    [self setTitleColor:selectedColor forState:UIControlStateSelected];
    [self setTitleColor:selectedColor forState:UIControlStateHighlighted];
}


- (void)setWidth:(CGFloat)width {
    
    if (width < CGRectGetWidth(self.frame)) {
        return;
    }
    _width = width;
    
    CGRect frame = self.frame;
    frame.size.width = _width;
    self.frame = frame;
}


@end
