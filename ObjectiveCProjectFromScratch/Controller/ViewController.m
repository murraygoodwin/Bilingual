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
- (void)createAPerson:(NSString*) newPersonName;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  self.myNumber = 8;
  self.myString = @"Murray Murray Murray";
    
//  [self printSomeStuff];
  [self createMurray];
  [self createAPerson: @"Tony"];
}
  
- (void)printSomeStuff {
  NSLog(@"%d", self.myNumber);
  NSLog(@"%@", self.myString);
}

- (void)createAPerson:(NSString*) newPersonName {
  Person *newPerson = [[Person alloc] init];
  
  newPerson.name = newPersonName;
  newPerson.gender = @"Male";
  newPerson.height = 181;
  newPerson.weight = 79;
  
  NSLog(@"Successfully created %@", newPerson.name);
  NSLog(@"%@", newPerson.gender);
  NSLog(@"%d", newPerson.height);
  NSLog(@"%d", newPerson.weight);
}
  
- (void)createMurray {
  Person *newPerson = [[Person alloc] init];
  
  newPerson.name = @"Murray";
  newPerson.gender = @"Male";
  newPerson.height = 181;
  newPerson.weight = 79;
  
  NSLog(@"Successfully created Murray");
  NSLog(@"%@", newPerson.gender);
  NSLog(@"%d", newPerson.height);
  NSLog(@"%d", newPerson.weight);
  
}

//- (int) getNumberOfFingersAfterNastyAccident:(int) fingersToStartWith fingersLostInTheBlender: (int) fingersLost fingersLostAfterTheSharkTurnedUp: (int) fingersLostAgain {
//  return fingersToStartWith - fingersLost - fingersLostAgain;
//}

@end
