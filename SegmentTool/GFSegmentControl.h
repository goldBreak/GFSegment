//
//  SegmentControl.h
//  products
//
//  Created by xsd on 2017/12/13.
//  Copyright © 2017年 com.GF. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GFSegmentCell.h"

@protocol segmentDidAct<NSObject>

- (void)segmentAction:(int)tag;

@end

@interface SegmentControl : UIScrollView

/* 字体默认颜色 !*/
@property (nonatomic, strong) UIColor *defaultColor;

/* 字体高亮颜色 !*/
@property (nonatomic, strong) UIColor *hilightColor;

/* 颜色的字体 !*/
@property (nonatomic, strong) UIFont *segmentFont;

/* 选中是字体的大小 !*/
@property (nonatomic, strong) UIFont *hightLightFont;

/* 宽度~ !*/
@property (nonatomic, assign) CGFloat blankSpace;

/* 标题栏数组 !*/
@property (nonatomic, strong) NSArray *titleArray;

/* segDelegate !*/
@property (nonatomic, weak)   id<segmentDidAct> segDelegate;

/* cell宽度 !*/
@property (nonatomic, assign) CGFloat segmentWidth;

/* 获取第N个button的 !*/
- (CGFloat)getIndexButtonOriginX:(int)index;

/* 获取第i个button的width !*/
- (CGFloat)getWidthButtonAtIndex:(int)index;

- (void)setSelectedIndex:(NSInteger)index;

- (void)setIndex:(NSInteger)index color:(UIColor *)color;

@end
