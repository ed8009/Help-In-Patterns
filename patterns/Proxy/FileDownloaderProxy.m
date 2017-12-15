//
//  FileDownloaderProxy.m
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "FileDownloaderProxy.h"

@implementation FileDownloaderProxy

- (void)fastDownload
{
    if (!_isPremiumUser)
    {
        [self slowDownload];
        return;
    }
    
    if (!_downloader)
    {
        _downloader = [[FileDownloader alloc] init];
    }
    
    [self checkNetworkConnectivity];
    [_downloader fastDownload];
}

- (void)slowDownload
{
    if (!_downloader)
    {
        _downloader = [[FileDownloader alloc] init];
    }
    
    [self checkNetworkConnectivity];
    [_downloader slowDownload];
}

- (void)checkNetworkConnectivity
{
    NSLog(@"Checking network connectivity...");
}

@end
