//
//  BlockBaby.m
//  MemoryManagementApp
//
//  Created by Bennett Lin on 2/13/14.
//  Copyright (c) 2014 Bennett Lin. All rights reserved.
//

#import "BlockBaby.h"

@implementation BlockBaby

-(id)init {
  self = [super init];
  if (self) {
      // declare block
    self.myBlock = ^(NSString *myString) {
      [self putBlockStringIntoPropertyString:myString];
    };
  }
  return self;
}

-(void)putBlockStringIntoPropertyString:(NSString *)string {
  self.thisString = string;
  NSLog(@"this string %@", self.thisString);
  [self.thisString release];
}

-(void)callBlock {
  NSString *myString = @"hello";
  self.myBlock(myString);
  [self.myBlock release];
  [myString release];
}

@end

