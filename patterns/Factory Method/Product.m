//
//  Product.m
//  patterns
//
//  Created by Eduard Mitasov on 12.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "Product.h"

@implementation Product

- (NSInteger *)getTotalPrice:(NSInteger)sum
{
    return self.price + sum;
}

- (void) saveObject
{
    NSLog(@"I am saving an object in to product database");
}

@end
