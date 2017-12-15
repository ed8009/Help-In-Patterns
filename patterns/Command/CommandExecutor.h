//
//  CommandExecutor.h
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "BaseCommand.h"

@interface CommandExecutor : NSObject
{
    @private NSMutableArray *_arrayOfCommands;
}

- (void)addCommand:(BaseCommand *)aCommand;
- (void)executeCommands;
- (void)undoAll;

@end
