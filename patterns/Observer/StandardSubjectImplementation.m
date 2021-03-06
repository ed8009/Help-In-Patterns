//
//  StandardSubjectImplementation.m
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "StandardSubjectImplementation.h"

@implementation StandardSubjectImplementation

- (NSMutableSet *)observerCollection
{
    if (_observerCollection == nil)
    {
        _observerCollection = [[NSMutableSet alloc] init];
    }
    return _observerCollection;
}

- (void)addObserver:(id<StandardObserver>)observer
{
    [self.observerCollection addObject:observer];
}

- (void)removeObserver:(id<StandardObserver>)observer
{
    [self.observerCollection removeObject:observer];
}

- (void)notifyObjects
{
    for (id<StandardObserver> observer in self.observerCollection)
    {
        [observer valueChanged: _valueName newValue:_newValue];
    }
}

- (void)changeValue:(NSString *)valueName andValue:(NSString *)newValue
{
    _newValue = newValue;
    _valueName = valueName;
    [self notifyObjects];
}

@end
