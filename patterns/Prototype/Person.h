//
//  Person.h
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCopying>

@property (nonatomic,weak) NSString *name;
@property (nonatomic,weak) NSString *surname;
@property (nonatomic,weak) NSString *age;

- (id)copyWithZone:(NSZone *)zone;

@end
