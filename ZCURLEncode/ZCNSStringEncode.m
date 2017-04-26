//
//  ZCNSStringEncode.m
//  ZCURLEncode
//
//  Created by 周策 on 2017/4/7.
//  Copyright © 2017年 cece. All rights reserved.
//

#import "ZCNSStringEncode.h"

@implementation ZCNSStringEncode

/*!
 @method
 @abstract   对字符串中指定字符进行编码
 @discussion 对系统方法stringByAddingPercentEncodingWithAllowedCharacters的封装
 @param      oriStr 准备生成url的字符串  needEncodeCharacters:指定编码的字符集合
 */
+ (NSString *)customEncodeStr:(NSString *)oriStr needEncodeCharacters:(NSString *)needEncodeCharacters {
    
    if (needEncodeCharacters && [needEncodeCharacters isKindOfClass:[NSString class]] && needEncodeCharacters.length > 0 && oriStr && [oriStr isKindOfClass:[NSString class]] && oriStr.length > 0) {
        
        NSMutableCharacterSet *muSet = [NSMutableCharacterSet characterSetWithCharactersInString:needEncodeCharacters];
        [muSet invert];
        oriStr = [oriStr stringByAddingPercentEncodingWithAllowedCharacters:muSet];
    }
    
    return oriStr;
}

@end
