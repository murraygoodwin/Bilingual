//
//  ViewModel.h
//  ObjectiveCProjectFromScratch
//
//  Created by Murray Goodwin on 09/10/2020.
//

#ifndef ViewModel_h
#define ViewModel_h
#import "Person.h"
#import <Foundation/Foundation.h>

@interface ViewModel : NSObject

@property Person *currentUser;
+ (id)shared;

@end

#endif /* ViewModel_h */
