//
//  ViewController.m
//  ObjectiveCProjectFromScratch
//
//  Created by Murray Goodwin on 09/10/2020.
//

#import "ViewController.h"
#import "Person.h"
#import "ViewModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  self.myNumber = 8;
  self.myString = @"Murray Murray Murray";
    
//  [self printSomeStuff];
  [self createAPerson];
}

- (void)printSomeStuff {
  NSLog(@"%d", self.myNumber);
  NSLog(@"%@", self.myString);
}

- (void)createAPerson {
  
  Person *murray = [[Person alloc] init];
  
  murray.name = @"Murray";
  murray.gender = @"Male";
  murray.height = 181;
  murray.weight = 79;
  
  NSLog(@"%@", murray.name);
  NSLog(@"%@", murray.gender);
  NSLog(@"%d", murray.height);
  NSLog(@"%d", murray.weight);
  
}

@end
