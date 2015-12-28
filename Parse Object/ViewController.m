//
//  ViewController.m
//  Parse Object
//
//  Created by admin on 29/11/15.
//  Copyright © 2015 chiuntisoft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getRemoteData];
    [self getWeather];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)getRemoteData{
    NSString *stPushToken = @"1234";
    mjsonRegister = [WebServices testPost:stPushToken];
    ObjectResponse *objectResponse = [Parser parseRegisterObject];
    NSString *stResponseStatus = objectResponse.responseStatus;
    
    
    //print(NSLog(@"dict = %@", dict));
    print(NSLog(@"stResponseStatus = %@", stResponseStatus));
}

-(void) getWeather{
    mjsonWeather = [WebServices getWeather];
    print(NSLog(@"mjsonWeather = %@",mjsonWeather))
    WeatherResponse *weatherResponse = [Parser parseWeatherObject];
    print(NSLog(@"weather.base = %@",weatherResponse.base))
}
@end
