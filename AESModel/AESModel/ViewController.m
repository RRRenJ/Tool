//
//  ViewController.m
//  AESModel
//
//  Created by 千锋 on 15/12/22.
//  Copyright (c) 2015年 1111111111. All rights reserved.
//

#import "ViewController.h"
#import "NSData+AES.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *leirongTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
- (IBAction)jiamiClicked:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self test];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)test{
    
    NSString * key = @"my password";
    NSString * secret = @"大傻逼";
    //加密
    NSData * plain = [secret dataUsingEncoding:NSUTF8StringEncoding];
    NSData * cipher = [plain AES256EncryptWithKey:key];
////    NSLog(@"---------%@",[cipher newStringInBase64FromData]);
////    printf("+++++++%s\n",[[cipher description] UTF8String]);
//    NSLog(@"%@",[[NSString alloc]initWithData:cipher encoding:NSUTF8StringEncoding]);
//    解密
    
    plain = [cipher AES256DecryptWithKey:@"1454"];
//    printf("%s\n",[[plain description] UTF8String]);
    NSLog(@"%@",[[NSString alloc]initWithData:plain encoding:NSUTF8StringEncoding]);
    
    
    
}


@end
