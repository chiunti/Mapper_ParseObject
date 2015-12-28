//
//  WeatherResponse.h
//  Parse Object
//
//  Created by admin on 29/11/15.
//  Copyright © 2015 chiuntisoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CoordObject.h"
#import "MainObject.h"
#import "CloudsObject.h"
#import "SysObject.h"
#import "WindObject.h"

@interface WeatherResponse : NSObject
@property (nonatomic,strong) NSString       *base;
@property (nonatomic,strong) CloudsObject   *clouds;
@property (nonatomic,strong) NSString       *cod;
@property (nonatomic,strong) CoordObject    *coord;
@property (nonatomic,strong) NSString       *dt;
@property (nonatomic,strong) NSString       *ID;
@property (nonatomic,strong) MainObject     *main_object;
@property (nonatomic,strong) NSString       *name;
@property (nonatomic,strong) SysObject      *sys;
@property (nonatomic,strong) NSMutableArray *weather;
@property (nonatomic,strong) WindObject       *wind;

@end
