//
//  EuropeanNotebookCharger.h
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "Charger.h"
#import "EuropeanNotebookChargerDelegate.h"

@interface EuropeanNotebookCharger : Charger <EuropeanNotebookChargerDelegate>
{
    @private id<EuropeanNotebookChargerDelegate> _delegate;
}

@property (nonatomic, strong) id<EuropeanNotebookChargerDelegate> delegate;

@end
