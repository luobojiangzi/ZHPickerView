//
//  ZHAddressPickerView.h
//  ZHPickerViewDemo
//
//  Created by 智慧 on 2017/8/11.
//  Copyright © 2017年 renb. All rights reserved.
//
//  最新代码下载地址：https://github.com/borenfocus/ZHPickerView

#import "BaseView.h"

typedef void(^ZHAddressResultBlock)(NSArray *selectAddressArr);

@interface ZHAddressPickerView : BaseView
/**
 *  显示地址选择器
 *
 *  @param defaultSelectedArr       默认选中的值(传数组，元素为对应的索引值。如：@[@10, @1, @1])
 *  @param isAutoSelect             是否自动选择，即选择完(滚动完)执行结果回调，传选择的结果值
 *  @param resultBlock              选择后的回调
 *
 */
+ (void)showAddressPickerWithDefaultSelected:(NSArray *)defaultSelectedArr isAutoSelect:(BOOL)isAutoSelect resultBlock:(ZHAddressResultBlock)resultBlock;

@end
