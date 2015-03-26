//
//  NSString+DLR.h
//  DLRFoundation
//
//  Created by Nate Walczak on 3/26/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (DLR)

/** Returns a string by trimming all of the leading and trailing whitespace characters.
 If the receiver is composed entirely of whitespace characters, an empty string is returned. */
- (NSString *)dlr_stringByTrimmingWhitespaceCharacters;

/** If the receiver has a lenght of zero, nil is returned.  Otherwise the receiver is returned. */
- (NSString *)dlr_nilIfEmpty;

@end
