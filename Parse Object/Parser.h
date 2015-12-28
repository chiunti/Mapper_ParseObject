//
//  Parser.h
//  Parse Object
//
//  Created by admin on 29/11/15.
//  Copyright © 2015 chiuntisoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Declarations.h"

@interface Parser : NSObject
+ (ObjectResponse *)parseRegisterObject;
+ (WeatherResponse *)parseWeatherObject;
@end
