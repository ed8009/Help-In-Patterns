//
//  Memento.m
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "Memento.h"

@implementation Memento

- (id)initWithState:(OriginatorState *)state
{
    self = [super init];
    _localState = [[OriginatorState alloc] init];
    [_localState setIntValue:state.intValue];
    [_localState setStringValue:state.stringValue];
    return self;
}

- (OriginatorState *)getState
{
    return _localState;
}

@end
