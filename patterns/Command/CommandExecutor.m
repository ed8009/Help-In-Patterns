//
//  CommandExecutor.m
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "CommandExecutor.h"

@implementation CommandExecutor

- (id)init
{
    self = [super init];
    _arrayOfCommands = [[NSMutableArray alloc] init];
    return self;
}

- (void)addCommand:(BaseCommand *)aCommand
{
    [_arrayOfCommands addObject:aCommand];
}

- (void)executeCommands
{
    for (BaseCommand *command in _arrayOfCommands)
    {
        [command execute];
    }
}

- (void)undoAll
{
    for (BaseCommand *command in _arrayOfCommands)
    {
        [command undo];
    }
}

@end
