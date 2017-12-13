//
//  Thermometer.h
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "SmartHousePart.h"

@interface Thermometer: SmartHousePart

@property (nonatomic) int temperature;

- (void)temperatureChanged:(int)temperature;

@end
