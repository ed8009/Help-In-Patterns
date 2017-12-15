//
//  BasicUnit.h
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BasicUnit : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic) int health;
@property (nonatomic, strong) UIImage *image;

@end
