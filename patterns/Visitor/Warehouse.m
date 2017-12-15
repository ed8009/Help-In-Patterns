//
//  Warehouse.m
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "Warehouse.h"

@implementation Warehouse

- (void)addItem:(WarehouseItem *)anItem
{
    if (!_itemsArray)
    {
        _itemsArray = [[NSMutableArray alloc] init];
    }
    [_itemsArray addObject:anItem];
}

- (void)accept:(id<BasicVisitor>) visitor
{
    [visitor visit:self];
    for (WarehouseItem *item in _itemsArray)
    {
        [visitor visit:item];
    }
}

@end
