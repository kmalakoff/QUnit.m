//
//  QUnitTestsTests.m
//  QUnitTests
//
//  Created by Kevin Malakoff on 7/29/12.
//  Copyright (c) 2012 Kevin Malakoff. All rights reserved.
//

#import "QUnitTestsTests.h"
#import "QUnit.h"

@implementation QUnitTestsTests

- (void)test_version
{
  equal(QUnit.VERSION, @"0.1.0", @"expected version");
}

- (void)testObjectiveCTypes
{
  equal(@"hello world", @"hello world", @"equal: constant strings work")
  notEqual(@"hello world", @"hello world!", @"notEqual: constant strings work")

  equal([NSNumber numberWithInteger:1], [NSNumber numberWithInteger:1], @"equal: NSNumbers work")
  notEqual([NSNumber numberWithInteger:1], [NSNumber numberWithInteger:-1], @"notEqual: NSNumbers work")
}

- (void)testPrimitiveTypes
{
  equal(1, 1, @"equal: 1 == 1")
  notEqual(1, -1, @"equal: 1 != -1")

  equal(true, true, @"equal: true == true")
  equal(false, false, @"equal: false != false")
  notEqual(false, true, @"equal: false != true")
  notEqual(true, false, @"equal: true != false")

  equal(YES, YES, @"equal: YES == YES")
  equal(NO, NO, @"equal: NO != NO")
  notEqual(NO, YES, @"equal: NO != YES")
  notEqual(YES, NO, @"equal: YES != NO")

  equal(1.2f, 1.2f, @"equal: 1.2 == 1.2")
  notEqual(1.2f, 3.14159, @"equal: 1.2 != 3.14159")
}

@end
