//
//  SecondCommand.h
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "BaseCommand.h"

@interface SecondCommand : BaseCommand
{
    @private int _originalNumber;
    @private int _currentNumber;
}

- (id)initWithArgs:(int)aNumber;
- (void)printNumber;

@end
