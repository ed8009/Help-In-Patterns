//
//  CompositeObjectProtocol.h
//  patterns
//
//  Created by Eduard Mitasov on 14.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

@protocol CompositeObjectProtocol <NSObject>

- (NSString *)getData;
- (void)addComponent:(id<CompositeObjectProtocol>)aComponent;

@end
