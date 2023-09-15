//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Natasha Machado on 2023-09-14.
//  Copyright © 2023 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize:(PizzaSize)size toppings:(NSArray<NSString *> *)toppings {
  self = [super init];
  if (self) {
    _size = size;
    _toppings = toppings;
  }
  return self;
}

@end
