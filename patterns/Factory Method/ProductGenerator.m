//
//  ProductGenerator.m
//  patterns
//
//  Created by Eduard Mitasov on 12.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "ProductGenerator.h"
#import "Toy.h"
#import "Dress.h"

@implementation ProductGenerator

- (Product *)getProduct:(int)price
{
    if ( price > 0 && price < 100 )
    {
        Toy *p = [[Toy alloc] init];
        return p;
    }
    if ( price >= 100 )
    {
        Dress *p = [[Dress alloc] init];
        return p;
    }
    return nil;
}

@end
