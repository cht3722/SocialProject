

#import "AppDelegate.h"
#import "SCTabBarController.h"
#import "SCLocationManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self updateLocation];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    SCTabBarController *tabBarVC = [SCTabBarController new];
    self.window.rootViewController = tabBarVC;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    [[SCLocationManager sharedManager] stopLoadUserLocation];
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    [self updateLocation];
}

- (void)updateLocation
{
    if ([SCLocationManager isLocationServicesEnabled]) {
        SCLocationManager *locationManager  = [SCLocationManager sharedManager];
        [locationManager startLoadUserLocation];
    }
}

@end
