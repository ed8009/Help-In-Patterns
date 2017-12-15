//
//  Goblin.m
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "Goblin.h"
#import "FlyweightImageFactory.h"

@implementation Goblin

- (id)init
{
    self = [super init];
    self.name = @"goblin";
    self.health = 20;
    self.image = [FlyweightImageFactory getImage:@"goblin"];
    return self;
}

@end
