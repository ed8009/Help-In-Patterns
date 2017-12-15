//
//  BasicEnumerator.h
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BasicEnumerator : NSEnumerator

- (id)initWithItems:(NSMutableArray *)anItems;
- (NSArray *)allObjects;
- (id)nextObject;

@end
