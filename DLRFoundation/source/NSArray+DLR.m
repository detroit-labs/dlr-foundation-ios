//
//  NSArray+DLR.m
//  DLRFoundation
//
//  Created by Nate Walczak on 8/30/14.
//  Copyright (c) 2014 Detroit Labs, LLC. All rights reserved.
//

#import "NSArray+DLR.h"

@implementation NSArray (DLR)

- (NSArray *)dlr_filteredArrayWithKindOfClass:(Class)aClass {
    NSPredicate *predicate = [NSPredicate predicateWithBlock:^BOOL(id object, NSDictionary *bindings) {
        return [object isKindOfClass:aClass];
    }];
    NSArray *filterArray = [self filteredArrayUsingPredicate:predicate];
    return filterArray;
}

- (id)dlr_objectAfterObject:(id)object {
    if (!object) {
        nil;
    }
    
    NSUInteger index = [self indexOfObject:object];
    if (index == NSNotFound) {
        return nil;
    }

    index++;
    if (index >= [self count]) {
        index = 0;
    }
    
    id afterObject = self[index];
    return afterObject;
}

- (id)dlr_objectBeforeObject:(id)object {
    if (!object) {
        nil;
    }
    
    NSUInteger index = [self indexOfObject:object];
    if (index == NSNotFound) {
        return nil;
    }
    
    if (index == 0) {
        index = [self count] - 1;
    }
    else {
        index--;
    }
    
    id beforeObject = self[index];
    return beforeObject;
}

@end
