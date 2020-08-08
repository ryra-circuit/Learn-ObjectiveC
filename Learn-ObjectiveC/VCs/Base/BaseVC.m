//
//  BaseVC.m
//  Learn-ObjectiveC
//
//  Created by Developer on 8/8/20.
//  Copyright © 2020 RYRA Circuit. All rights reserved.
//

#import "BaseVC.h"
#import "AppDelegate.h"
#import "SceneDelegate.h"

@interface BaseVC ()

@end

@implementation BaseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (void)setDelegatesForTextItems:(NSMutableArray *)tfs :(NSMutableArray *)tvs {

    for (UITextField *tf in tfs) {
        tf.delegate = self;
    }
    
    for (UITextView *tv in tvs) {
        tv.delegate = self;
    }
}


#pragma mark - Direct to path (Set App root)
- (void)directToPath:(NSString *)storyboard :(NSString *)controller {
    printf("**** DIRECT TO PATH");
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName: storyboard bundle: nil];
    UINavigationController *topController = [sb instantiateViewControllerWithIdentifier: controller];
    
    //MARK: iOS 13 or later
    if (@available(iOS 13.0, *)) {
        
        //MARK: Method 1
        SceneDelegate *sceneDelegate = (SceneDelegate *)[[[UIApplication sharedApplication] connectedScenes].allObjects.firstObject delegate];
        
        //MARK: Method 2
        //SceneDelegate *sceneDelegate = (SceneDelegate *)self.parentViewController.view.window.windowScene.delegate;
        
        /// Set from this VC
        //sceneDelegate.window.rootViewController = topController;
        //[sceneDelegate.window makeKeyAndVisible];
        
        /// Set from SceneDelegate
        [sceneDelegate setAsRoot:topController];
        
    //MARK: iOS 12 or earlier
    } else {
        AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        
        /// Set from this VC
        //appDelegate.window.rootViewController = topController;
        //[appDelegate.window makeKeyAndVisible];
        
        /// Set from SceneDelegate
        [appDelegate setAsRoot:topController];
    }
}


#pragma mark - Push/Navigate to ViewController
- (void)pushToViewController:(NSString *)storyboard :(NSString *)viewController {
    printf("**** PUSH TO VIEW CONTROLLER");
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName: storyboard bundle: nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier: viewController];
    
    [self.navigationController pushViewController: vc animated: YES];
}


#pragma mark - Present/Pop ViewController
- (void)presentViewController:(NSString *)storyboard :(NSString *)viewController :(UIModalTransitionStyle)style {
    printf("**** PUSH TO VIEW CONTROLLER");
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName: storyboard bundle: nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier: viewController];
    vc.modalTransitionStyle = style;
    
    [self presentViewController: vc animated: YES completion: nil];
}


#pragma mark - Get main window of the app
- (UIWindow *)getMainWindow {
    
    UIWindow *mainWindow = nil;
    
    if (@available(iOS 13.0, *) ) {
       mainWindow = [UIApplication sharedApplication].windows.firstObject;
       [mainWindow makeKeyWindow];
    } else {
        mainWindow = [UIApplication sharedApplication].keyWindow;
    }
    
    return mainWindow;
}

@end
