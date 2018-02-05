

#import "SCTabBarController.h"
#import "SCHomeViewController.h"
#import "SCExploreViewController.h"

typedef NS_ENUM(NSInteger, SCTabBarType) {
    SCTabBarTypeHome,
    SCTabBarTypeExplor
};

@interface SCTabBarController ()

@end

@implementation SCTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTabBarViewController];
}

#pragma mark - private methods

- (void)setupTabBarViewController
{
    self.viewControllers = [self tabBarControllers];
   
}

- (NSArray <UIViewController *>*)tabBarControllers
{
    NSArray *viewControllers = @[[self homeNavigationViewController], [self exploreNavigationViewController]];
    return viewControllers;
}

- (UIViewController *)homeNavigationViewController
{
    SCHomeViewController *homeViewController = [[SCHomeViewController alloc] initWithNibName:NSStringFromClass([SCHomeViewController class]) bundle:nil];
    homeViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Home", nil) image:[UIImage imageNamed:@"Events"] selectedImage:[UIImage imageNamed:@"Events_selected"]];
    homeViewController.tabBarItem.tag = 0;
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:homeViewController];
    return navigationController;
}

- (UIViewController *)exploreNavigationViewController
{
    SCExploreViewController *exploreViewController = [[SCExploreViewController alloc] initWithNibName:NSStringFromClass([SCExploreViewController class]) bundle:nil];
    exploreViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Explore", nil) image:[UIImage imageNamed:@"Explore"] selectedImage:[UIImage imageNamed:@"Explore_selected"]];
    exploreViewController.tabBarItem.tag = 1;
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:exploreViewController];
    return navigationController;
}

@end
