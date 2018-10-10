//
//  MXBaseModel.m
//  MXModel
//
//  Created by kuroky on 2018/10/9.
//  Copyright © 2018 Kuroky. All rights reserved.
//

#import "MXBaseModel.h"
#import "YYModel.h"

@interface MXBaseModel () <NSCopying, NSCoding>

@end

@implementation MXBaseModel

#pragma mark - json字典转换成Model
+ (id)mx_convertModelWithJsonDic:(NSDictionary *)jsonDic {
    return [self yy_modelWithDictionary:jsonDic];
}

#pragma mark - json字符串转换成Model
+ (id)mx_convertModelWithJsonStr:(NSString *)jsonStr {
    return [self yy_modelWithJSON:jsonStr];
}

#pragma mark - json数组model化
+ (NSArray *)mx_convertModelWithJsonArr:(NSArray *)jsonArr {
    return [NSArray yy_modelArrayWithClass:self json:jsonArr];
}

#pragma mark - Coding/Copying/hash/equal
- (void)encodeWithCoder:(NSCoder *)aCoder {
    [self yy_modelEncodeWithCoder:aCoder];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    return [self yy_modelInitWithCoder:aDecoder];
}

- (id)copyWithZone:(NSZone *)zone {
    return [self yy_modelCopy];
}

- (NSUInteger)hash {
    return [self yy_modelHash];
}

- (BOOL)isEqual:(id)object {
    return [self yy_modelIsEqual:object];
}

- (NSString *)description {
    return [self yy_modelDescription];
}

+ (NSDictionary *)modelCustomPropertyMapper {
    return nil;
}

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return nil;
}

- (BOOL)modelCustomTransformFromDictionary:(NSDictionary *)dic {
    return YES;
}

@end

@implementation NSObject (MXBaseModel)

#pragma mark - model转成json对象
- (NSMutableDictionary *)mx_modelToJsonDictionary {
    id obj = [self yy_modelToJSONObject];
    return obj;
}

- (NSString *)mx_modelToJsonString {
    return [self yy_modelToJSONString];
}

- (id)mx_copy {
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:self];
    MXBaseModel *item = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    return item;
}

@end
