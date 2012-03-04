//
//  ViewController.h
//  ImageAlpha
//
//  Created by Diego Faria on 12/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate>
{
    IBOutlet UIImageView* imgAnterior;
    IBOutlet UIImageView* imgAtual;
    IBOutlet UIImageView* imgProxima;
    
    IBOutlet UIPageControl* pgImgAtual;
    
    IBOutlet UIScrollView* scrollImgs;
    
    IBOutlet UISlider* sliderAlpha;
    
    IBOutlet UISwitch* swtChangeImg;
    
    NSTimer* autoChangeImg;
    
    int indexImg;
}

-(void)trocarImg;

-(IBAction)switchImageAuto:(UISwitch*)switchAuto;
-(IBAction)sliderAlphaChanged:(UISlider*)slider;

@end
