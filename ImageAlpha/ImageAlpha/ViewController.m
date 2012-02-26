//
//  ViewController.m
//  ImageAlpha
//
//  Created by Diego Faria on 12/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    indexImg = 0;
    
    pgImgAtual.numberOfPages = 5;
    pgImgAtual.currentPage = indexImg;
    
    [scrollImgs setContentSize:CGSizeMake([pgImgAtual numberOfPages] * 320, 460)];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(void)dealloc
{
    [imgAtual release];
    [imgAnterior release];
    [imgProxima release];
    [pgImgAtual release];
    [scrollImgs release];
    [sliderAlpha release];
    
    [super dealloc];
}

#pragma mark - IBAction

-(IBAction)sliderAlphaChanged:(UISlider *)slider
{
    scrollImgs.alpha = slider.value;
}

#pragma mark - UIScrollViewDelegate

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{   
    CGFloat pageWidth = scrollView.frame.size.width;
    int currentPage = floor((scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    [pgImgAtual setCurrentPage:currentPage];
    
    imgAnterior.image = [UIImage imageNamed:[NSString stringWithFormat:@"imagem%d.png", currentPage - 1]];
    imgAtual.image = [UIImage imageNamed:[NSString stringWithFormat:@"imagem%d.png", currentPage]];
    imgProxima.image = [UIImage imageNamed:[NSString stringWithFormat:@"imagem%d.png", currentPage + 1]];
    
    imgProxima.frame = CGRectMake(320* (currentPage + 1), 0, 320, 460);
    imgAtual.frame = CGRectMake(320* (currentPage ), 0, 320, 460);
    imgAnterior.frame = CGRectMake(320* (currentPage - 1), 0, 320, 460);
}

@end
