//
//  LCYFileSize.m
//  baisibudejie
//
//  Created by LCY on 16/7/10.
//  Copyright © 2016年 lincuiyuan. All rights reserved.
//

#import "LCYFileSize.h"

@implementation LCYFileSize


//获取文件夹尺寸
+(void)getFileOfFileSize:(NSString *)filePath completion:(void(^)(NSInteger totalSize)) completion
{
    //获取文件夹路径
    NSFileManager *manar = [NSFileManager defaultManager];
    
  
    //文件夹
    BOOL isFile;
    //存在
    BOOL isExist = [manar fileExistsAtPath:filePath isDirectory:&isFile];
    if (!isFile || !isExist) {
        //异常
        NSException *excp = [NSException exceptionWithName:@"FileNameErro" reason:@"文件路径出错" userInfo:nil];
        //抛出
        [excp raise];
    }
    
    //开启子线程计算缓存
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        //获取文件夹里所有子路径 多级
        NSArray *subPaths = [manar subpathsAtPath:filePath];
        NSInteger totalSize = 0;
        //遍历文件夹里所有文件
        for (NSString *fileName in subPaths) {
            
            //拼接文件路径
            NSString *allFilePath = [filePath stringByAppendingPathComponent:fileName];
            //判断是否是隐藏文件
            if ([fileName hasPrefix:@"."]) continue;
            //判断是否是文件夹
            BOOL isFile;
            [manar fileExistsAtPath:allFilePath isDirectory:&isFile];
            if (isFile) continue;
            
            //获取文件夹属性
            NSDictionary *attr = [manar attributesOfItemAtPath:allFilePath error:nil];
            
            //叠加文件的大小
            totalSize += [attr fileSize];
            
            //BLOCK传一个参数
            dispatch_sync(dispatch_get_main_queue(), ^{
                if (completion) {
                    completion(totalSize);
                }
            });
        }
    });
    
}

@end
