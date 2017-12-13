//
//  StandardSubject.h
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "StandardObserver.h"

@protocol StandardSubject <NSObject>

- (void)addObserver:(id<StandardObserver>)observer;
- (void)removeObserver:(id<StandardObserver>)observer;
- (void)notifyObjects;

@end
