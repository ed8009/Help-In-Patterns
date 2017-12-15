//
//  Originator.h
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "OriginatorState.h"

@interface Originator : NSObject
{
    @private OriginatorState *_localState;
}

- (void)changeValues;
- (OriginatorState *)getState;
- (void)setState:(OriginatorState *)oldState;

@end
