//
//  FirstCommand.h
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "BaseCommand.h"

@interface FirstCommand : BaseCommand
{
    @private NSString *_originalString;
    @private NSString *_currentString;
}

- (id)initWithArguments:(NSString *)anArgument;
- (void)printString;

@end
