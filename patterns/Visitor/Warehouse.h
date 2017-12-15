//
//  Warehouse.h
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "WarehouseItem.h"
#import "BasicVisitor.h"

@interface Warehouse : NSObject
{
    @private NSMutableArray *_itemsArray;
}

- (void)addItem:(WarehouseItem *)anItem;
- (void)accept:(id<BasicVisitor>)visitor;

@end
