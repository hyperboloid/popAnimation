//
//  BasicAnimationController.m
//  popAnimation
//
//  Created by Michael Wilson on 8/12/14.
//
//

#import "BasicAnimationController.h"
#import <pop/POPBasicAnimation.h>

@implementation BasicAnimationController

@synthesize object;

- (id)init {
    self = [super init];
    if (self) {

        self.view.backgroundColor = [UIColor whiteColor];

        object = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
        object.backgroundColor = [UIColor redColor];

        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped:)];
        [self.view addGestureRecognizer:tapGesture];

        [self.view addSubview:object];

    }
    return self;
}

- (void) viewTapped:(UITapGestureRecognizer *)tapGesture {

    CGPoint tappedLocation = [tapGesture locationInView:self.view];
    POPBasicAnimation *basicAnimation = [object pop_animationForKey:@"basicAnimation"];

    if (basicAnimation == nil) {
        basicAnimation = [POPBasicAnimation animationWithPropertyNamed:kPOPViewCenter];
        basicAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        [object pop_addAnimation:basicAnimation forKey:@"basicAnimation"];
    }
    basicAnimation.toValue = [NSValue valueWithCGPoint:tappedLocation];

}

@end
