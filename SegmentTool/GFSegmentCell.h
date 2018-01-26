//
//  SegmentCell.h
//  products
//
//  Created by xsd on 2017/12/13.
//  Copyright © 2017年 com.GF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SegmentCell : UIButton

@property (nonatomic, assign) CGFloat width;

- (void)initWithOriginX:(CGFloat)originX
                          title:(NSString *)titleStr
                           font:(UIFont *)font
                         height:(CGFloat)height
                   defaultColor:(UIColor *)defaultColor
                    selectColor:(UIColor *)selectedColor;



@end
