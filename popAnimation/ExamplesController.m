//
//  ExamplesController.m
//  popAnimation
//
//  Created by Michael Wilson on 8/11/14.
//
//

#import "ExamplesController.h"

@implementation ExamplesController

@synthesize basicAnimationController;
@synthesize springAnimationController;
@synthesize decayAnimationController;

- (id)init {
    self = [super init];
    if (self) {

        basicAnimationController = [[BasicAnimationController alloc] init];
        basicAnimationController.tabBarItem = [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Basic Animation", @"Basic Animation") image:nil tag:0];

        springAnimationController = [[SpringAnimationController alloc] init];
        springAnimationController.tabBarItem = [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Spring Animation", @"Spring Animation") image:nil tag:0];

        decayAnimationController = [[DecayAnimationController alloc] init];
        decayAnimationController.tabBarItem = [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Decay Animation", @"Decay Animation") image:nil tag:0];

        self.viewControllers = @[basicAnimationController, springAnimationController, decayAnimationController];
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    [self.navigationController setNavigationBarHidden:YES animated:NO];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
