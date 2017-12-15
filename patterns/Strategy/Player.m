//
//  Player.m
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "Player.h"

@implementation Player

- (void)makeAction
{
    [self._strategy actionCharacter1];
    [self._strategy actionCharacter2];
    [self._strategy actionCharacter3];
}

- (void)changeStrategy:(BasicStrategy *)strategy
{
    self._strategy = strategy;
}

@end
