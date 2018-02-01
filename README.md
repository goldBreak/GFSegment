# GFSengment

## 使用方式
```
    self.senControler.childVCArray = self.childVCs;
    self.senControler.bigViewController = self;
    self.senControler.defaultColor = [UIColor grayColor];
    self.senControler.hilightColor = [UIColor redColor];
    self.senControler.segmentFont = [UIFont systemFontOfSize:14.];
    self.senControler.hightLightFont = [UIFont systemFontOfSize:14.0];
    self.senControler.shaderLineColor = [UIColor blackColor];
    self.senControler.blankSpace = 10.0;
    self.senControler.shaderLineHight = 4.;
    self.senControler.titleArray = titleArray;
    
    [self.senControler initUI];
```
* 设置子视图，childVCArray
* 设置父视图，bigViewController
* 设置显示字体的默认颜色和高亮颜色
* 设置字体
* 设置所有的文字，titleArray，暂时只支持文字标题
* 文字间隔两种格式，1.自动匹配，这个时候什么都不用设置
                  2.手动设置 ```self.senControler.segmentWidth = 10;``` 这种是自己设置宽度
                  ```self.senControler.isNonautomaticWidth = YES;``` 这种是根据屏幕宽度均分
* 最后调用```[self.senControler initUI];```初始化UI就可以了

## 效果图
![](https://github.com/goldBreak/UISources/blob/master/iOS_UI_flow_Spe.gif?raw=true) 
