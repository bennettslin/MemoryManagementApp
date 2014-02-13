//
//  BlockBaby.h
//  MemoryManagementApp
//
//  Created by Bennett Lin on 2/13/14.
//  Copyright (c) 2014 Bennett Lin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlockBaby : NSObject

@property (copy, nonatomic) void (^myBlock)(NSString *);
@property (strong, nonatomic) NSString *thisString;

-(void)callBlock;

@end
