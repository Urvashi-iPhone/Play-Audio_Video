//
//  ViewController.m
//  PlayerExample(Audio-Video)
//
//  Created by MAC on 6/13/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import "ViewController.h"

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

- (IBAction)btn_video:(id)sender
{
    //NSURL *url = [NSURL URLWithString:@"https://www.youtube.com/watch?v=QuRSCU0tOKs"];
    
    NSURL *url=[NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"The.mp4" ofType:@"mp4"]];
    MPMoviePlayerViewController *player=[[MPMoviePlayerViewController alloc]initWithContentURL:url];
    
    [player.moviePlayer play];
    [self presentViewController:player animated:YES completion:nil];
}

- (IBAction)btn_songplay:(id)sender
{
    NSURL *url=[NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"Ram-leela" ofType:@"mp3"]];
    AVAudioPlayer *aud=[[AVAudioPlayer alloc]initWithContentsOfURL:url error:nil];
    aud.volume=100;
    [aud play];
    
}
@end
