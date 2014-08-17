//
//  Validator.m
//  Validator
//
//  Created by 小野寺耕平 on 2014/08/16.
//  Copyright (c) 2014年 Kohei Onodera. All rights reserved.
//

#import "Validator.h"


@implementation Validator

/**
 * 未入力チェック
 *
 * @param NSString 文字列
 * @return BOOL
 */
- (BOOL)chkEmpty:(NSString*)words{
    
    if([words length] > 0){
        return YES;
    }else{
        return NO;
    }
    
}


/**
 * 半角英数チェック
 *
 * 半角のasciiに変換できるか、で判定。
 * @param NSString 文字列
 * @return BOOL
 */
- (BOOL)chkAlnum:(NSString*)words{
    
    if(![words canBeConvertedToEncoding:NSASCIIStringEncoding]){
        return NO;
    }else{
        return YES;
    }
    
}

/**
 * 全角チェック
 *
 * @param NSString 文字列
 * @return BOOL
 */
- (BOOL)chkZenkaku:(NSString *)words{


    NSError *err = nil;
    NSRegularExpression *regex = nil;
    
    regex = [NSRegularExpression regularExpressionWithPattern:@"^[^\x01-\x7E]+$" options:NSRegularExpressionCaseInsensitive error:&err];
    
    NSTextCheckingResult *match = [regex firstMatchInString:words options:0 range:NSMakeRange(0, words.length)];
     
    if(!match){
        return NO;
    }else{
        return YES;
    }
    
}

/**
 * 郵便番号チェック
 *
 * ハイフンなしの、7桁の数字かの判定
 * @param NSString 文字列
 * @return BOOL
 */
- (BOOL)chkZipcode:(NSString*)words{
    
    NSError *err = nil;
    NSRegularExpression *regex = nil;
    
    regex = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]{7}$" options:NSRegularExpressionCaseInsensitive error:&err];
    NSTextCheckingResult *match = [regex firstMatchInString:words options:0 range:NSMakeRange(0, words.length)];
    
    if(!match){
        return NO;
    }else{
        return YES;
    }
    
}


/**
 * Emailチェック
 *
 * Email形式になっているかのざっくり判定
 *
 * @param NSString 文字列
 * @return BOOL
 */
- (BOOL)chkEmail:(NSString*)words{
    
    NSError *err = nil;
    NSRegularExpression *regex = nil;
    
    regex = [NSRegularExpression regularExpressionWithPattern:@"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$" options:NSRegularExpressionCaseInsensitive error:&err];
    NSTextCheckingResult *match = [regex firstMatchInString:words options:0 range:NSMakeRange(0, words.length)];
    
    if(!match){
        return NO;
    }else{
        return YES;
    }
    
}

/**
 * 長さチェック（最小値以上）
 *
 *
 * @param NSString 文字列
 * @param NSInteger 最小文字数
 * @return BOOL
 */
- (BOOL)chkMinLen:(NSString*) words :(NSInteger)minNum{
    
    NSInteger byteLength = [words length];
    
    if( byteLength > minNum){
        return YES;
    }else{
        return NO;
    }

    
}

/**
 * 長さチェック（最大値以下）
 *
 *
 * @param NSString 文字列
 * @param NSInteger 最大文字数
 * @return BOOL
 */
- (BOOL)chkMaxLen:(NSString*) words :(NSInteger)maxNum{
    
    NSInteger byteLength = [words length];
    
    if( byteLength <= maxNum){
        return YES;
    }else{
        return NO;
    }
    
}

@end
