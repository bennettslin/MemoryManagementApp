//
//  ViewController.m
//  MemoryManagementApp
//
//  Created by Bennett Lin on 2/13/14.
//  Copyright (c) 2014 Bennett Lin. All rights reserved.
//

#import "ViewController.h"
#import "BlockBaby.h"

@interface ViewController ()

//@property (strong, nonatomic) NSMutableArray *eightCharArray;

@end

@implementation ViewController

-(void)viewDidLoad {
  [super viewDidLoad];

  static int i = 8;
  int n;
  char *myArray;
  myArray = (char *)calloc(i, sizeof(char));
  
  for (n = 0; n < i; n++) {
  strcpy(&myArray[n], "a");
  printf ("%s",&myArray[n]);
  }

  for (n = 0; n < i; n++) {
  strcpy(&myArray[n], "b");
  printf ("%s",&myArray[n]);
  }

  free (myArray);
  
  
  for (int i = 0; i < 50000; i++) {
    BlockBaby *myBlockBaby = [[[BlockBaby alloc] init] autorelease];
    [myBlockBaby callBlock];
    [myBlockBaby dealloc];
  }

  
}

-(void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

@end
