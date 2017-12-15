//
//  Player.h
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "BasicStrategy.h"

@interface Player : NSObject

@property (nonatomic, strong) BasicStrategy *_strategy;

- (void)makeAction;
- (void)changeStrategy:(BasicStrategy *)strategy;

@end
