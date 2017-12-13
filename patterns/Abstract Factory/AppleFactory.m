//
//  AppleFactory.m
//  patterns
//
//  Created by Eduard Mitasov on 12.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "AppleFactory.h"
#import "AppleIPhone.h"

@implementation AppleFactory

- (GenericIPhone *)getIPhone
{
    AppleIPhone *iphone = [[AppleIPhone alloc] init];
    return iphone;
    
}

@end
