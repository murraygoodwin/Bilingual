//
//  ViewModel.h
//  ObjectiveCProjectFromScratch
//
//  Created by Murray Goodwin on 09/10/2020.
//

#ifndef ViewModel_h
#define ViewModel_h

@interface ViewModel : NSObject

@property NSString *userID;
@property NSString *password;
@property int loginCount;
@property _Bool userIsOptedInForAds;

@end

#endif /* ViewModel_h */
