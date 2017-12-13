//
//  SmartHousePart.h
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CentrallProcessor;

@interface SmartHousePart : NSObject
{
    @private CentrallProcessor *_processor;
}

- (id)initWithCore:(CentrallProcessor *)processor;
- (void)numbersChanged;

@end
