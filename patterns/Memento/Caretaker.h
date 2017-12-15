//
//  Caretaker.h
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "Originator.h"
#import "Memento.h"

@interface Caretaker : NSObject
{
    @private Originator *_originator;
    @private Memento *_memento;
}

- (void)changeValue;
- (void)saveState;
- (void)loadState;

@end
