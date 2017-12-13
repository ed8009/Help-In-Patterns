//
//  Product.h
//  patterns
//
//  Created by Eduard Mitasov on 12.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject
@property(nonatomic) NSInteger *price;
@property(nonatomic, strong) NSString *name;

- (NSInteger *)getTotalPrice:(NSInteger)sum;
- (void)saveObject;

@end
