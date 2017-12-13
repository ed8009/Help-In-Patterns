//
//  StandardObserver.h
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

@protocol StandardObserver <NSObject>

- (void)valueChanged:(NSString *)valueName newValue:(NSString *) newValue;

@end
