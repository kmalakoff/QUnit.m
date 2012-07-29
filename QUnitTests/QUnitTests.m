//
//  QUnitTests.m
//  QUnitTests
//
//  Created by Kevin Malakoff on 7/29/12.
//  Copyright (c) 2012 Kevin Malakoff. All rights reserved.
//

#import "QUnitTests.h"
#import "QUnit.h"

@implementation QUnitTests

- (void)testExample
{
  equal(@"hello world", @"hello world", @"equal: strings work")
  notEqual(@"hello world", @"hello world!", @"notEqual: strings work")
}

@end
