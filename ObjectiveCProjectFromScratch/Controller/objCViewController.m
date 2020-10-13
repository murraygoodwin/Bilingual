//
//  ViewController.m
//  ObjectiveCProjectFromScratch
//
//  Created by Murray Goodwin on 09/10/2020.
//

#import "objCViewController.h"
#import "Person.h"
#import "ViewModel.h"

@interface objCViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameField;

@end

@implementation objCViewController

- (void)viewDidLoad {
  [super viewDidLoad];
}
  
- (void)createAPerson:(NSString*) newPersonID {
  Person *newPerson = [[Person alloc] init];
  
  newPerson.userID = newPersonID;
  newPerson.password = @"Password123";
  newPerson.loginCount = 23;
  newPerson.isOptedInForAds = YES;
  
  NSLog(@"Current user: %@", newPerson.userID);
  NSLog(@"Password: %@", newPerson.password);
  NSLog(@"Login Count: %d", newPerson.loginCount);
  NSLog(@"Opted in for ads: %d", newPerson.isOptedInForAds);
  
  ViewModel *shared = [ViewModel shared];
  shared.currentUser = newPerson;
}
  
- (IBAction)loginButtonPressed:(UIButton *)sender {
  [self createAPerson: self.nameField.text];
}

@end
