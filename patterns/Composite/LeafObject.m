//
//  LeafObject.m
//  patterns
//
//  Created by Eduard Mitasov on 14.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "LeafObject.h"

@implementation LeafObject

- (NSString *)getData
{
    return [[NSString alloc] initWithFormat:@"<%@/>", self.leafValue];
}

- (void)addComponent:(id)aComponent
{
    NSLog(@"Can't add component. Sorry, man");
}

@end
