//
//  Thermometer.m
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "Thermometer.h"

@implementation Thermometer

- (void)temperatureChanged:(int)temperature
{
    self.temperature = temperature;
    [self numbersChanged];
}

@end
