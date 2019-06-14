//
//  PSSGetImage.m
//  AliyunPlayer_iOS_UI_pod
//
//  Created by 彭盛凇 on 2019/6/13.
//

#import "PSSGetImage.h"

@implementation PSSGetImage

+ (nullable UIImage *)imageNamed:(NSString *)name {
    
    UIImage *image = [UIImage imageNamed:name];
    if (image) {
        return image;
    }
        
    NSBundle *currentBundle = [NSBundle bundleForClass:[self class]];
    
    NSDictionary *dic = currentBundle.infoDictionary;
    
    NSString *bundleName = [dic objectForKey:@"CFBundleExecutable"];

    NSBundle *resourcesBundle = [NSBundle bundleWithPath:[currentBundle pathForResource:bundleName ofType:@"bundle"]];

    return [UIImage imageNamed:name inBundle:resourcesBundle compatibleWithTraitCollection:nil];
    
}

@end
