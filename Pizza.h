//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Natasha Machado on 2023-09-14.
//  Copyright © 2023 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, PizzaSize) {
  Small,
  Medium,
  Large
};

@interface Pizza : NSObject

@property (nonatomic, readonly) PizzaSize size;
@property (nonatomic, readonly) NSArray<NSString *> *toppings;

- (instancetype)initWithSize:(PizzaSize)size toppings:(NSArray<NSString *> *)toppings;

@end
