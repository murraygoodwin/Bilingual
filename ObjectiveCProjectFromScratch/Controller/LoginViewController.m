//
//  ViewController.m
//  ObjectiveCProjectFromScratch
//
//  Created by Murray Goodwin on 09/10/2020.
//

#import "LoginViewController.h"
#import "Person.h"
#import "ViewModel.h"

@interface LoginViewController()<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nameField;

@end

@implementation LoginViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  _nameField.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:YES];
  self.nameField.text = @"";
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

- (BOOL)usernameIsNotBlank {
  if ([self.nameField.text isEqual: @""]) {
    return NO; } else {
      return YES;
    }
}

- (IBAction)loginButtonPressed:(UIButton *)sender {
  if ([self usernameIsNotBlank]) {
    [self createAPerson: self.nameField.text];
    [self performSegueWithIdentifier: @"goInside" sender:self];
  }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
  if ([self usernameIsNotBlank]) {
    [self createAPerson: self.nameField.text];
    [self performSegueWithIdentifier: @"goInside" sender:self];
    return YES;
  } else {
    return NO;
  }
}

@end
