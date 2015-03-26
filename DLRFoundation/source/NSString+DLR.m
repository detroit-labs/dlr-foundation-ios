//
//  NSString+DLR.m
//  DLRFoundation
//
//  Created by Nate Walczak on 3/26/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import "NSString+DLR.h"

@implementation NSString (DLR)

- (NSString *)dlr_stringByTrimmingWhitespaceCharacters {
    NSString *string = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    return string;
}

- (NSString *)dlr_nilIfEmpty {
    if (self.length == 0) {
        return nil;
    }
    return self;
}

@end
