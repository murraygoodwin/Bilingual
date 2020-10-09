//
//  Model.h
//  ObjectiveCProjectFromScratch
//
//  Created by Murray Goodwin on 09/10/2020.
//

#ifndef Model_h
#define Model_h
#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *userID;
@property NSString *password;
@property int loginCount;
@property _Bool isOptedInForAds;

@end

#endif /* Model_h */
