//
//  NSString+YCI.h
//  YCIVADemo
//
//  Created by yanchen on 16/6/21.
//  Copyright © 2016年 yanchen. All rights reserved.
//

#import <Foundation/Foundation.h>

#define YCIJoinStrings(firstStr,...) [NSString JoinedWithSubStrings:firstStr,__VA_ARGS__,nil]

@interface NSString (YCI)

+ (NSString *)JoinedWithSubStrings:(NSString *)firstStr,...NS_REQUIRES_NIL_TERMINATION;

@end
