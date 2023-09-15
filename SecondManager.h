//
//  SecondManager.h
//  PizzaRestaurant
//
//  Created by Natasha Machado on 2023-09-14.
//  Copyright © 2023 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliveryService.h" 

@interface SecondManager : NSObject <KitchenDelegate>

@property (nonatomic, strong) DeliveryService *DeliveryService; 

@end
