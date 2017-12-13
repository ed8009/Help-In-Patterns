//
//  PathFinder.h
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PathFinder : NSObject

- (void)findCurrentLocation;
- (void)findLocationToTravel:(NSString *)location;
- (void)makeARoute;

@end
