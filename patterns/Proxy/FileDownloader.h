//
//  FileDownloader.h
//  patterns
//
//  Created by Eduard Mitasov on 15.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileDownloader : NSObject

- (void)slowDownload;
- (void)fastDownload;

@end
