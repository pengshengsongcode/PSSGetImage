//
//  PSSGetImage.m
//  AliyunPlayer_iOS_UI_pod
//
//  Created by 彭盛凇 on 2019/6/13.
//

#import "PSSGetImage.h"

#define isNotNullString(a)  ((a != nil)&&(![a isEqualToString:@""])&&(![a isEqualToString:@"(null)"]))

@implementation PSSGetImage

+ (nullable UIImage *)imageNamed:(NSString *)name {

    return [self imageNamed:name subBundleName:nil];

}

+ (nullable UIImage *)imageNamed:(NSString *)name subBundleName:(NSString *)subBundleName {
    
    UIImage *image = [UIImage imageNamed:name];
    if (image) {
        return image;
    }
    
    NSBundle *currentBundle = [NSBundle bundleForClass:[self class]];
    
    NSDictionary *dic = currentBundle.infoDictionary;
    
    NSString *bundleName = [dic objectForKey:@"CFBundleExecutable"];
    
    NSBundle *resourcesBundle = [NSBundle bundleWithPath:[currentBundle pathForResource:bundleName ofType:@"bundle"]];
    
    if (isNotNullString(subBundleName)) {
        
        NSURL *url = [resourcesBundle URLForResource:subBundleName withExtension:nil];
        
        NSBundle *bundle = [NSBundle bundleWithURL:url];
        
        if (bundle) {
            
            resourcesBundle = bundle;
        }
        
    }
    
    return [UIImage imageNamed:name inBundle:resourcesBundle compatibleWithTraitCollection:nil];
    
}

@end
