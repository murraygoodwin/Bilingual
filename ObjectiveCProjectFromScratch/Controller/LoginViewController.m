//
//  ViewController.m
//  ObjectiveCProjectFromScratch
//
//  Created by Murray Goodwin on 09/10/2020.
//

#import "LoginViewController.h"
#import "Person.h"
#import "ViewModel.h"
#import "Bilingual-Swift.h"

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

#pragma mark Set the current user
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
  
  ViewModel *viewModel = [[ViewModel alloc] init];
  _viewModel = viewModel;
  _viewModel.currentUser = newPerson;
  NSLog(@"User set in the ViewModel as: %@", _viewModel.currentUser.userID);
}

#pragma mark Validation and login
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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
  if ([segue.identifier isEqual: @"goInside"]) {

    UINavigationController *destinationNavigationController = [segue destinationViewController];
    InsideViewController *destinationViewController = (InsideViewController *)([destinationNavigationController viewControllers][0]);
    destinationViewController.viewModel = _viewModel;
 }
}

@end
