//
//  WebServices.m
//  Parse Object
//
//  Created by admin on 29/11/15.
//  Copyright © 2015 chiuntisoft. All rights reserved.
//

#import "WebServices.h"
#import "Declarations.h"

#define nURLServer           @"http://demo4253576.mockable.io"
#define nURLTestPost         @"/test"

#define nGET   0
#define nPOST  1

@implementation WebServices
/**********************************************************************************************/
#pragma mark - user methods
/**********************************************************************************************/
+ (NSDictionary *)testPost:(NSString *)pushToken {
    print(NSLog(@"testPost"))
    NSMutableDictionary *diData = [[NSMutableDictionary alloc]init];
    NSString    *stTimestamp    = nTimeStamp;
    [diData setValue:pushToken forKey:@"pushToken"];
    [diData setValue:stTimestamp forKey:@"timestamp"];
    NSString  *stData           = [diData JSONRepresentation];
    return [self sendREST:([nURLServer stringByAppendingString:nURLTestPost]) forData:stData andMode:nPOST];
}

/**********************************************************************************************/
#pragma mark - json common method
/**********************************************************************************************/
+ (NSDictionary *) sendREST:(NSString *) postUrl forData:(NSString *) data andMode:(BOOL)mode {
    @try {
        NSString *post;
        if (mode) {
            post = [[NSString alloc] initWithFormat:@"data=%@", data];
        }
        else {
            post = [[NSString alloc] initWithFormat:@""];
        }
        print(NSLog(@"post parameters: %@",post))
        post                   = [post stringByReplacingOccurrencesOfString:@"+" withString:@"%2B"];
        NSURL *url             = [NSURL URLWithString:postUrl];
        print(NSLog(@"URL post = %@", url))
        NSData *postData       = [post dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
        NSString *postLength   = [NSString stringWithFormat:@"%lu", (unsigned long)[postData length]];
        NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
        [request setURL:url];
        if (mode) {
            [request setHTTPMethod:@"POST"];
        }
        else {
            [request setHTTPMethod:@"GET"];
        }
        [request setValue:postLength                            forHTTPHeaderField:@"Content-Length"];
        [request setValue:@"application/json"                   forHTTPHeaderField:@"Accept"];
        [request setValue:@"application/x-www-form-urlencoded"  forHTTPHeaderField:@"Content-Type"];
        [request setValue:@"iOS Oaxaca"                         forHTTPHeaderField:@"User-Agent"];
        [request setHTTPBody:postData];
        print(NSLog(@"postData = %@", postData))
        [NSURLRequest requestWithURL:url];
        NSError *error              = [[NSError alloc] init];
        NSHTTPURLResponse *response = nil;
        NSData *urlData             = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
        //Check response
        print(NSLog(@"[response statusCode] %d",(int)[response statusCode]))
        print(NSLog(@"[response] %@",response))
        
        if ([response statusCode] >=200 && [response statusCode] <308) {
            //get json response
            NSDictionary *jsonResponse = [NSJSONSerialization JSONObjectWithData:urlData options:kNilOptions error:&error];
            print(NSLog(@"response received %@",jsonResponse))
            
            //return response
            return jsonResponse;
        }
        else { if (error) {print(NSLog(@"Error response")) return nil; } else {print(NSLog(@"Conect Fail"))return nil;}
            return nil;
        }
    }
    @catch (NSException * e) {print(NSLog(@"Exception")) return nil;}
}
@end
