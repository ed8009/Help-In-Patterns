//
//  BPAndroidPhoneBuilder.m
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "BPAndroidPhoneBuilder.h"

@implementation BPAndroidPhoneBuilder

- (id)init
{
    self = [super init];
    self._phone = [[AndroidPhone alloc] init];
    return self;
}

- (void)setOSVersion
{
    // you must override
}

- (void)setName
{
    // you must override
}

- (void)setCPUCodeName
{
    // you must override
}

- (void)setRAMSize
{
    // you must override
}

- (void)setOSVersionCode
{
    // you must override
}

- (void)setLauncher
{
    // you must override
}

- (AndroidPhone *)getPhone
{
    return self._phone;
}

@end
