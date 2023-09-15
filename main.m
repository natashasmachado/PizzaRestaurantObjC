//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"

int main(int argc, const char * argv[])
{
  @autoreleasepool {
    NSLog(@"Please pick your pizza size and toppings:");
    Kitchen *restaurantKitchen = [Kitchen new];
    
    while (TRUE) {
      NSLog(@"> ");
      char str[100];
      fgets(str, 100, stdin);
      
      NSString *inputString = [[NSString alloc] initWithUTF8String:str];
      inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
      
      NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
      
      // Check for common pizza requests
      if ([inputString isEqualToString:@"pepperoni"]) {
        Pizza *pizza = [Kitchen largePepperoni];
        NSLog(@"You ordered a large pepperoni pizza!");
        NSLog(@"Size: %ld, Toppings: %@", (long)pizza.size, pizza.toppings);
      } else if ([commandWords count] >= 2) {
        NSString *sizeString = commandWords[0];
        NSString *toppingsString = [inputString substringFromIndex:[sizeString length] + 1];
        
        PizzaSize size = Small; // Default size
        if ([sizeString isEqualToString:@"medium"]) {
          size = Medium;
        } else if ([sizeString isEqualToString:@"large"]) {
          size = Large;
        }
        
        NSArray *toppings = [toppingsString componentsSeparatedByString:@","];
        
        Pizza *pizza = [restaurantKitchen makePizzaWithSize:size toppings:toppings];
        NSLog(@"You ordered a pizza!");
        NSLog(@"Size: %ld, Toppings: %@", (long)pizza.size, pizza.toppings);
      } else {
        NSLog(@"Invalid input. Please specify size and toppings.");
      }
    }
  }
  return 0;
}
