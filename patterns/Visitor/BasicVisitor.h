//
//  BasicVisitor.h
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

@protocol BasicVisitor <NSObject>

- (void)visit:(id)anObject;

@end
