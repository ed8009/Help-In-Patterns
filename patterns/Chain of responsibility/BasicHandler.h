//
//  BasicHandler.h
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "BasicItem.h"

@interface BasicHandler : NSObject
{
    @private BasicHandler *_nextHandler;
}

@property (nonatomic, strong) BasicHandler *nextHandler;

- (void)handleItem:(BasicItem *)item;

@end
