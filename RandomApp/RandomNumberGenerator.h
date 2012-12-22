//
//  RandomNumberGenerator.h
//  RandomApp
//
//  Created by Chinmay on 22/12/12.
//  Copyright (c) 2012 Chinmay. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RandomNumberGenerator : NSObject

@property (nonatomic) int maxNumber;
@property (nonatomic) int minNumber;

- (int) generateNewRandomNumber;

@end
