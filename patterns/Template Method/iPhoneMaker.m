//
//  iPhoneMaker.m
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "iPhoneMaker.h"

@implementation iPhoneMaker

- (void)takeBox
{
    [self design];
    [super takeBox];
}

- (void)design
{
    NSLog(@"Putting label 'Designed in California'");
}

@end
