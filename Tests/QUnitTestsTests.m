//
//  QUnitTestsTests.m
//  QUnitTests
//
//  Created by Kevin Malakoff on 7/29/12.
//  Copyright (c) 2012 Kevin Malakoff. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person
//  obtaining a copy of this software and associated documentation
//  files (the "Software"), to deal in the Software without
//  restriction, including without limitation the rights to use,
//  copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the
//  Software is furnished to do so, subject to the following
//  conditions:
//
//  The above copyright notice and this permission notice shall be
//  included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
//  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
//  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
//  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
//  OTHER DEALINGS IN THE SOFTWARE.
//

#import "QUnitTestsTests.h"
#import "QUnit.h"

@implementation QUnitTestsTests

- (void)test_version
{
  equal(QUnit.VERSION, @"0.1.1", @"expected version");
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
