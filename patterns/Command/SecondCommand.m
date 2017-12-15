//
//  SecondCommand.m
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "SecondCommand.h"

@implementation SecondCommand

- (id)initWithArgs:(int)aNumber
{
    self = [super init];
    _originalNumber = aNumber;
    _currentNumber = aNumber;
    return self;
}

- (void)execute
{
    _currentNumber++;
    [self printNumber];
}

- (void)undo
{
    if (_currentNumber > _originalNumber)
    {
        _currentNumber--;
    }
    [self printNumber];
}

- (void)printNumber
{
    NSLog(@"current number is %i", _currentNumber);
}

@end
