//
//  Container.m
//  patterns
//
//  Created by Eduard Mitasov on 14.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "Container.h"

@implementation Container

- (NSMutableArray *)components
{
    if (_components == nil)
    {
        _components = [[NSMutableArray alloc] init];
    }
    return _components;
}

- (void)addComponent:(id<CompositeObjectProtocol>)aComponent
{
    [self.components addObject:aComponent];
}

- (NSString *)getData
{
    NSMutableString *valueToReturn = [[NSMutableString alloc] init];
    [valueToReturn appendString:@"<ContainerValues>"];
    for ( id<CompositeObjectProtocol> object in _components)
    {
        [valueToReturn appendString:[object getData]];
    }
    [valueToReturn appendString:@"</ContainerValues>"];
    return valueToReturn;
}

@end
