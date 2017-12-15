//
//  FileDownloader.m
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "FileDownloader.h"

@implementation FileDownloader

- (id)init
{
    self = [super init];
    NSLog(@"Downloader created");
    return self;
}

- (void)slowDownload
{
    NSLog(@"Sloooooowly downloading...");
}

- (void)fastDownload
{
    NSLog(@"Shuuuuuh, already downloaded...");
}

@end
