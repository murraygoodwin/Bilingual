//
//  ViewController.h
//  ObjectiveCProjectFromScratch
//
//  Created by Murray Goodwin on 09/10/2020.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface ViewController : UIViewController
@property int myNumber;
@property NSString *myString;

- (void)createAPerson:(NSString*) newPersonName;
- (void)createMurray;

@end

