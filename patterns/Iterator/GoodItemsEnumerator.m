//
//  GoodItemsIterator.m
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "GoodItemsEnumerator.h"
#import "ItemInShop.h"
@implementation GoodItemsEnumerator

- (id)initWithItems:(NSMutableArray *)anItems
{
    self = [super init];
    itemsArray = [[NSMutableArray alloc] init];
    
    for ( ItemInShop *item in anItems)
    {
        if (!item.isBroken)
        {
            [itemsArray addObject:item];
        }
    }
    internalEnumerator = [itemsArray objectEnumerator];
    return self;
}

- (NSArray *)allObjects
{
    return itemsArray;
}

- (id)nextObject
{
    return [internalEnumerator nextObject];
}

@end
