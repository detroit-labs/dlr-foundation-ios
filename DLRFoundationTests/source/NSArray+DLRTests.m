//
//  NSArray+DLRTests.m
//  DLRFoundation
//
//  Created by Nate Walczak on 12/23/14.
//  Copyright (c) 2014 Detroit Labs, LLC. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "NSArray+DLR.h"

#pragma mark -

// These two empty classes support testing class membership below and should not be used directly.

@interface NSArray_DLRTests_ClassA : NSObject

@end

@interface NSArray_DLRTests_ClassB : NSArray_DLRTests_ClassA

@end

#pragma mark -

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

- (void)testObjectAfterObject_nil {
    NSArray *array = @[@"A", @"B", @"C"];
    
    XCTAssertNil([array dlr_objectAfterObject:nil]);
}

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

- (void)testObjecBeforeObject_nil {
    NSArray *array = @[@"A", @"B", @"C"];
    
    XCTAssertNil([array dlr_objectBeforeObject:nil]);
}

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

#pragma mark - dlr_containsKindOfClass:

- (void)testArrayContainingKindOfClass {
    NSArray *array = @[[NSArray_DLRTests_ClassB new]];
    
    XCTAssertTrue([array dlr_containsKindOfClass:[NSArray_DLRTests_ClassA class]]);
    XCTAssertTrue([array dlr_containsKindOfClass:[NSArray_DLRTests_ClassB class]]);
}

- (void)testArrayNotContainingKindOfClass {
    NSArray *array = @[@"foo", @"bar", @"baz"];
    
    XCTAssertFalse([array dlr_containsKindOfClass:[NSNumber class]]);
}

#pragma mark - dlr_containsMemberOfClass:

- (void)testArrayContainingMemberOfClass {
    NSArray *array = @[[NSArray_DLRTests_ClassB new]];
    
    XCTAssertFalse([array dlr_containsMemberOfClass:[NSArray_DLRTests_ClassA class]]);
    XCTAssertTrue([array dlr_containsMemberOfClass:[NSArray_DLRTests_ClassB class]]);
}

- (void)testArrayNotContainingMemberOfClass {
    NSArray *array = @[@"foo", @"bar", @"baz"];
    
    XCTAssertFalse([array dlr_containsMemberOfClass:[NSNumber class]]);
}

@end

#pragma mark -

@implementation NSArray_DLRTests_ClassA

@end

@implementation NSArray_DLRTests_ClassB

@end
