//
//  SubViewController.m
//  products
//
//  Created by xsd on 2017/12/8.
//  Copyright © 2017年 com.GF. All rights reserved.
//

#import "SubViewController.h"

@interface SubViewController ()

@end

@implementation SubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    int Rcolor = random() % 255;
    int Gcolor = random() % 255;
    int Bcolor = random() % 255;
    
    UIColor *color = [UIColor colorWithRed:Rcolor/255.0 green:Gcolor/255.0 blue:Bcolor/255.0 alpha:1];
    self.view.backgroundColor = color;
}

@end
