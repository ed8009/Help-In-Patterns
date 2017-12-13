//
//  MusicPlayer.h
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "BaseHeadphones.h"

@interface MusicPlayer : NSObject

@property (nonatomic, strong) BaseHeadphones *headPhones;

- (void)playMusic;

@end
