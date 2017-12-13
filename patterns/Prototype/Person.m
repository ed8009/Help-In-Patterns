//
//  Person.m
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)copyWithZone:(NSZone *)zone
{
    Person *copy = [[self class] allocWithZone:zone];
    copy.name = self.name;
    copy.age = self.age;
    copy.surname = self.surname;
    return copy;
}

@end
