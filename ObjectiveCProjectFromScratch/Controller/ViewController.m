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

@property (weak, nonatomic) IBOutlet UITextField *nameField;


@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  self.myNumber = 8;
  self.myString = @"Murray Murray Murray";
    
//  [self printSomeStuff];
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
  newPerson.height = 200;
  newPerson.weight = 80;
  
  NSLog(@"Successfully created %@", newPerson.name);
  NSLog(@"%@", newPerson.gender);
  NSLog(@"%d", newPerson.height);
  NSLog(@"%d", newPerson.weight);
}
  
- (IBAction)loginButtonPressed:(UIButton *)sender {
  
  [self createAPerson: self.nameField.text];
}


@end
