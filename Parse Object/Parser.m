//
//  Parser.m
//  Parse Object
//
//  Created by admin on 29/11/15.
//  Copyright © 2015 chiuntisoft. All rights reserved.
//

#import "Parser.h"

@implementation Parser
+ (ObjectResponse *)parseRegisterObject {
    //check for valid value
    if (mjsonRegister != nil) {
        //Using ObjectMapper Directly
        ObjectResponse *customizedObject = [[ObjectMapper sharedInstance]
        objectFromSource:mjsonRegister toInstanceOfClass:[ObjectResponse class]];
        return customizedObject;
    }
    return nil;
}
+ (WeatherResponse *)parseWeatherObject {
    //check for valid value
    if (mjsonWeather != nil) {
        //Using ObjectMapper Directly
        WeatherResponse *customizedObject = [[ObjectMapper sharedInstance]
                                            objectFromSource:mjsonWeather toInstanceOfClass:[WeatherResponse class]];
        return customizedObject;
    }
    return nil;
}

@end
