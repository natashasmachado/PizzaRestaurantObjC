//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"

#import "FirstManager.h"

#import "SecondManager.h"


int main(int argc, const char * argv[])
{
  @autoreleasepool {
    NSLog(@"Please pick your pizza size and toppings:");
    FirstManager *firstManager = [FirstManager new];
    SecondManager *secondManager = [SecondManager new];
    
    Kitchen *restaurantKitchen = [Kitchen new];
    restaurantKitchen.delegate = firstManager;
    
    while (TRUE) {
      NSLog(@"> ");
      char str[100];
      fgets(str, 100, stdin);
      
      NSString *inputString = [[NSString alloc] initWithUTF8String:str];
      inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
      if ([inputString isEqualToString:@"switch manager"]) {
        restaurantKitchen.delegate = firstManager;
        NSLog(@"Switched to First Manager.");
      } else if ([inputString isEqualToString:@"switch second"]) {
        restaurantKitchen.delegate = secondManager;
        NSLog(@"Switched to Second Manager.");
      } else if ([inputString isEqualToString:@"switch none"]) {
        restaurantKitchen.delegate = nil;
        NSLog(@"No manager selected.");
      } else {
        NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
        NSString *sizeString = commandWords[0];
        NSString *toppingsString = [inputString substringFromIndex:[sizeString length] + 1];
        
        PizzaSize size = Small;
        if ([sizeString isEqualToString:@"medium"]) {
          size = Medium;
        } else if ([sizeString isEqualToString:@"large"]) {
          size = Large;
        }
        
        NSArray *toppings = [toppingsString componentsSeparatedByString:@","];
        
        Pizza *pizza = [restaurantKitchen makePizzaWithSize:size toppings:toppings];
        if (pizza) {
          NSLog(@"You ordered is done");
          NSLog(@"Size: %ld, Toppings: %@", (long)pizza.size, pizza.toppings);
        }
      }
    }
  }
  return 0;
}
