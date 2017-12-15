//
//  NSDate+StringDate.m
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "NSDate+StringDate.h"

@implementation NSDate (StringDate)

- (NSString *)convertDateToString
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy/dd/MM"];
    return [formatter stringFromDate:self];
}

@end
