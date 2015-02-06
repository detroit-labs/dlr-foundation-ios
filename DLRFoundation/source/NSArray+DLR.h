//
//  NSArray+DLR.h
//  DLRFoundation
//
//  Created by Nate Walczak on 8/30/14.
//  Copyright (c) 2014 Detroit Labs, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (DLR)

/** Returns a filter array with only objects of a specific kind of class.  An empty array is returned if none found.  */
- (NSArray *)dlr_filteredArrayWithKindOfClass:(Class)aClass;

/** Returns the object located after specificed object. If last object, returns first object. */
- (id)dlr_objectAfterObject:(id)object;

/** Returns the object located before specificed object. If first object, returns last object. */
- (id)dlr_objectBeforeObject:(id)object;

@end
