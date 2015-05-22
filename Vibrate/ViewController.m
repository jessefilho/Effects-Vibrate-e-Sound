//
//  ViewController.m
//  Vibrate
//
//  Created by jesse filho on 5/20/15.
//  Copyright (c) 2015 Jesse Filho. All rights reserved.
//

#import "ViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)vibrate:(id)sender {
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
}

- (IBAction)effectsound:(id)sender {
    NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"canon" ofType:@".mp3"];
    SystemSoundID soundID;
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:soundPath], &soundID);
    AudioServicesPlaySystemSound(soundID);
    
}
@end
