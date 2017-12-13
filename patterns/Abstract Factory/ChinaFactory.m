//
//  ChinaFactory.m
//  patterns
//
//  Created by Eduard Mitasov on 12.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "ChinaFactory.h"
#import "ChinaPhone.h"

@implementation ChinaFactory

- (GenericIPhone *)getIPhone
{
    ChinaPhone *phone = [[ChinaPhone alloc] init];
    return phone;
}

@end
