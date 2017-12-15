//
//  AndroidMaker.m
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "AndroidMaker.h"

@implementation AndroidMaker

- (void)assemble
{
    [self addCPU];
    [self addRam];
    [super assemble];
}

- (void)addCPU
{
    NSLog(@"Installing 4 more CPUs");
}

- (void)addRam
{
    NSLog(@"Installing 2Gigs of RAM");
}

@end
