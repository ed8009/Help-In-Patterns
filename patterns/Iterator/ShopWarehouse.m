//
//  ShopWarehouse.m
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "ShopWarehouse.h"

@implementation ShopWarehouse

- (id)init
{
    self = [super init];
    goods = [[NSMutableArray alloc] init];
    return self;
}

- (void)addItem:(ItemInShop *)anItem
{
    [goods addObject:anItem];
}

- (NSEnumerator *)getBrokenItemsEnumerator
{
    badItemsEnumerator = [[BadItemsEnumerator alloc] initWithItems:goods];
    return badItemsEnumerator;
}

- (NSEnumerator *)getGoodItemsEnumerator
{
    goodItemsEnumerator = [[GoodItemsEnumerator alloc] initWithItems:goods];
    return goodItemsEnumerator;
}

@end
