//
//  NSData+AES.h
//  AESModel
//
//  Created by 千锋 on 15/12/22.
//  Copyright (c) 2015年 1111111111. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (AES)

-(NSData * )AES256EncryptWithKey:(NSString *)key;//加密
-(NSData *)AES256DecryptWithKey:(NSString *)key;//解密

-(NSString *)newStringInBase64FromData;//追加64编码
+(NSString *)base64encode:(NSString *)str;
@end
