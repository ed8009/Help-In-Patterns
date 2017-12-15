//
//  Caretaker.m
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "Caretaker.h"

@implementation Caretaker

- (void)changeValue
{
    if (!_originator)
    {
        _originator = [[Originator alloc] init];
    }
    
    [_originator changeValues];
}

- (void)saveState
{
    _memento = [[Memento alloc] initWithState:[_originator getState]];
    NSLog(@"Saved state. State int = %i and string = %@",[[_memento getState] intValue ], [[_memento getState] stringValue ]);
}
- (void)loadState
{
    [_originator setState:[_memento getState]];
}

@end
