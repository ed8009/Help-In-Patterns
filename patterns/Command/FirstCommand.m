//
//  FirstCommand.m
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "FirstCommand.h"

@implementation FirstCommand

- (id)initWithArguments:(NSString *)anArgument
{
    self = [super init];
    _originalString = anArgument;
    _currentString = anArgument;
    return self;
}

- (void)execute
{
    _currentString = @"This is a new string";
    [self printString];
    NSLog(@"Execute command called");
}

- (void)undo
{
    _currentString = _originalString;
    [self printString];
    NSLog(@"Undo of -(void) printString");
}

- (void)printString
{
    NSLog(@"Current string is equal to %@", _currentString);
}
          
@end
