///////////////////////////////////////////////////////////////////////////
//  ViewController.m
//  Project1
//
//  This class creates and starts and Audioplayer object.
//  Tuitorial was found at http://codewithchris.com/avaudioplayer-tutorial/
//  The hip hop jams you are listening to were created in about 20 minutes
//  messing around in Garageband.
//
//  Created by Michael Rutkowski on 9/22/16.
//  Copyright © 2016 Michael Rutkowski. All rights reserved.
//////////////////////////////////////////////////////////////////////////

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()
{
    //Creates an Audioplayer object
    AVAudioPlayer *audioPlayer;
}
@end

@implementation ViewController

//Updates Result box and B box as user slides the slider
- (IBAction)takeValueBFrom:(UISlider *)bSlider{
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    appDelegate.model.slideValueB = bSlider.value;
    self.boxB.text = [NSString stringWithFormat:@"%d", appDelegate.model.slideValueB];
    self.result.text = [NSString stringWithFormat:@"%d", appDelegate.model.calcResult];
}

//Updates Result box and A box as user slides the slider
- (IBAction)takeValueAFrom:(UISlider *)aSlider{
   AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    appDelegate.model.slideValueA = aSlider.value;
    self.boxA.text = [NSString stringWithFormat:@"%d", appDelegate.model.slideValueA];
    self.result.text = [NSString stringWithFormat:@"%d", appDelegate.model.calcResult];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    //Locate the file
    NSString *path = [NSString stringWithFormat:@"%@/my_mix.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *url = [NSURL fileURLWithPath:path];
    //Initialize and play the jam!
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    [audioPlayer play];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
