//
//  ViewModel.m
//  ObjectiveCProjectFromScratch
//
//  Created by Murray Goodwin on 09/10/2020.
//

#import <Foundation/Foundation.h>
#import "ViewModel.h"

@implementation ViewModel : NSObject

// TODO: Understand how this is working...
// https://www.galloway.me.uk/tutorials/singleton-classes/

+ (id)shared {
    static ViewModel *shared = nil;
    @synchronized(self) {
        if (shared == nil)
          shared = [[self alloc] init];
    }
    return shared;
}

@end
