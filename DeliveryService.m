//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Natasha Machado on 2023-09-14.
//  Copyright © 2023 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"
#import "DeliveryCar.h"

@interface DeliveryService ()

@property (nonatomic, strong) NSMutableArray<NSString *> *deliveredPizzas;
@property (nonatomic, strong) DeliveryCar *deliveryCar;

@end

@implementation DeliveryService

- (instancetype)init {
  self = [super init];
  if (self) {
    _deliveredPizzas = [NSMutableArray array];
    _deliveryCar = [DeliveryCar new];
  }
  return self;
}

- (void)deliverPizza:(Pizza *)pizza {
  [self.deliveredPizzas addObject:[self pizzaDescription:pizza]];
  [self.deliveryCar deliverPizza:pizza];
}

- (NSArray<NSString *> *)deliveredPizzaDescriptions {
  return [self.deliveredPizzas copy];
}

- (NSString *)pizzaDescription:(Pizza *)pizza {
  NSString *sizeString = @"";
  switch (pizza.size) {
    case Small:
      sizeString = @"Small";
      break;
    case Medium:
      sizeString = @"Medium";
      break;
    case Large:
      sizeString = @"Large";
      break;
  }
  
  NSString *toppingsString = [pizza.toppings componentsJoinedByString:@", "];
  
  return [NSString stringWithFormat:@"%@ pizza with toppings: %@", sizeString, toppingsString];
}

@end
