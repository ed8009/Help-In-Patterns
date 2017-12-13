//
//  MusicPlayer.m
//  patterns
//
//  Created by Eduard Mitasov on 13.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "MusicPlayer.h"

@implementation MusicPlayer

- (void)playMusic
{
    [self.headPhones playBassSound];
    [self.headPhones playBassSound];
    [self.headPhones playSimpleSound];
    [self.headPhones playSimpleSound];
}

@end
