//
//  AppDelegate.h
//  ImageAlpha
//
//  Created by Diego Faria on 12/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ListProjectsViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ListProjectsViewController *viewController;

@property (strong, nonatomic) UINavigationController* navigationController;

@end
