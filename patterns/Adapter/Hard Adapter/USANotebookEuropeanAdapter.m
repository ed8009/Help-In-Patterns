//
//  USANotebookEuropeanAdapter.m
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "USANotebookEuropeanAdapter.h"
#import "EuropeanNotebookCharger.h"

@implementation USANotebookEuropeanAdapter

- (id)initWithUSANotebookCharger:(USANotebookCharger *)charger
{
    self = [super init];
    self.usaCharger = charger;
    return self;
}

- (void)chargetNotebookRoundHoles:(Charger *)charger
{
    [self.usaCharger chargeNotebookRectHoles:charger];
}

- (void)charge
{
    EuropeanNotebookCharger *euroCharge = [[EuropeanNotebookCharger alloc] init];
    euroCharge.delegate = self;
    [euroCharge charge];
}

@end
