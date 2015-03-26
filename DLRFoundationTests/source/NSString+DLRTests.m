//
//  NSString+DLRTests.m
//  DLRFoundation
//
//  Created by Nate Walczak on 3/26/15.
//  Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "NSString+DLR.h"

@interface NSString_DLRTests : XCTestCase

@end

@implementation NSString_DLRTests

#pragma mark - dlr_stringByTrimmingWhitespaceCharacters

- (void)testStringByTrimmingWhitespaceCharacters_nil {
    NSString *string = nil;
    XCTAssertNil([string dlr_stringByTrimmingWhitespaceCharacters]);
}

- (void)testStringByTrimmingWhitespaceCharacters_empty {
    XCTAssertEqualObjects(@"", [@"" dlr_stringByTrimmingWhitespaceCharacters]);
}

- (void)testStringByTrimmingWhitespaceCharacters_leading {
    XCTAssertEqualObjects(@"leading", [@"  leading" dlr_stringByTrimmingWhitespaceCharacters]);
}

- (void)testStringByTrimmingWhitespaceCharacters_trailing {
    XCTAssertEqualObjects(@"trailing", [@"trailing   " dlr_stringByTrimmingWhitespaceCharacters]);
}

- (void)testStringByTrimmingWhitespaceCharacters_leandingAndTrailing {
    XCTAssertEqualObjects(@"leading and trailing", [@"   leading and trailing   " dlr_stringByTrimmingWhitespaceCharacters]);
}

#pragma mark - dlr_nilIfEmpty

- (void)testNilIfEmpty_nil {
    NSString *string = nil;
    XCTAssertNil([string dlr_nilIfEmpty]);
}

- (void)testNilIfEmpty_empty {
    XCTAssertNil([@"" dlr_nilIfEmpty]);
}

- (void)testNilIfEmpty_notEmpty {
    XCTAssertEqualObjects(@"   leading and trailing   ", [@"   leading and trailing   " dlr_nilIfEmpty]);
}

@end
