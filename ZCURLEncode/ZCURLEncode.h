//
//  ZCURLEncode.h
//  ZCURLEncode
//
//  Created by 周策 on 2017/4/7.
//  Copyright © 2017年 cece. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZCURLEncode : NSObject

/*!
 @method
 @abstract   为了尽可能生成一个非nil的url，对iOS中需要进行编码的字段进行默认处理。这个处理，主要目的是为了能够成功生成NSURL对象，并不是符合某个URL标准。
 @discussion 对于一个传入的字符串，如果这个字符串本身可能生成不了一个NSURL对象，调用这个方法，方法内，会尽可能的生成一个NSURL对象。主要是对一些特殊字符进行编码。如：对于中文进行编码、对于# |\"`%^{}\\<>进行编码。
     例如：传入aa.aa，调用这个方法，返回的肯定是个nil
          传入http://www.aa.com/a?cc=b#12  调用这个方法，可以成功生成一个url
 @param      oriStr 准备生成url的字符串
 */
+ (NSURL *)generateUrl:(NSString *)oriStr;

@end
