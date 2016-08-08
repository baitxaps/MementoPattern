//
//  Originator.m
//  MementoPattern
//
//  Created by hairong chen on 16/8/6.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Originator.h"
#import "Memento.h"

@interface Originator ()
@property (nonatomic,strong)Originator *backup;
@end

@implementation Originator

- (void)createMemento {
    self.backup = [self copy];
}


- (void)restoreMemoto {
   self.state = self.backup.state;
}

- (void)restoreMemoto:(Memento *)memento {
   // self.state = memento.state;
    self.state = self.backup.state;
}

- (void)parametersCopyOperationWithBaseCopyObject:(Originator *)baseCopyObject {
    
    baseCopyObject.state  = self.state;

    // 字典与数组的深层次拷贝
 //   baseCopyObject.datas      = [[[self.datas class] alloc] initWithArray:self.datas copyItems:YES];
 //   baseCopyObject.infomation = [[[self.infomation class] alloc] initWithDictionary:self.infomation copyItems:YES];
}

@end
