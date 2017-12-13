//
//  LowPricePhoneBuilder.m
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "LowPricePhoneBuilder.h"

@implementation LowPricePhoneBuilder

- (void)setOSVersion
{
    self._phone.osVersion = @"Android 2.3";
}

- (void)setName
{
    self._phone.name = @"Low price phone!";
}

- (void)setCPUCodeName
{
    self._phone.cpuCodeName = @"Some shitty CPU";
}

- (void)setRAMSize
{
    self._phone.RAMsize = [[NSNumber alloc] initWithInt:256];
}

- (void)setOSVersionCode
{
    self._phone.osVersionCode = [[NSNumber alloc] initWithFloat:3.0f];
}

- (void)setLauncher
{
    self._phone.launcher = @"Hia Tsung!";
}

@end
