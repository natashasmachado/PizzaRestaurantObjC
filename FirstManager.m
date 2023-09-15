//
//  FirstManager.m
//  PizzaRestaurant
//
//  Created by Natasha Machado on 2023-09-14.
//  Copyright © 2023 Lighthouse Labs. All rights reserved.
//

#import "FirstManager.h"

@implementation FirstManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
  if ([toppings containsObject:@"anchovies"]) {
    NSLog(@"You can't add anchovies.");
    return NO;
  }
  return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
  return NO;
}

@end

