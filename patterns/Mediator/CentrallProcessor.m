//
//  CentrallProcessor.m
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "CentrallProcessor.h"

@implementation CentrallProcessor

- (void)valueChanged:(SmartHousePart *)aPart
{
    NSLog(@"Value changed! We need to do smth!");
    if ( [aPart isKindOfClass:[Thermometer class]])
    {
        NSLog(@"Oh, the change is temperature");
        [self._condSystem startCondition];
    }
}

@end
