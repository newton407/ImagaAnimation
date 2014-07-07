//
//  ViewController.h
//  ImageAnimation
//
//  Created by Newton Osinowo on 2014-07-07.
//  Copyright (c) 2014 Detech Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *ImageMove;
@property (weak, nonatomic) IBOutlet UIImageView *ImageMove2;
- (IBAction)OnClickMove:(id)sender;
- (IBAction)OnClickAnimate:(id)sender;

@end
