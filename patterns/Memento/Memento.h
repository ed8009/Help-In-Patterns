//
//  Memento.h
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "OriginatorState.h"

@interface Memento : NSObject
{
    @private OriginatorState *_localState;
}

- (id)initWithState:(OriginatorState *)state;
- (OriginatorState*)getState;

@end
