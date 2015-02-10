//
//  NSArray+DLRTests.m
//  DLRFoundation
//
//  Created by Nate Walczak on 12/23/14.
//  Copyright (c) 2014 Detroit Labs, LLC. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "NSArray+DLR.h"

@interface NSArray_DLRTests : XCTestCase

@end

@implementation NSArray_DLRTests

#pragma mark - dlr_filteredArrayWithKindOfClass

- (void)testFilteredArrayWithKindOfClass_found {
    NSArray *array = @[@"A", @(1), @(2), @"B", @"C", @(3)];
    
    NSArray *strings = [array dlr_filteredArrayWithKindOfClass:[NSString class]];
    
    XCTAssertNotNil(strings);
    
    XCTAssertEqual([strings count], 3);
    
    XCTAssertEqualObjects(strings[0], @"A");
    XCTAssertEqualObjects(strings[1], @"B");
    XCTAssertEqualObjects(strings[2], @"C");
}

- (void)testFilteredArrayWithKindOfClass_not_found {
    NSArray *array = @[@"A", @(1), @(2), @"B", @"C", @(3)];
    
    NSArray *views = [array dlr_filteredArrayWithKindOfClass:[NSDate class]];
    
    XCTAssertNotNil(views);
    
    XCTAssertEqual([views count], 0);
}

#pragma mark - dlr_objectAfterObject

- (void)testObjectAfterObject {
    NSArray *array = @[@"A", @"B", @"C"];
    
    XCTAssertEqualObjects([array dlr_objectAfterObject:@"A"], @"B");
    XCTAssertEqualObjects([array dlr_objectAfterObject:@"B"], @"C");
    XCTAssertEqualObjects([array dlr_objectAfterObject:@"C"], @"A");
}

- (void)testObjectAfterObject_empty_array {
    NSArray *array = @[];
    
    XCTAssertNil([array dlr_objectAfterObject:@"B"]);
}

#pragma mark - dlr_objectBeforeObject

- (void)testObjecBeforeObject {
    NSArray *array = @[@"A", @"B", @"C"];
    
    XCTAssertEqualObjects([array dlr_objectBeforeObject:@"A"], @"C");
    XCTAssertEqualObjects([array dlr_objectBeforeObject:@"B"], @"A");
    XCTAssertEqualObjects([array dlr_objectBeforeObject:@"C"], @"B");
}

- (void)testObjectBeforeObject_empty_array {
    NSArray *array = @[];
    
    XCTAssertNil([array dlr_objectBeforeObject:@"B"]);
}

@end