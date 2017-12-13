//
//  CentrallProcessor.h
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "Thermometer.h"
#import "ConditioningSystem.h"

@interface CentrallProcessor : NSObject

@property (nonatomic, weak) Thermometer *_thermometer;
@property (nonatomic, weak) ConditioningSystem *_condSystem;

- (void)valueChanged:(SmartHousePart *)aPart;

@end
