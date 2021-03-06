// Copyright 2011 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

//
//  IOSPrimitiveClassTest.m
//  JreEmulation
//
//  Created by Tom Ball on 1/23/12.
//

#import "IOSPrimitiveClass.h"
#import "IOSPrimitiveArray.h"
#import "java/lang/Boolean.h"
#import "java/lang/Byte.h"
#import "java/lang/Character.h"
#import "java/lang/Double.h"
#import "java/lang/Float.h"
#import "java/lang/Integer.h"
#import "java/lang/Long.h"
#import "java/lang/Short.h"
#import <SenTestingKit/SenTestingKit.h>

// Unit tests for IOSPrimitiveClass.
@interface IOSPrimitiveClassTest : SenTestCase {
}

@end

@implementation IOSPrimitiveClassTest

- (void)testBooleanType {
  NSString *objectTypeName = [[JavaLangBoolean_get_TRUE__() getClass] getName];
  STAssertEqualObjects(objectTypeName, @"java.lang.Boolean",
                       @"incorrect object type name");
  NSString *primitiveTypeName = [JavaLangBoolean_get_TYPE_() getName];
  STAssertEqualObjects(primitiveTypeName, @"boolean",
                       @"incorrect primitive type name");
  NSString *arrayTypeName = [[[IOSBooleanArray arrayWithLength:0] getClass] getName];
  STAssertEqualObjects(arrayTypeName, @"[Z", @"incorrect array type name");
}

- (void)testByteType {
  IOSClass *javaByteClass = [[JavaLangByte valueOfWithByte:42] getClass];
  NSString *objectTypeName = [javaByteClass getName];
  STAssertEqualObjects(objectTypeName, @"java.lang.Byte",
                       @"incorrect object type name");
  NSString *primitiveTypeName = [JavaLangByte_get_TYPE_() getName];
  STAssertEqualObjects(primitiveTypeName, @"byte",
                       @"incorrect primitive type name");
  IOSByteArray *byteArray = [IOSByteArray arrayWithLength:0];
  NSString *arrayTypeName = [[byteArray getClass] getName];
  STAssertEqualObjects(arrayTypeName, @"[B", @"incorrect array type name");
}

- (void)testCharType {
  JavaLangCharacter *javaCharacter = [JavaLangCharacter valueOfWithChar:'x'];
  NSString *objectTypeName = [[javaCharacter getClass] getName];
  STAssertEqualObjects(objectTypeName, @"java.lang.Character",
                       @"incorrect object type name");
  NSString *primitiveTypeName = [JavaLangCharacter_get_TYPE_() getName];
  STAssertEqualObjects(primitiveTypeName, @"char",
                       @"incorrect primitive type name");
  IOSCharArray *charArray = [IOSCharArray arrayWithLength:0];
  NSString *arrayTypeName = [[charArray getClass] getName];
  STAssertEqualObjects(arrayTypeName, @"[C", @"incorrect array type name");
}

- (void)testDoubleType {
  JavaLangDouble *javaDouble = [JavaLangDouble valueOfWithDouble:1.2];
  NSString *objectTypeName = [[javaDouble getClass] getName];
  STAssertEqualObjects(objectTypeName, @"java.lang.Double",
                       @"incorrect object type name");
  NSString *primitiveTypeName = [JavaLangDouble_get_TYPE_() getName];
  STAssertEqualObjects(primitiveTypeName, @"double",
                       @"incorrect primitive type name");
  IOSDoubleArray *doubleArray = [IOSDoubleArray arrayWithLength:0];
  NSString *arrayTypeName = [[doubleArray getClass] getName];
  STAssertEqualObjects(arrayTypeName, @"[D", @"incorrect array type name");
}

- (void)testFloatType {
  JavaLangFloat *javaFloat = [JavaLangFloat valueOfWithFloat:3.4f];
  NSString *objectTypeName = [[javaFloat getClass] getName];
  STAssertEqualObjects(objectTypeName, @"java.lang.Float",
                       @"incorrect object type name");
  NSString *primitiveTypeName = [JavaLangFloat_get_TYPE_() getName];
  STAssertEqualObjects(primitiveTypeName, @"float",
                       @"incorrect primitive type name");
  IOSFloatArray *floatArray = [IOSFloatArray arrayWithLength:0];
  NSString *arrayTypeName = [[floatArray getClass] getName];
  STAssertEqualObjects(arrayTypeName, @"[F", @"incorrect array type name");
}

- (void)testIntType {
  JavaLangInteger *javaInteger = [JavaLangInteger valueOfWithInt:42];
  NSString *objectTypeName = [[javaInteger getClass] getName];
  STAssertEqualObjects(objectTypeName, @"java.lang.Integer",
                       @"incorrect object type name");
  NSString *primitiveTypeName = [JavaLangInteger_get_TYPE_() getName];
  STAssertEqualObjects(primitiveTypeName, @"int",
                       @"incorrect primitive type name");
  IOSIntArray *intArray = [IOSIntArray arrayWithLength:0];
  NSString *arrayTypeName = [[intArray getClass] getName];
  STAssertEqualObjects(arrayTypeName, @"[I", @"incorrect array type name");
}

- (void)testLongType {
  JavaLangLong *javaLong = [JavaLangLong valueOfWithLong:42LL];
  NSString *objectTypeName = [[javaLong getClass] getName];
  STAssertEqualObjects(objectTypeName, @"java.lang.Long",
                       @"incorrect object type name");
  NSString *primitiveTypeName = [JavaLangLong_get_TYPE_() getName];
  STAssertEqualObjects(primitiveTypeName, @"long",
                       @"incorrect primitive type name");
  IOSLongArray *longArray = [IOSLongArray arrayWithLength:0];
  NSString *arrayTypeName = [[longArray getClass] getName];
  STAssertEqualObjects(arrayTypeName, @"[J", @"incorrect array type name");
}

- (void)testShortType {
  JavaLangShort *javaShort = [JavaLangShort valueOfWithShort:42];
  NSString *objectTypeName = [[javaShort getClass] getName];
  STAssertEqualObjects(objectTypeName, @"java.lang.Short",
                       @"incorrect object type name");
  NSString *primitiveTypeName = [JavaLangShort_get_TYPE_() getName];
  STAssertEqualObjects(primitiveTypeName, @"short",
                       @"incorrect primitive type name");
  IOSShortArray *shortArray = [IOSShortArray arrayWithLength:0];
  NSString *arrayTypeName = [[shortArray getClass] getName];
  STAssertEqualObjects(arrayTypeName, @"[S", @"incorrect array type name");
}

@end
