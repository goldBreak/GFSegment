//
//  SDDController.h
//  products
//
//  Created by xsd on 2017/12/13.
//  Copyright © 2017年 com.GF. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface GFSegController : NSObject

@property (nonatomic, assign) CGRect frame;

/* 标题栏数组 !*/
@property (nonatomic, strong) NSArray *titleArray;

/* 子视图数组 !*/
@property (nonatomic, strong) NSArray *childVCArray;

/* 父视图 !*/
@property (nonatomic, weak)  UIViewController *bigViewController;

/* 字体默认颜色 !*/
@property (nonatomic, strong) UIColor *defaultColor;

/* 字体高亮颜色 !*/
@property (nonatomic, strong) UIColor *hilightColor;

/* 下面的line !*/
@property (nonatomic, strong) UIView *shaderLine;

/* 下面的line的颜色 !*/
@property (nonatomic, strong) UIColor *shaderLineColor;

/* 下面line的高度 !*/
@property (nonatomic, assign) CGFloat shaderLineHight;

/* 颜色的字体 !*/
@property (nonatomic, strong) UIFont *segmentFont;

/* 选中是字体的大小 !*/
@property (nonatomic, strong) UIFont *hightLightFont;

/* 宽度~ !*/
@property (nonatomic, assign) CGFloat blankSpace;

/* 自动适应宽度？true不自动适应宽度 !*/
@property (nonatomic, assign) BOOL isNonautomaticWidth;

/* 每一个cell的宽度 !*/
@property (nonatomic, assign) CGFloat segmentWidth;

/**
 初始化UI
 */
- (void)initUI;

@end
