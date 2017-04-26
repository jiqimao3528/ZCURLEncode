//
//  ZCURLEncode.m
//  ZCURLEncode
//
//  Created by 周策 on 2017/4/7.
//  Copyright © 2017年 cece. All rights reserved.
//

#import "ZCURLEncode.h"
#import "ZCNSStringEncode.h"

@implementation ZCURLEncode

+ (NSURL *)generateUrl:(NSString *)oriStr {
    
    if (oriStr && [oriStr isKindOfClass:[NSString class]] && oriStr.length > 0) {
        
        NSString *encodeStr = [ZCNSStringEncode customEncodeStr:oriStr needEncodeCharacters:@"# |\"`%^{}\\<>"];
        return [NSURL URLWithString:encodeStr];
    }else {
        
        return [NSURL URLWithString:oriStr];
    }
}

@end
