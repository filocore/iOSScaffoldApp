//
//  KLUIHeader.h
//  ScaffoldApp
//
//  Created by xinxiang on 2022/7/15.
//

#ifndef KLUIPrefixHeader_h
#define KLUIPrefixHeader_h

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

#define isIphoneX ({\
int tmp = 0;\
if (@available(iOS 11.0, *)) {\
if ([UIApplication sharedApplication].delegate.window.safeAreaInsets.top > 20 || [UIApplication sharedApplication].delegate.window.safeAreaInsets.left > 20) {\
tmp = 1;\
}else{\
tmp = 0;\
}\
}else{\
tmp = 0;\
}\
tmp;\
})

#define kTopSafeHeight (isIphoneX ? 44.f : 20.f)
#define kNavigationBarHeight (44.f + kTopSafeHeight)
#define kBottomSafeHeight (isIphoneX ? 34.f : 0.f)


#endif /* KLUIHeader_h */
