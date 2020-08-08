//
//  BaseVC.h
//  Learn-ObjectiveC
//
//  Created by Developer on 8/8/20.
//  Copyright © 2020 RYRA Circuit. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseVC : UIViewController <UITextFieldDelegate, UITextViewDelegate>

- (void)directToPath:(NSString *)storyboard :(NSString *)controller;
- (void)pushToViewController:(NSString *)storyboard :(NSString *)controller;
- (void)presentViewController:(NSString *)storyboard :(NSString *)viewController :(UIModalTransitionStyle)style;
- (void)setDelegatesForTextItems:(NSMutableArray *)tfs :(NSMutableArray *)tvs;

@end

NS_ASSUME_NONNULL_END
