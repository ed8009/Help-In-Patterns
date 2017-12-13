//
//  USANotebookEuropeanAdapter.h
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "Charger.h"
#import "EuropeanNotebookChargerDelegate.h"
#import "USANotebookCharger.h"

@interface USANotebookEuropeanAdapter : Charger <EuropeanNotebookChargerDelegate>

@property (nonatomic, strong) USANotebookCharger *usaCharger;

- (id)initWithUSANotebookCharger:(USANotebookCharger *)charger;
- (void)charge;

@end
