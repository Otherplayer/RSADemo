/*
 * Copyright 2016 HNA EcoTech Group, Inc.
 *
 */

#import <Foundation/Foundation.h>

/**
 * Class designed to hold public and private references within keychain.
 */
@interface KeyPair : NSObject

- (instancetype)initWithPrivateKeyRef:(SecKeyRef)privateKey publicKeyRef:(SecKeyRef)publicKey;

/**
 * @return private key reference within keychain.
 */
- (SecKeyRef)getPrivateKeyRef;

/**
 * @return public key reference within keychain.
 */
- (SecKeyRef)getPublicKeyRef;

@end
