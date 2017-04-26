//
//  ZCNSStringEncode.h
//  ZCURLEncode
//
//  Created by 周策 on 2017/4/7.
//  Copyright © 2017年 cece. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZCNSStringEncode : NSObject

/*!
 @method
 @abstract   对字符串中指定字符进行编码
 @discussion 对系统方法stringByAddingPercentEncodingWithAllowedCharacters的封装
 @param      oriStr 准备生成url的字符串  needEncodeCharacters:指定编码的字符集合
 */
+ (NSString *)customEncodeStr:(NSString *)oriStr needEncodeCharacters:(NSString *)needEncodeCharacters;

@end
