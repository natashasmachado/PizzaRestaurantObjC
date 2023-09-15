//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Natasha Machado on 2023-09-14.
//  Copyright © 2023 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@interface DeliveryService : NSObject

- (void)deliverPizza:(Pizza *)pizza;
- (NSArray<NSString *> *)deliveredPizzaDescriptions;

@end
