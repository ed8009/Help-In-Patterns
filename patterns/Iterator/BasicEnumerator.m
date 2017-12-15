//
//  BasicEnumerator.m
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "BasicEnumerator.h"

@implementation BasicEnumerator

- (id)initWithItems:(NSMutableArray *)anItems
{
    self = [super init];
    return self;
}

- (NSArray *)allObjects
{
    return [NSArray new];
}

- (id)nextObject
{
    return [NSNull null];
}

@end
