//
//  main.m
//  Validator
//
//  Created by 小野寺耕平 on 2014/08/16.
//  Copyright (c) 2014年 Kohei Onodera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Validator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Validator *chk = [Validator new];
        NSDictionary *errMsg = [NSDictionary dictionaryWithObjectsAndKeys:
                                @"入力は必須です。", @"errEmpty",
                                @"すべて半角英数で入力してください。", @"errAlnum",
                                @"すべて全角で入力してください。", @"errZenkaku",
                                @"半角数字7ケタ（ハイフンなし）の正しい数値を入力してください。", @"errZipcode",
                                @"正しいメールアドレスを入力してください。", @"errEmail",
                                nil
                                ];
        
        // チェック用文字列
        NSString *str = @"sfasdfadfasdfa";
        
        // 必須チェック
        if(![chk chkEmpty:str]){
            NSLog(@"%@",[errMsg objectForKey:@"errEmpty"]);
            return 0;
        }
        
        // 半角英数チェック
        /*
        if(![chk chkAlnum:str]){
            NSLog(@"%@",[errMsg objectForKey:@"errAlnum"]);
            return 0;
        }
        */
        
        // 全角チェック
        /*
        if(![chk chkZenkaku:str]){
            NSLog(@"%@",[errMsg objectForKey:@"errZenkaku"]);
            return 0;
        }
         */
        
        // 郵便番号チェック
        /*
         if (![chk chkZipcode:str]) {
         NSLog(@"%@", [errMsg objectForKey:@"errZipcode"]);
         return 0;
         }
         */
        
        // Emailチェック
        
        if (![chk chkEmail:str]) {
            NSLog(@"%@", [errMsg objectForKey:@"errEmail"]);
            return 0;
        }
        
        
        // 規定文字数以上かチェック
        /*
        if (![chk chkMinLen:str :(NSInteger)50]){
            NSLog(@"50文字以上で入力してください。");
            return 0;
        }
         */
        
        // 規定文字数以下かチェック
        /*
        if (![chk chkMaxLen:str :(NSInteger)10]){
            NSLog(@"10文字以下で入力してください。");
            return 0;
        }
         */
        
    }
    return 0;
}
