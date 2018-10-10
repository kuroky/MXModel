//
//  ItemFactory.m
//  MXModel
//
//  Created by kuroky on 2018/10/9.
//  Copyright © 2018 Kuroky. All rights reserved.
//

#import "ItemFactory.h"

@implementation ItemFactory

+ (NSDictionary *)jsonDictionary {
    return @{@"name": @"123",
             @"address": @"34567"};
}

+ (NSArray *)jsonArray {
    return @[@{@"name": @"123", @"address": @"123"},
             @{@"name": @"qwe", @"address": @"gfd"}];
}

+ (NSDictionary *)jsonDicContainDic {
    return @{@"school": @"111",
             @"students": @[@{@"name": @"123", @"address": @"asd"},
                            @{@"name": @"321", @"address": @"dsa"}]};
}

@end
