//
//  UIColor+UIColor.m
//  products
//
//  Created by xsd on 2017/12/20.
//  Copyright © 2017年 com.GF. All rights reserved.
//

#import "UIColor+GFUIColor.h"

@implementation UIColor (UIColor)


- (CGColorSpaceModel)colorSpaceModel {
    CGColorSpaceRef spacef = CGColorGetColorSpace(self.CGColor);
    return  CGColorSpaceGetModel(spacef);
}

- (CGFloat) red {
    const CGFloat *c = CGColorGetComponents(self.CGColor);
    return c[0];
}

- (CGFloat) green {
    const CGFloat *c = CGColorGetComponents(self.CGColor);
    if ([self colorSpaceModel] == kCGColorSpaceModelMonochrome) return c[0];
    return c[1];
}

- (CGFloat) blue {
    const CGFloat *c = CGColorGetComponents(self.CGColor);
    if ([self colorSpaceModel] == kCGColorSpaceModelMonochrome) return c[0];
    return c[2];
}

- (CGFloat) alpha {
    const CGFloat *c = CGColorGetComponents(self.CGColor);
    return c[CGColorGetNumberOfComponents(self.CGColor)-1];
}


@end
