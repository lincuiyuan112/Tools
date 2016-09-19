//
//  LCYFileSize.h
//  baisibudejie
//
//  Created by LCY on 16/7/10.
//  Copyright © 2016年 lincuiyuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LCYFileSize : NSObject


+(void)getFileOfFileSize:(NSString *)filePath completion:(void(^)(NSInteger totalSize)) completion;
@end
