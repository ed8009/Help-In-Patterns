//
//  RavenAdapter.m
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "RavenAdapter.h"

@implementation RavenAdapter

@synthesize raven = _raven;

- (id)initWithRaven:(Raven *)adaptee
{
    self = [super self];
    _raven = adaptee;
    return self;
}

- (void)sing
{
    [_raven voice];
}

- (void)fly
{
    [_raven flySearchAndDestroy];
}


@end
