/*
 * Copyright 2016 HNA EcoTech Group, Inc.
 *
 */

#import "KeyPair.h"

@interface KeyPair ()

@property (nonatomic) SecKeyRef privateKey;
@property (nonatomic) SecKeyRef publicKey;

@end

@implementation KeyPair

- (instancetype)initWithPrivateKeyRef:(SecKeyRef)privateKey publicKeyRef:(SecKeyRef)publicKey {
    self = [super init];
    if (self) {
        self.privateKey = privateKey;
        self.publicKey = publicKey;
    }
    return self;
}

- (SecKeyRef)getPrivateKeyRef {
    return self.privateKey;
}

- (SecKeyRef)getPublicKeyRef {
    return self.publicKey;
}

@end
