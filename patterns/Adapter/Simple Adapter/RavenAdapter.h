//
//  RavenAdapter.h
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "BirdProtocol.h"
#import "Raven.h"

@interface RavenAdapter : NSObject <BirdProtocol>
{
    @private Raven *_raven;
}

@property (nonatomic, strong) Raven *raven;

- (id)initWithRaven:(Raven *)adaptee;

@end
