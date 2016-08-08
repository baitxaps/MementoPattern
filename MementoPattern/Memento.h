//
//  Memento.h
//  MementoPattern
//
//  Created by hairong chen on 16/8/6.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Memento : NSObject

@property (nonatomic,strong)NSString *state;

- (instancetype)initWithState:(NSString *)state;

@end
