//
//  PSSGetImage.h
//  AliyunPlayer_iOS_UI_pod
//
//  Created by 彭盛凇 on 2019/6/13.
//

#import <Foundation/Foundation.h>

@interface PSSGetImage : NSObject

+ (nullable UIImage *)imageNamed:(NSString *)name;

+ (nullable UIImage *)imageNamed:(NSString *)name subBundleName:(NSString *)subBundleName

@end


