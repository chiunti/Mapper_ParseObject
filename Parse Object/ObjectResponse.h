//
//  ObjectResponse.h
//  Parse Object
//
//  Created by admin on 29/11/15.
//  Copyright © 2015 chiuntisoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ObjectResponse : NSObject
@property (nonatomic,strong) NSString *responseStatus;
@property (nonatomic,strong) NSString *message;
@property (nonatomic,strong) NSString *data;
@end
