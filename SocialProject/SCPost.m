//
//  SCPost.m
//  SocialProject
//
//  Created by Haotian Chen on 2017/8/17.
//  Copyright © 2017年 Haotian Chen. All rights reserved.
//

#import "SCPost.h"

@implementation SCPost
- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    
    if (self = [super init]) {
        self.name = dict[@"user"];
        self.message = dict[@"message"];
        CLLocationDegrees latitude = [dict[@"location"][@"lat"] doubleValue];
        CLLocationDegrees longtitude = [dict[@"location"][@"lon"] doubleValue];
        self.location = [[CLLocation alloc] initWithLatitude:latitude longitude:longtitude];
        return self;
    }
    return nil;
}
@end
