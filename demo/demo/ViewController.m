//
//  ViewController.m
//  demo
//
//  Created by xsd on 2018/1/26.
//  Copyright © 2018年 com.GF. All rights reserved.
//

#import "ViewController.h"
#import "SubViewController.h"
#import "GFSegController.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *childVCs;
@property (nonatomic, strong) GFSegController *senControler;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setUI];
}



- (void)setUI {
    self.childVCs = [NSMutableArray array];
    for (int i = 0; i < 11; i ++) {
        SubViewController *subVC = [[SubViewController alloc] init];
        [self.childVCs addObject:subVC];
    }
    
    NSArray *titleArray = @[@"测试一",
                            @"测试二十",
                            @"测试三十五",
                            @"测试四",
                            @"测试五",
                            @"测试六十九",
                            @"测试七",
                            @"测试八？？？",
                            @"测试九六",
                            @"测试十",
                            @"测试十一"
                            ];
    
    self.senControler.childVCArray = self.childVCs;
    self.senControler.bigViewController = self;
    self.senControler.defaultColor = [UIColor grayColor];
    self.senControler.hilightColor = [UIColor redColor];
    self.senControler.segmentFont = [UIFont systemFontOfSize:14.];
    self.senControler.hightLightFont = [UIFont systemFontOfSize:14.0];
    self.senControler.shaderLineColor = [UIColor blackColor];
    self.senControler.blankSpace = 10.0;
    self.senControler.shaderLineHight = 1.;
    self.senControler.titleArray = titleArray;
    
    [self.senControler initUI];
}

#pragma mark - senControler
- (GFSegController *)senControler {
    if (!_senControler) {
        _senControler = [[GFSegController alloc] init];
        _senControler.frame = CGRectMake(0, 64., self.view.frame.size.width, 50.);
    }
    return _senControler;
}
@end
