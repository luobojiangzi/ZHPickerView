# 框架介绍
ZHPickerView是iOS的选择器组件，主要包括：日期选择器、时间选择器、地址选择器、自定义字符串选择器。

# 效果演示

查看并运行 `ZHPickerViewDemo.xcodeproj`

# 安装

### CocoaPods

1. 在 Podfile 中添加 `pod 'ZHPickerView'`。
2. 执行 `pod install` 或 `pod update`。
3. 导入头文件 ` #import <ZHPickerView.h>`。

### 手动导入

1. 将与 `README.md` 同级目录下的 `ZHPickerView` 文件夹拽入项目中
2. 导入头文件 ` #import "ZHPickerView.h"`。

# 系统要求

- iOS 8.0+
- ARC

# 使用

- 时间选择器：`ZHDatePickerView`

  ```objective-c
  /**
   *  显示时间选择器
   *
   *  @param title            标题
   *  @param type             类型（时间、日期、日期和时间、倒计时）
   *  @param defaultSelValue  默认选中的时间（为空，默认选中现在的时间）
   *  @param minDateStr       最小时间（如：2015-08-28 00:00:00），可为空
   *  @param maxDateStr       最大时间（如：2018-05-05 00:00:00），可为空
   *  @param isAutoSelect     是否自动选择，即选择完(滚动完)执行结果回调，传选择的结果值
   *  @param resultBlock      选择结果的回调
   *
   */
  + (void)showDatePickerWithTitle:(NSString *)title dateType:(UIDatePickerMode)type defaultSelValue:(NSString *)defaultSelValue minDateStr:(NSString *)minDateStr maxDateStr:(NSString *)maxDateStr isAutoSelect:(BOOL)isAutoSelect resultBlock:(ZHDateResultBlock)resultBlock;
  ```

  方法使用：

  ```objective-c
  [ZHDatePickerView showDatePickerWithTitle:@"出生年月" dateType:UIDatePickerModeDate defaultSelValue:weakSelf.birthdayTF.text minDateStr:@"" maxDateStr:[NSDate currentDateString] isAutoSelect:YES resultBlock:^(NSString *selectValue) {
  	weakSelf.birthdayTF.text = selectValue;
  }];
  ```

  效果图：

  ![日期选择器](https://github.com/borenfocus/ZHPickerView/blob/master/ZHPickerViewDemo/%E5%87%BA%E7%94%9F%E5%B9%B4%E6%9C%88.gif)

- 地址选择器：`ZHAddressPickerView`

  ```objective-c
  /**
   *  显示地址选择器
   *
   *  @param defaultSelectedArr       默认选中的值(传数组，元素为对应的索引值。如：@[@10, @1, @1])
   *  @param isAutoSelect             是否自动选择，即选择完(滚动完)执行结果回调，传选择的结果值
   *  @param resultBlock              选择后的回调
   *
   */
  + (void)showAddressPickerWithDefaultSelected:(NSArray *)defaultSelectedArr isAutoSelect:(BOOL)isAutoSelect resultBlock:(ZHAddressResultBlock)resultBlock;
  ```

  方法使用：

  ```objective-c
  [ZHAddressPickerView showAddressPickerWithDefaultSelected:@[@10, @0, @3] isAutoSelect:YES resultBlock:^(NSArray *selectAddressArr) {
  	weakSelf.addressTF.text = [NSString stringWithFormat:@"%@%@%@", selectAddressArr[0], selectAddressArr[1], selectAddressArr[2]];
  }];
  ```

  效果图：

  ![地址选择器](https://github.com/borenfocus/ZHPickerView/blob/master/ZHPickerViewDemo/%E5%9C%B0%E5%9D%80.gif)

- 自定义字符串选择器：`ZHStringPickerView`

  ```objective-c
  /**
   *  显示自定义字符串选择器
   *
   *  @param title            标题
   *  @param dataSource       数组数据源
   *  @param defaultSelValue  默认选中的行(单列传字符串，多列传一维数组)
   *  @param isAutoSelect     是否自动选择，即选择完(滚动完)执行结果回调，传选择的结果值
   *  @param resultBlock      选择后的回调
   *
   */
  + (void)showStringPickerWithTitle:(NSString *)title
                         dataSource:(NSArray *)dataSource
                    defaultSelValue:(id)defaultSelValue
                       isAutoSelect:(BOOL)isAutoSelect
                        resultBlock:(ZHStringResultBlock)resultBlock;
                        
  /**
   *  显示自定义字符串选择器
   *
   *  @param title            标题
   *  @param plistName        plist文件名
   *  @param defaultSelValue  默认选中的行(单列传字符串，多列传一维数组)
   *  @param isAutoSelect     是否自动选择，即选择完(滚动完)执行结果回调，传选择的结果值
   *  @param resultBlock      选择后的回调
   *
   */
  + (void)showStringPickerWithTitle:(NSString *)title
                          plistName:(NSString *)plistName
                    defaultSelValue:(id)defaultSelValue
                       isAutoSelect:(BOOL)isAutoSelect
                        resultBlock:(ZHStringResultBlock)resultBlock;
  ```

  方法使用：

  ```objective-c
  // 自定义单列字符串
  [ZHStringPickerView showStringPickerWithTitle:@"学历" dataSource:@[@"大专以下", @"大专", @"本科", @"硕士", @"博士", @"博士后"] defaultSelValue:@"本科" isAutoSelect:YES resultBlock:^(id selectValue) {
  	weakSelf.educationTF.text = selectValue;
  }];
  // 自定义多列字符串
  NSArray *dataSources = @[@[@"第1周", @"第2周", @"第3周", @"第4周", @"第5周", @"第6周", @"第7周"], @[@"第1天", @"第2天", @"第3天", @"第4天", @"第5天", @"第6天", @"第7天"]];
  [ZHStringPickerView showStringPickerWithTitle:@"自定义多列字符串" dataSource:dataSources defaultSelValue:@[@"第3周", @"第3天"] isAutoSelect:YES resultBlock:^(id selectValue) {
  	weakSelf.otherTF.text = [NSString stringWithFormat:@"%@，%@", selectValue[0], selectValue[1]];
  }];
  ```

  效果图：

  | ![自定义单列字符串](https://github.com/borenfocus/ZHPickerView/blob/master/ZHPickerViewDemo/%E8%87%AA%E5%AE%9A%E4%B9%89%E5%8D%95%E5%88%97%E5%AD%97%E7%AC%A6%E4%B8%B2.gif) | ![自定义多列字符串](https://github.com/borenfocus/ZHPickerView/blob/master/ZHPickerViewDemo/%E8%87%AA%E5%AE%9A%E4%B9%89%E5%A4%9A%E5%88%97%E5%AD%97%E7%AC%A6%E4%B8%B2.gif) |
  | :--------------------------------------: | :--------------------------------------: |
  |                 自定义单列字符串                 |                 自定义多列字符串                 |

# 许可证

ZHPickerView 使用 MIT 许可证，详情见 LICENSE 文件。
