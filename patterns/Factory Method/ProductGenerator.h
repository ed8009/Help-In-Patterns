//
//  ProductGenerator.h
//  patterns
//
//  Created by Eduard Mitasov on 12.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "Product.h"

@interface ProductGenerator : NSObject

- (Product *)getProduct:(int)price;

@end
