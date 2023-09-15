//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray<NSString *> *)toppings {
  if ([self.delegate respondsToSelector:@selector(kitchen:shouldMakePizzaOfSize:andToppings:)]) {
    if (![self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
      NSLog(@"Pizza type not accepted.");
      return nil;
    }
  }
  
  PizzaSize pizzaSize = size;
  
  if ([self.delegate respondsToSelector:@selector(kitchenShouldUpgradeOrder:)]) {
    if ([self.delegate kitchenShouldUpgradeOrder:self]) {
      NSLog(@"Order changed to large.");
      pizzaSize = Large;
    }
  }
  
  Pizza *pizza = [[Pizza alloc] initWithSize:pizzaSize toppings:toppings];
  
  if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
    [self.delegate kitchenDidMakePizza:pizza];
  }
  
  return pizza;
}

+ (Pizza *)largePepperoni {
  return [[Pizza alloc] initWithSize:Large toppings:@[@"pepperoni"]];
}

+ (Pizza *)meatLoversWithSize:(PizzaSize)size {
  NSArray<NSString *> *toppings = @[@"sausage", @"mushroom", @"pepperoni", @"bacon"];
  return [[Pizza alloc] initWithSize:size toppings:toppings];
}


@end
