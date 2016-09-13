//
//  ViewController.m
//  HNARSADemo
//
//  Created by __无邪_ on 16/8/31.
//  Copyright © 2016年 __无邪_. All rights reserved.
//

#import "ViewController.h"
#import "RSAEncryptor.h"
#import "KeyUtils.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *pubPath = [[NSBundle mainBundle] pathForResource:@"key.public" ofType:nil];
    NSData *pubData = [NSData dataWithContentsOfFile:pubPath];
    NSString *pubStr = [pubData base64EncodedStringWithOptions:0];
    
    SecKeyRef originalPublicKeyRef = [RSAEncryptor addPublicKey:pubStr];
    SecKeyRef newPublicKeyRef = [RSAEncryptor getPublicKeyRef];
    NSLog(@"%@",originalPublicKeyRef);
    NSLog(@"%@",newPublicKeyRef);
    
    
    
    
    NSString *priPath = [[NSBundle mainBundle] pathForResource:@"key.private" ofType:nil];
    NSData *priData = [NSData dataWithContentsOfFile:priPath];
    NSString *priStr = [priData base64EncodedStringWithOptions:0];
    
    
    SecKeyRef originalPrivateRef = [RSAEncryptor addPrivateKey:priStr];
    SecKeyRef newPrivateKeyRef = [RSAEncryptor getPrivateKeyRef];
    
    NSLog(@"%@",originalPrivateRef);
    NSLog(@"%@",newPrivateKeyRef);
    
    
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



















@end
