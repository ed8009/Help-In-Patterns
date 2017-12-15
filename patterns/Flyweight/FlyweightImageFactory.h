//
//  FlyweightImageFactory.h
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface FlyweightImageFactory : NSObject

+ (UIImage *)getImage:(NSString *)imageName;

@end
