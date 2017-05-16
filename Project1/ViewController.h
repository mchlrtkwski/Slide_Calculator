///////////////////////////////////////////////////////////
//  ViewController.h
//  Project1
//
//  Creates the properies associeated with the the view.
//  In addition imports the AudioPlayer Library for use.
//
//  **Interesting note '#<AVFoundation/AudioPlayer.h>'  **
//  **was producing "missing submodule errors. A quick  **
//  **google search yielded the result of just replacing**
//  **it with an umbrella header.                       **
//
//  Created by Michael Rutkowski on 9/22/16.
//  Copyright © 2016 Michael Rutkowski. All rights reserved.
//////////////////////////////////////////////////////////

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController

@property IBOutlet UITextField *result;
- (IBAction)takeValueBFrom: (UISlider *)bSlider;
- (IBAction)takeValueAFrom: (UISlider *)aSlider;
@property IBOutlet UITextField *boxA;
@property IBOutlet UITextField *boxB;
@end

