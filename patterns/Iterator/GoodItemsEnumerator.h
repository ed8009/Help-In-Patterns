//
//  GoodItemsIterator.h
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "BasicEnumerator.h"

@interface GoodItemsEnumerator : BasicEnumerator
{
    @private NSMutableArray *itemsArray;
    @private NSEnumerator *internalEnumerator;
}

@end
