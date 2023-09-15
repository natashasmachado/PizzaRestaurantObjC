//
//  SecondManager.m
//  PizzaRestaurant
//
//  Created by Natasha Machado on 2023-09-14.
//  Copyright © 2023 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"

@interface SecondManager : NSObject <KitchenDelegate>

@end

@implementation SecondManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
  return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
  return YES;
}

@end
