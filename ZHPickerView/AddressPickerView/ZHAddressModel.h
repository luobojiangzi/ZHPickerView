//
//  ZHAddressModel.h
//  ZHPickerViewDemo
//
//  Created by 智慧 on 2017/8/11.
//  Copyright © 2017年 renb. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ZHProvinceModel, ZHCityModel, ZHTownModel;

@interface ZHProvinceModel : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSArray *city;

@end

@interface ZHCityModel : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSArray *town;

@end


@interface ZHTownModel : NSObject

@property (nonatomic, copy) NSString *name;

@end
