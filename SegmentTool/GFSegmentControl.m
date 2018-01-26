//
//  SegmentControl.m
//  products
//
//  Created by xsd on 2017/12/13.
//  Copyright © 2017年 com.GF. All rights reserved.
//

#import "GFSegmentControl.h"

#define basicTag 100

@interface SegmentControl()

@property (nonatomic, strong) NSMutableArray *segmentArray;
@property (nonatomic, strong) SegmentCell *lastCell;

@end

@implementation SegmentControl

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.showsVerticalScrollIndicator = NO;
        self.showsHorizontalScrollIndicator = NO;
    }
    return self;
}

- (void)setTitleArray:(NSArray *)titleArray {
    
    _titleArray = titleArray;
    CGFloat autoX = 0.0;
    CGFloat height = self.frame.size.height;
    
    for (int i = 0; i < titleArray.count; i ++) {
        
        SegmentCell *cell = [SegmentCell buttonWithType:UIButtonTypeCustom];//
        
        [cell initWithOriginX:autoX title:titleArray[i] font:self.segmentFont height:height defaultColor:self.defaultColor selectColor:self.hilightColor];
        cell.tag = basicTag + i;
        cell.width = _segmentWidth;
        [cell addTarget:self action:@selector(indexAction:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:cell];
        autoX += cell.frame.size.width;
        [self.segmentArray addObject:cell];
    }
    
    CGSize size = self.frame.size;
    size.width = CGRectGetMaxX([[self.segmentArray lastObject] frame]);
    self.contentSize = size;
}

- (CGFloat)getIndexButtonOriginX:(int)index {
    
    UIButton *button = self.segmentArray[index];
    return CGRectGetMinX(button.frame);
}

- (CGFloat)getWidthButtonAtIndex:(int)index {
    UIButton *button = self.segmentArray[index];
    return CGRectGetWidth(button.frame);
}


- (void)indexAction:(UIButton *)sender {
    if (sender.selected) {
        return;
    }
    self.lastCell.selected = NO;
   
    sender.selected = !sender.selected;
    
    self.lastCell = (SegmentCell *)sender;
    
    CGRect frame = self.lastCell.frame;
    CGFloat targetOptationX = self.contentOffset.x + CGRectGetWidth(self.frame) / 2.;
    //计算中间量
    CGFloat distince = frame.origin.x - targetOptationX;
    
    CGRect targetFrame = self.frame;
    targetFrame.origin.x = self.contentOffset.x;
    targetFrame.origin.x += distince;
    
    [self scrollRectToVisible:targetFrame animated:YES];
    
    if ([self.segDelegate respondsToSelector:@selector(segmentAction:)]) {
        [self.segDelegate segmentAction:(int)sender.tag - basicTag];
    }
}

- (void)setSelectedIndex:(NSInteger)index {
    
    if (self.lastCell) {
        self.lastCell.selected = NO;
    }
   
    [self.lastCell setTitleColor:self.defaultColor forState:UIControlStateNormal];
    [self.lastCell setTitleColor:self.hilightColor forState:UIControlStateSelected];
    
    SegmentCell *button = [self viewWithTag:index + basicTag];
    self.lastCell = button;
    
    [self.lastCell setTitleColor:self.defaultColor forState:UIControlStateNormal];
    [self.lastCell setTitleColor:self.hilightColor forState:UIControlStateSelected];
    
    self.lastCell.selected = YES;
    
    //滚动到中间！
    CGRect frame = self.lastCell.frame;
    CGFloat targetOptationX = self.contentOffset.x + CGRectGetWidth(self.frame) / 2.;
    //计算中间量
    CGFloat distince = frame.origin.x - targetOptationX;
    
    CGRect targetFrame = self.frame;
    targetFrame.origin.x = self.contentOffset.x;
    targetFrame.origin.x += distince;
    
    [self scrollRectToVisible:targetFrame animated:YES];
}

- (void)setIndex:(NSInteger)index color:(UIColor *)color {
   
    SegmentCell *button = [self viewWithTag:index + basicTag];
    button.selected = NO;
    [button setTitleColor:color forState:UIControlStateNormal];
}

#pragma mark - lazy
- (NSMutableArray *)segmentArray {
    
    if (!_segmentArray) {
        _segmentArray = [NSMutableArray array];
    }
    return _segmentArray;
}

@end
