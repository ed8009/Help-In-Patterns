//
//  FileDownloaderProxy.h
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "FileDownloader.h"

@interface FileDownloaderProxy : NSObject
{
    @private FileDownloader *_downloader;
}

@property (nonatomic) bool isPremiumUser;

- (void)slowDownload;
- (void)fastDownload;

@end
