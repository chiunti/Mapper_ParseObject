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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)getRemoteData{
    NSString *stPushToken = @"1234";
    NSDictionary *dict = [WebServices testPost:stPushToken];
    print(NSLog(@"dict = %@", dict));
}
@end
