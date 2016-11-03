//
//  ViewController.m
//  RSADemo
//
//  Created by 马扬 on 2016/11/3.
//  Copyright © 2016年 马扬. All rights reserved.
//

#import "ViewController.h"
#import "RSAEncryptor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //原始数据
    NSString * originalstring = @"这是一段将要加密的字符串";
    //使用公钥私钥加密解密
    NSString * publicKeyPath = [[NSBundle mainBundle]pathForResource:@"public_key.der" ofType:nil];
    NSString * privateKeyPath = [[NSBundle mainBundle]pathForResource:@"private_key.p12" ofType:nil];
    
    NSString * encryptStr = [RSAEncryptor encryptString:originalstring publicKeyWithContentsOfFile:publicKeyPath];
    NSLog(@"%@",encryptStr);
    NSLog(@"%@",[RSAEncryptor decryptString:encryptStr privateKeyWithContentsOfFile:privateKeyPath password:@"123456"]);
    
    
    
    

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
