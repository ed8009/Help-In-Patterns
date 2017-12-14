//
//  LeafObject.h
//  patterns
//
//  Created by Eduard Mitasov on 14.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CompositeObjectProtocol.h"

@interface LeafObject : NSObject <CompositeObjectProtocol>

@property (nonatomic, strong) NSString *leafValue;

@end
