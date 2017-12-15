//
//  Dragon.m
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "Dragon.h"
#import "FlyweightImageFactory.h"

@implementation Dragon

- (id)init
{
    self = [super init];
    self.name = @"Dragon";
    self.health = 150;
    self.image = [FlyweightImageFactory getImage:@"dragon"];
    return self;
}

@end
