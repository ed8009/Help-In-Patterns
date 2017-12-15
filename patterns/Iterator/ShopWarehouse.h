//
//  ShopWarehouse.h
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BadItemsEnumerator.h"
#import "GoodItemsEnumerator.h"

@interface ShopWarehouse : NSObject
{
    @private NSMutableArray *goods;
    @private GoodItemsEnumerator *goodItemsEnumerator;
    @private BadItemsEnumerator *badItemsEnumerator;
}

- (void)addItem:(ItemInShop *)anItem;
- (NSEnumerator *)getBrokenItemsEnumerator;
- (NSEnumerator *)getGoodItemsEnumerator;

@end
