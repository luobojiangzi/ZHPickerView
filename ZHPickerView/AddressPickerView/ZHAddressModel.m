//
//  ZHAddressModel.m
//  ZHPickerViewDemo
//
//  Created by 智慧 on 2017/8/11.
//  Copyright © 2017年 renb. All rights reserved.
//

#import "ZHAddressModel.h"

@implementation ZHProvinceModel

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{
             @"name": @"v",
             @"city": @"n"
             };
}

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
             @"city": [ZHCityModel class]
             };
}

@end


@implementation ZHCityModel

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{
             @"name": @"v",
             @"town": @"n"
             };
}

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
             @"town": [ZHTownModel class]
             };
}

@end


@implementation ZHTownModel

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{
             @"name": @"v"
             };
}

@end
