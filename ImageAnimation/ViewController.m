//
//  ViewController.m
//  ImageAnimation
//
//  Created by Newton Osinowo on 2014-07-07.
//  Copyright (c) 2014 Detech Technologies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

int ani=1;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIImage* inew = [UIImage imageNamed:@"newton.JPG"];
    [_ImageMove setImage:inew];
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(100, 100), YES, 0.0);
    [inew drawInRect:CGRectMake(0, 0, 100, 100)];
    
    UIGraphicsEndImageContext();
    
    UIImage* ijay = [UIImage imageNamed:@"jay.JPG"];
    [_ImageMove2 setImage:ijay];
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(100, 100), YES, 0.0);
    [inew drawInRect:CGRectMake(0, 0, 100, 100)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)OnClickMove:(id)sender {
    [UIView animateWithDuration:4.0
                          delay:0.0
                        options: UIViewAnimationOptionAllowUserInteraction
                     animations:^{
                         if (ani == 1) {
                             _ImageMove2.frame = CGRectMake(166, 42, 145, 145);
                             _ImageMove.frame = CGRectMake(9, 300, 145, 145);
                             ani=0;
                         }
                         else
                         {
                             _ImageMove2.frame = CGRectMake(166, 300, 145, 145);
                             _ImageMove.frame = CGRectMake(9, 42, 145, 145);
                             ani=1;
                         }
                     }
                     completion:nil];
}

- (IBAction)OnClickAnimate:(id)sender {
    if (ani == 1) {
    
    [UIView animateWithDuration:5
                          delay:0.2f
                        options:UIViewAnimationCurveEaseInOut | UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse
                     animations:^(){_ImageMove2.frame=CGRectMake(166, 42, 145, 145);}
                     completion:^(BOOL fin) {
                     }];
    
    [_ImageMove2 setUserInteractionEnabled:YES];
    
    [UIView animateWithDuration:5
                          delay:0.2f
                        options:UIViewAnimationCurveEaseInOut | UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse
                     animations:^(){_ImageMove.frame=CGRectMake(9, 300, 145, 145);}
                     completion:^(BOOL fin) {
                     }];
    [_ImageMove setUserInteractionEnabled:YES];
        ani=0;
    
    }
    else
    {
        [UIView animateWithDuration:5
    delay:0.2f
    options:UIViewAnimationCurveEaseInOut | UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse
    animations:^(){_ImageMove2.frame=CGRectMake(166, 300, 145, 145);}
    completion:^(BOOL fin) {
    }];
        
        [_ImageMove2 setUserInteractionEnabled:YES];
        
        [UIView animateWithDuration:5
                              delay:0.2f
                            options:UIViewAnimationCurveEaseInOut | UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse
                         animations:^(){_ImageMove.frame=CGRectMake(9, 42, 145, 145);}
                         completion:^(BOOL fin) {
                         }];
        [_ImageMove setUserInteractionEnabled:YES];
        ani=1;
    }
    
    
    
}
@end
