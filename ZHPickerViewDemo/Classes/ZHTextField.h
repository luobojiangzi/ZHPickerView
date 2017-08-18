//
//  ZHTextField.h
//  ZHPickerViewDemo
//
//  Created by 智慧 on 2017/8/11.
//  Copyright © 2017年 renb. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ZHTapAcitonBlock)();
typedef void(^ZHEndEditBlock)(NSString *text);

@interface ZHTextField : UITextField
/** textField 的点击回调 */
@property (nonatomic, copy) ZHTapAcitonBlock tapAcitonBlock;
/** textField 结束编辑的回调 */
@property (nonatomic, copy) ZHEndEditBlock endEditBlock;

@end
