//
//  BPAndroidPhoneBuilder.h
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "AndroidPhone.h"

@interface BPAndroidPhoneBuilder : NSObject

@property (nonatomic, strong) AndroidPhone* _phone;

- (void)setOSVersion;
- (void)setName;
- (void)setCPUCodeName;
- (void)setRAMSize;
- (void)setOSVersionCode;
- (void)setLauncher;

- (AndroidPhone *)getPhone;

@end
