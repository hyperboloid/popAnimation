//
//  SpringAnimationController.h
//  popAnimation
//
//  Created by Michael Wilson on 8/12/14.
//
//

#import <UIKit/UIKit.h>

@interface SpringAnimationController : UIViewController

@property (nonatomic, retain) UIView *object;
@property (nonatomic, assign) CGPoint start;
@property (nonatomic, assign) CGPoint velocity;

@end
