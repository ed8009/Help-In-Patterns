//
//  FactorySalesMan.h
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "BPAndroidPhoneBuilder.h"

@interface FactorySalesMan : NSObject

@property (nonatomic, strong) BPAndroidPhoneBuilder *_builder;

- (void)setBulider:(BPAndroidPhoneBuilder *)aBuilder;
- (AndroidPhone *)getPhone;
- (void)constructPhone;

@end
