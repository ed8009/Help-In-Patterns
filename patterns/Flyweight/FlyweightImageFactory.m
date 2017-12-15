//
//  FlyweightImageFactory.m
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "FlyweightImageFactory.h"

@implementation FlyweightImageFactory

NSMutableDictionary *_imageDictionary;

+ (UIImage *)getImage:(NSString *)imageName
{
    if (!_imageDictionary)
    {
        _imageDictionary = [[NSMutableDictionary alloc] init];
    }
    
    if (![_imageDictionary objectForKey:imageName])
    {
        [_imageDictionary setObject:[UIImage imageNamed:[[NSString alloc] initWithFormat:@"%@",imageName]] forKey:imageName];
        NSLog(@"Loading image of the %@", imageName);
    }
    
    return [_imageDictionary objectForKey:imageName];
}

@end
