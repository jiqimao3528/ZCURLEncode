//
//  ViewController.m
//  ZCURLEncode
//
//  Created by 周策 on 2017/4/7.
//  Copyright © 2017年 cece. All rights reserved.
//

#import "ViewController.h"
#import "ZCURLEncode.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *str = @"https://test1-icp-core.PINGAN.com.cn:23443/ebusiness/newUpingan/index.html#index?++userId=testAutohome&systemId=0031&mediaSource=ICP-AUTOHOME-APP:/?[]@!$&'()*+,;=.\"#| ~`%^_{}\\<>《》abcdefg我的";
    NSURL *url1 = [NSURL URLWithString:str];
    //:/?#[]@!$&'()*+,;=.
    //;,/?:@&=+$-_.!~*'()#我 |
//    NSString *query = [url query];
//    NSString *password = [url password]
//    password
    
//    str = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,(CFStringRef)str,NULL,CFSTR(":/?#[]@!$&'()*+,;=."),kCFStringEncodingUTF8));
//    NSURL *url = [NSURL URLWithString:str];
//    NSCharacterSet *set = [NSCharacterSet characterSetWithCharactersInString:@":"];
//    NSMutableCharacterSet *muSet = [NSMutableCharacterSet characterSetWithCharactersInString:@"# |\"`%^{}\\<>"];
//    [muSet invert];
//    str = [str stringByAddingPercentEncodingWithAllowedCharacters:muSet];
//    NSURL *url = [NSURL URLWithString:str];
    NSURL *url = [ZCURLEncode generateUrl:str];
    NSLog(@"url = %@",[url absoluteString]);
    NSString *decodeStr = [ZCURLEncode decodeURL:url];
    NSLog(@"decodeStr = %@",decodeStr);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
