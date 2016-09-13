//
//  RSAEncryptor.h
//  HNARSADemo
//
//  Created by __无邪_ on 16/8/31.
//  Copyright © 2016年 __无邪_. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RSAEncryptor : NSObject



//获取公钥
+ (SecKeyRef)getPublicKeyRefWithContentsOfFile:(NSString *)filePath;

//获取私钥
+ (SecKeyRef)getPrivateKeyRefWithContentsOfFile:(NSString *)filePath password:(NSString*)password;


/**
 *  加密方法
 *
 *  @param str   需要加密的字符串
 *  @param path  '.der'格式的公钥文件路径
 */
+ (NSString *)encryptString:(NSString *)str publicKeyWithContentsOfFile:(NSString *)path;

/**
 *  解密方法
 *
 *  @param str       需要解密的字符串
 *  @param path      '.p12'格式的私钥文件路径
 *  @param password  私钥文件密码
 */
+ (NSString *)decryptString:(NSString *)str privateKeyWithContentsOfFile:(NSString *)path password:(NSString *)password;

/**
 *  加密方法
 *
 *  @param str    需要加密的字符串
 *  @param pubKey 公钥字符串
 */
+ (NSString *)encryptString:(NSString *)str publicKey:(NSString *)pubKey;

/**
 *  解密方法
 *
 *  @param str     需要解密的字符串
 *  @param privKey 私钥字符串
 */
+ (NSString *)decryptString:(NSString *)str privateKey:(NSString *)privKey;

+ (SecKeyRef)addPublicKey:(NSString *)key;
+ (SecKeyRef)addPrivateKey:(NSString *)key;

+ (SecKeyRef)getPublicKeyRef;
+ (SecKeyRef)getPrivateKeyRef;


+ (NSString *)hex:(NSData *)data useLower:(BOOL)isOutputLower;



@end
