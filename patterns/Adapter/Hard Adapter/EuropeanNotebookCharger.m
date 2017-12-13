//
//  EuropeanNotebookCharger.m
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "EuropeanNotebookCharger.h"

@implementation EuropeanNotebookCharger

@synthesize delegate = _delegate;

- (id)init
{
    self = [super self];
    self.delegate = self;
    return self;
}

- (void)charge
{
    [_delegate chargetNotebookRoundHoles:self];
    [super charge];
}

- (void)chargetNotebookRoundHoles:(Charger *)charger
{
    NSLog(@"Charging with 220 and round holes!");
}


@end
