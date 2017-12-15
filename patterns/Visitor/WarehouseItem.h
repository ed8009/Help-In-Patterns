//
//  WarehouseItem.h
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WarehouseItem : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic) BOOL isBroken;
@property (nonatomic) int price;

- (id)initWithArgs:(NSString *)aName andQuality:(BOOL)isBrokenState andPrice:(int)aPrice;

@end
