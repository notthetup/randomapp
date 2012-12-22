//
//  RandomViewController.m
//  RandomApp
//
//  Created by Chinmay on 22/12/12.
//  Copyright (c) 2012 Chinmay. All rights reserved.
//

#import "RandomViewController.h"

@interface RandomViewController ()

@end

@implementation RandomViewController

RandomNumberGenerator * randGen;

@synthesize numberDisplay = _numberDisplay;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self becomeFirstResponder];
    
    [self updateRandomNumber];
        
    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(updateRandomNumber) userInfo:nil repeats:YES];
    
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if ( motion == UIEventSubtypeMotionShake )
    {
        [self updateRandomNumber];
    }
    
    [super motionEnded:motion withEvent:event];
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

- (void) updateRandomNumber
{
    if (randGen == nil)
    {
        randGen = [[RandomNumberGenerator alloc] init];
    }
    
    NSString * outputNumber = [NSString stringWithFormat:@"%d",[randGen generateNewRandomNumber]];
    self.numberDisplay.text = outputNumber;
}

@end
