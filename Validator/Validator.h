//
//  Validator.h
//  Validator
//
//  Created by 小野寺耕平 on 2014/08/16.
//  Copyright (c) 2014年 Kohei Onodera. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Validator : NSObject

- (BOOL)chkEmpty:(NSString*)words;
- (BOOL)chkAlnum:(NSString*)words;
- (BOOL)chkZenkaku:(NSString*)words;
- (BOOL)chkZipcode:(NSString*)words;
- (BOOL)chkEmail:(NSString*)words;
- (BOOL)chkMinLen:(NSString*)words :(NSInteger)minNum;
- (BOOL)chkMaxLen:(NSString*)words :(NSInteger)maxNum;

@end
