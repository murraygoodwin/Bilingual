//
//  ViewController.h
//  ObjectiveCProjectFromScratch
//
//  Created by Murray Goodwin on 09/10/2020.
//

#import <UIKit/UIKit.h>
#import "Person.h"
#import "ViewModel.h"

@interface LoginViewController : UIViewController
- (void)createAPerson:(NSString*) newPersonID;
@property ViewModel* viewModel;

@end

