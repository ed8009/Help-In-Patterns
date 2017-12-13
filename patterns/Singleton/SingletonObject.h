//
//  SingletonObject.h
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletonObject : NSObject

@property (nonatomic, weak) NSString *tempProperty;

+ (SingletonObject *)singleton;

@end
