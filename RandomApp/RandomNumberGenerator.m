//
//  RandomNumberGenerator.m
//  RandomApp
//
//  Created by Chinmay on 22/12/12.
//  Copyright (c) 2012 Chinmay. All rights reserved.
//

#import "RandomNumberGenerator.h"

const int INIT_MAX_6DIGIT = 999999;

@implementation RandomNumberGenerator

@synthesize maxNumber = _maxNumber;
@synthesize minNumber = _minNumber;

- (id)init
{
    self = [super init];
    if (self) {
        self.minNumber = 0;
        self.maxNumber = INIT_MAX_6DIGIT;
    }
    return self;
}

- (int) generateNewRandomNumber
{
    int range = self.maxNumber - self.minNumber;
    
    return arc4random_uniform(range) + self.minNumber;
}

@end
