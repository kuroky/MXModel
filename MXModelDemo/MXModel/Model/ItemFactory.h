//
//  ItemFactory.h
//  MXModel
//
//  Created by kuroky on 2018/10/9.
//  Copyright © 2018 Kuroky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemFactory : NSObject

+ (NSDictionary *)jsonDictionary;

+ (NSArray *)jsonArray;

+ (NSDictionary *)jsonDicContainDic;

@end
