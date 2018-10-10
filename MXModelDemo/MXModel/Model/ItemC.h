//
//  ItemC.h
//  MXModel
//
//  Created by kuroky on 2018/10/9.
//  Copyright © 2018 Kuroky. All rights reserved.
//

#import "MXBaseModel.h"

NS_ASSUME_NONNULL_BEGIN

@class ItemA;

@interface ItemC : MXBaseModel

@property (nonatomic, copy) NSString *school;

@property (nonatomic, strong) NSArray <ItemA *> *students;

@end

NS_ASSUME_NONNULL_END
