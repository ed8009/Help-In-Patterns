//
//  PriceCheckerVisitor.m
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "PriceCheckerVisitor.h"
#import "Warehouse.h"

@implementation PriceCheckerVisitor

- (void)visit:(id)anObject
{
    if ([anObject isKindOfClass:[WarehouseItem class]])
    {
        NSLog(@"Item: %@ have price = %i", [anObject name], [anObject price]);
    }
    if ([anObject isKindOfClass:[Warehouse class]])
    {
        NSLog(@"Hmmm, I don't know how much Warehouse costs!");
        return;
    }
}

@end
