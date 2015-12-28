//
//  SysObject.h
//  Parse Object
//
//  Created by admin on 28/12/15.
//  Copyright © 2015 chiuntisoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SysObject : NSObject
@property (nonatomic,strong) NSString     *country;
@property (nonatomic,strong) NSString     *ID;
@property (nonatomic,strong) NSString     *message;
@property (nonatomic,strong) NSString     *sunrise;
@property (nonatomic,strong) NSString     *sunset;
@property (nonatomic,strong) NSString     *type;

@end
