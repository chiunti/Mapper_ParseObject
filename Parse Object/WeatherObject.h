//
//  WeatherObject.h
//  Parse Object
//
//  Created by admin on 28/12/15.
//  Copyright © 2015 chiuntisoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherObject : NSObject
@property (nonatomic,strong) NSString *ID;
@property (nonatomic,strong) NSString *main;
@property (nonatomic,strong) NSString *weather_description;
@property (nonatomic,strong) NSString *icon;
@end
