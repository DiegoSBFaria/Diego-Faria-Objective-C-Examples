//
//  ViewController.h
//  ImageAlpha
//
//  Created by Diego Faria on 12/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIImageView* imgBackground;
    IBOutlet UISlider* sliderAlpha;
}

-(IBAction)sliderAlphaChanged:(UISlider*)slider;

@end