//
//  NewViewController.m
//  AuthClient
//
//  Created by James Nocentini on 13/01/2013.
//  Copyright (c) 2013 nsscreencast. All rights reserved.
//

#import "NewViewController.h"
#import "ViewController.h"

@interface NewViewController ()

@end

@implementation NewViewController

+ (void)presentToNewViewController:(UIViewController *)viewController {
    NewViewController *newviewcontroller= [[NewViewController alloc] init];
    UINavigationController *navController = [[UINavigationController alloc]
                                             initWithRootViewController:newviewcontroller];
    [viewController presentViewController:navController
                                 animated:YES
                               completion:nil];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel
                                                                                          target:self
                                                                                          action:@selector(cancel:)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
