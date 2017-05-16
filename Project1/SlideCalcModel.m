/////////////////////////////////////////////////////////////
//  SlideCalcModel.m
//  Project1
//
//  Created by Michael Rutkowski on 9/22/16.
//  Copyright © 2016 Michael Rutkowski. All rights reserved.
/////////////////////////////////////////////////////////////

#import "SlideCalcModel.h"

@interface SlideCalcModel()

@property (nonatomic) int modelSlideValueA;
@property (nonatomic) int modelSlideValueB;
@property (nonatomic) int modelCalcResult;

@end

@implementation SlideCalcModel



- (int)slideValueA{
    return self.modelSlideValueA;
}


//Update all Values
- (void)setSlideValueA:(int)aValue{
    self.modelSlideValueA = aValue;
    self.modelCalcResult = aValue * self.modelSlideValueB;
}



- (int)slideValueB{
    return self.modelSlideValueB;
}

//Update all Values
- (void)setSlideValueB:(int)aValue{
    self.modelSlideValueB = aValue;
    self.modelCalcResult = aValue * self.modelSlideValueA;
}

- (int)calcResult{
   return self.modelCalcResult;
    
}

@end
