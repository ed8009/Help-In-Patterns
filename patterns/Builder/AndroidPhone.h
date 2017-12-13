//
//  AndroidPhone.h
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AndroidPhone : NSObject

@property (nonatomic, weak) NSString *osVersion;
@property (nonatomic, weak) NSString *name;
@property (nonatomic, weak) NSString *cpuCodeName;
@property (nonatomic, strong) NSNumber *RAMsize;
@property (nonatomic, strong) NSNumber *osVersionCode;
@property (nonatomic, weak) NSString *launcher;

@end
