//
//  SmartHousePart.m
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "SmartHousePart.h"
#import "CentrallProcessor.h"

@implementation SmartHousePart

- (id)initWithCore:(CentrallProcessor *)processor
{
    self = [super init];
    _processor = processor;
    return self;
}

- (void)numbersChanged
{
    [_processor valueChanged:self];
}

@end
