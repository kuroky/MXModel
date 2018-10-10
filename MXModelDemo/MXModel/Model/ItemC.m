//
//  ItemC.m
//  MXModel
//
//  Created by kuroky on 2018/10/9.
//  Copyright © 2018 Kuroky. All rights reserved.
//

#import "ItemC.h"
#import "ItemA.h"

@implementation ItemC

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"students": [ItemA class]};
}

@end
