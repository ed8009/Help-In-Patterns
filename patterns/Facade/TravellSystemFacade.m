//
//  TravellSystemFacade.m
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "TravellSystemFacade.h"
#import "PathFinder.h"
#import "TravellEngine.h"
#import "TicketPrinitingSystem.h"

@implementation TravellSystemFacade

- (void)travellTo:(NSString *)location
{
    PathFinder *pf = [[PathFinder alloc] init];
    TravellEngine *te = [[TravellEngine alloc] init];
    TicketPrinitingSystem *tp = [[TicketPrinitingSystem alloc] init];
    [pf findCurrentLocation];
    [pf findLocationToTravel:location];
    [pf makeARoute];
    [te findTransport];
    [te orderTransport];
    [tp createTicket];
    [tp printingTicket];
    [te travel];
}

@end
