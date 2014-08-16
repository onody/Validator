Validator
=========

Validation Class for Objective-C  
Objective-Cでの、入力フォームでよく使うバリデーションセットです。  

# 使い方など

```Objective-C

#import "Validator.h"


NSString *str = @"";


// 必須チェック
Validator *chk = [Validator new];
if(![chk chkEmpty:str]){
    NSLog(@"入力必須です。");
    return 0;
}



```