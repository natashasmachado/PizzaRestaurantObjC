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
  return [[Pizza alloc] initWithSize:size toppings:toppings];
}

+ (Pizza *)largePepperoni {
  return [[Pizza alloc] initWithSize:Large toppings:@[@"pepperoni"]];
}

+ (Pizza *)meatLoversWithSize:(PizzaSize)size {
  NSArray<NSString *> *toppings = @[@"sausage", @"pepperoni", @"bacon"];
  return [[Pizza alloc] initWithSize:size toppings:toppings];
}

@end
