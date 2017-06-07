//
//  UIColor+theme.m
//  QQing
//
//  Created by 李杰 on 1/22/15.
//
//

#import "UIColor+theme.h"
#import "UIColor-Expanded.h"

@implementation UIColor (theme)

#pragma mark - 颜色规范
#pragma mark - 基准色

// ===============================================
// 全局用色：灰色系

// Use 000, just because one '0', is too short.
// ===============================================

+ (UIColor *)gray000Color {
    return [UIColor colorWithRGBHex:0xffffff];
}

+ (UIColor *)gray001Color {
    return [UIColor colorWithRGBHex:0xf7f7f7];
}

// 全体背景色
+ (UIColor *)gray002Color {
    return [UIColor colorWithRGBHex:0xf0f0f0];
}

+ (UIColor *)gray003Color {
    return [UIColor colorWithRGBHex:0xebebeb];
}

// 占位性提示文字，用于默认文案
+ (UIColor *)gray004Color {
    return [UIColor colorWithRGBHex:0xcccccc];
}

// 用于非重要描述性文字
+ (UIColor *)gray005Color {
    return [UIColor colorWithRGBHex:0x999999];
}

// 用于二级叙述性文字以及长篇文字介绍
+ (UIColor *)gray006Color {
    return [UIColor colorWithRGBHex:0x666666];
}

// 重要叙述性文字，用于标题、已填写内容
+ (UIColor *)gray007Color {
    return [UIColor colorWithRGBHex:0x333333];
}

// ===============================================
// 全局用色：主题色、辅助色

// st：家长端
// te：老师端
// ta: 助教端
// ===============================================

+ (UIColor *)stGreenColor {
    return [UIColor colorWithRGBHex:0x23cd77];
}

+ (UIColor *)stLightGreenColor {
    return [UIColor colorWithRGBHex:0xe7faf1];
}

+ (UIColor *)stOrangeColor {
    return [UIColor colorWithRGBHex:0xff6600];
}

+ (UIColor *)stBlueColor {
    return [UIColor colorWithRGBHex:0x4aadfa];//return [UIColor colorWithRGBHex:0x47abef];
}

+ (UIColor *)stYellowColor {
    return [UIColor colorWithRGBHex:0xff9900];//return [UIColor colorWithRGBHex:0xffcc00];
}

+ (UIColor *)stRedColor {
    return [UIColor colorWithRGBHex:0xff4966];//return [UIColor colorWithRGBHex:0xdb2440];
}

+ (UIColor *)teGreenColor {
    return [UIColor colorWithRGBHex:0x23cd77];
}

+ (UIColor *)teOrangeColor {
    return [UIColor colorWithRGBHex:0xff7700];
}

+ (UIColor *)teBlueColor {
    return [UIColor colorWithRGBHex:0x4385f5];
}

+ (UIColor *)teYellowColor {
    return [UIColor colorWithRGBHex:0xffb13a];
}

+ (UIColor *)teRedColor {
    return [UIColor colorWithRGBHex:0xff422e];
}

+ (UIColor *)taGreenColor {
    return [UIColor colorWithRGBHex:0x6cb952];
}

+ (UIColor *)taOrangeColor {
    return [UIColor colorWithRGBHex:0xff9900];
}

+ (UIColor *)taBlueColor {
    return [UIColor colorWithRGBHex:0x496eda];
}

+ (UIColor *)taYellowColor {
    return [UIColor colorWithRGBHex:0xff9900];
}

+ (UIColor *)taRedColor {
    return [UIColor colorWithRGBHex:0xdb2440];
}

+ (UIColor *)taBrownColor {
    return [UIColor colorWithRGBHex:0x8b572a];
}

+ (UIColor *)taGoldenColor {
    return [UIColor colorWithRGBHex:0xffca3c];
}

// ===============================================
// 背景用色
// ===============================================

+ (UIColor *)bgGray000Color {
    return [UIColor colorWithRGBHex:0xf0f0f0];
}

+ (UIColor *)stHighlightedGreenColor {
    return [UIColor colorWithRGBHex:0x24bd70];
}

+ (UIColor *)stHighlightedOrangeColor {
    return [UIColor colorWithRGBHex:0xeb660e];
}

+ (UIColor *)stHighlightedYellowColor {
    return [UIColor colorWithRGBHex:0xeb990e];
}

+ (UIColor *)stLightOrangeColor {
    return [UIColor colorWithRGBHex:0xfff3e9];
}

+ (UIColor *)teHighlightedBlueColor {
    return [UIColor colorWithRGBHex:0x2f6ed9];
}

+ (UIColor *)teHighlightedOrangeColor {
    return [UIColor colorWithRGBHex:0xeb660e];
}

+ (UIColor *)taHighlightedOrangeColor {
    return [UIColor colorWithRGBHex:0xeb990e];
}

+ (UIColor *)taLightOrangeColor {
    return [UIColor colorWithRGBHex:0xff8b19];
}

// ===============================================
// 分割线用色
// ===============================================

+ (UIColor *)lineGray000Color {
    return [UIColor colorWithRGBHex:0xe6e6e6];
}

+ (UIColor *)lineGray001Color {
    return [UIColor colorWithRGBHex:0xcccccc];
}

+ (UIColor *)dottedLineGrayColor {
    return [UIColor colorWithRGBHex:0xd0d0d0];
}

// ===============================================
// 文字用色
// ===============================================

+ (UIColor *)fontGray000Color {
    return [UIColor colorWithRGBHex:0xffffff];
}

+ (UIColor *)fontGray005Color {
    return [UIColor gray005Color];
}

+ (UIColor *)fontGray006Color {
    return [UIColor gray006Color];
}

+ (UIColor *)fontGray007Color {
    return [UIColor gray007Color];
}

+ (UIColor *)fontWhiteColor {
    return [UIColor gray000Color];
}

+ (UIColor *)fontBlackColor {
    return [UIColor colorWithRGBHex:0x333333];
}

+ (UIColor *)fontGreenColor {
    return [UIColor colorWithRGBHex:0x54ae37];
}

+ (UIColor *)fontOrangeColor {
    return [UIColor colorWithRGBHex:0xff6600];
}

+ (UIColor *)fontBlueColor {
    return [UIColor teBlueColor];
}

+ (UIColor *)fontGray_one_Color_deprecated {
    return [UIColor gray007Color];
}

+ (UIColor *)fontGray_two_Color_deprecated {
    return [UIColor gray006Color];
}

+ (UIColor *)fontGray_three_Color_deprecated {
    return [UIColor gray005Color];
}
+ (UIColor *)fontGray_four_Color_deprecated {
    return [UIColor gray004Color];
}

#pragma mark - 命名色

+ (UIColor *)themeColor {
    return nil;
}

// Theme
+ (UIColor *)themePinkColor {
    return [UIColor colorWithRed:255.0/255 green:125.0/255 blue:140.0/255 alpha:1.0];
}

+ (UIColor *)themePurpleColor {
    return [UIColor colorWithRed:182.0/255 green:152.0/255 blue:223.0/255 alpha:1.0];
}

+ (UIColor *)themeGreenColor {
    return nil;
}

+ (UIColor *)themeOrangeColor {
    return nil;
}

+ (UIColor *)themeBlueColor {
    return nil;
}

+ (UIColor *)themeYellowColor {
    return nil;
}

+ (UIColor *)themeRedColor {
    return nil;
}

+ (UIColor *)themeGreenTwoColor {
    return [UIColor colorWithRed:(140.0f / 255.0f) green:(200.0f / 255.0f) blue:(68.0f / 255.0f) alpha:1.0f];
}

+ (UIColor *)themeGreenColorWithAlpha:(CGFloat)alpha {
    return [UIColor colorWithRed:(140.0f / 255.0f) green:(185.0f / 255.0f) blue:(82.0f / 255.0f) alpha:alpha];
}

+ (UIColor *)themeBlueColorWithAlpha:(CGFloat)alpha {
    return [UIColor colorWithRed:(57.0f / 255.0f) green:(106.0f / 255.0f) blue:(180.0f / 255.0f) alpha:alpha];
}

// background color
+ (UIColor *)bottomToolBarBackgroundColor {
    return [UIColor gray000Color];
}

+ (UIColor *)cellBackgroundColor {
    return [UIColor gray000Color];
}

+ (UIColor *)topBarBackgroundColor {
    return [UIColor gray001Color];
}

+ (UIColor *)bottomBarBackgroundColor {
    return [UIColor gray001Color];
}

+ (UIColor *)viewBackgroundColor {
    return [UIColor gray002Color];
}

+ (UIColor *)frontTopBarBackgroundColor {
    return [UIColor themeGreenColor];
}

+ (UIColor *)buttonDisableStateColor {
    return [UIColor gray004Color];
}

#pragma mark - 颜色预定义

// ====
+ (UIColor *)goodAppraiseColor {
    return [UIColor colorWithRed:1.0f green:0.4f blue:0.0f alpha:1.0f];
}

+ (UIColor *)normalAppraiseColor {
    return [UIColor colorWithRed:1.0f green:0.6f blue:0.2f alpha:1.0f];
}

+ (UIColor *)badAppraiseColor {
    return [self gray005Color];
}

// ====
+ (UIColor *)webViewNavigationBarBackgroundColor {
    return [UIColor colorWithRed:247.0/255 green:248.0/255 blue:247.0/255 alpha:1.0];
}

+ (UIColor *)backGroundGrayColor {
    return [UIColor colorWithRed:240.0/255 green:240.0/255 blue:240.0/255 alpha:1.0];
}

// ====
+ (UIColor *)navigationBarTintColor {
    return [UIColor colorWithRed:051/255 green:051/255 blue:051/255 alpha:1.0f];
}

+ (UIColor *)textDarkGreenColor {
    return [UIColor colorWithRed:(71.0f / 255.0f) green:(129.0f / 255.0f) blue:(52.0f / 255.0f) alpha:1.0f];
}

// ====
+ (UIColor *)sscourseCellBorderColor {
    return [UIColor colorWithRed:200/255.0 green:200/255.0 blue:200/255.0 alpha:1.0];
}

+(UIColor *)sscourseNewCellBorderColor {
    return [UIColor colorWithRed:240/255.0 green:240/255.0 blue:240/255.0 alpha:1.0];
}

+ (UIColor *)sscourseCellContentColor {
    return [UIColor colorWithRed:240/255.0 green:239/255.0 blue:240/255.0 alpha:1.0];
}

// ====
+ (UIColor *)colorOnTouched {
    return [UIColor colorWithRed:227/255.0 green:227/255.0 blue:227/255.0 alpha:1.0];
}

+ (UIColor *)colorOnSelected {
    return [UIColor colorWithRed:227/255.0 green:227/255.0 blue:227/255.0 alpha:1.0];
}

+ (UIColor *)bgImageColorOnTouched {
    return [UIColor darkGrayColor];
}

+ (UIColor *)bgImageColorOnSelected {
    return [UIColor darkGrayColor];
}

// ====
+ (UIColor *)schePurpleColor {
    return [UIColor colorWithRed:0.5 green:0.0 blue:0.5 alpha:1.0];
}

+ (UIColor *)schePurpleColorWithAlpha:(CGFloat)alpha {
    return [UIColor colorWithRed:0.5 green:0.0 blue:0.5 alpha:alpha];
}

// ===
+ (UIColor *)yellowColor_1 {
    return [UIColor colorWithRed:241.0/255 green:100.0/255 blue:43.0/255 alpha:1.0];
}

+ (UIColor *)courseDetailBottomBarColor{
    return [UIColor colorWithRed:248.0/255 green:248.0/255 blue:248.0/255 alpha:1.0];
}

//#define kMinBlueColor (__bridge id)[UIColor colorWithRed:(105.0f / 255.0f) green:(179.0f / 255.0f) blue:(254.0f / 255.0f) alpha:1.0].CGColor
//#define kMaxBlueColor (__bridge id)[UIColor colorWithRed:(67.0f / 255.0f) green:(133.0f / 255.0f) blue:(245.0f / 255.0f) alpha:1.0].CGColor
//
//#define kMinBrownColor (__bridge id)[UIColor colorWithRed:(199.0f / 255.0f) green:(159.0f / 255.0f) blue:(87.0f / 255.0f) alpha:1.0].CGColor
//#define kMaxBrownColor (__bridge id)[UIColor colorWithRed:(158.0f / 255.0f) green:(116.0f / 255.0f) blue:(48.0f / 255.0f) alpha:1.0].CGColor

+ (UIColor *)minBrownColor {
    return [UIColor colorWithRed:(199.0f / 255.0f) green:(159.0f / 255.0f) blue:(87.0f / 255.0f) alpha:1.0];
}

+ (UIColor *)maxBrownColor {
    return [UIColor colorWithRed:(158.0f / 255.0f) green:(116.0f / 255.0f) blue:(48.0f / 255.0f) alpha:1.0];
}

+ (UIColor *)minBlueColor {
    return [UIColor colorWithRed:(105.0f / 255.0f) green:(179.0f / 255.0f) blue:(254.0f / 255.0f) alpha:1.0];
}

+ (UIColor *)maxBlueColor {
    return [UIColor colorWithRed:(67.0f / 255.0f) green:(133.0f / 255.0f) blue:(245.0f / 255.0f) alpha:1.0];
}

+ (UIColor *)teacherBadgeBrownColor {
    return [UIColor colorWithRed:(255.0f / 255.0f) green:(177.0f / 255.0f) blue:(59.0f / 255.0f) alpha:1.0];
}

+ (UIColor *)teacherBadgeBlueColor {
    return [UIColor colorWithRed:(105.0f / 255.0f) green:(179.0f / 255.0f) blue:(254.0f / 255.0f) alpha:1.0];
}

// ====
+ (UIColor *)courseEdColor {
    return [UIColor gray004Color];
}

+ (UIColor *)courseIngColor {
    return [UIColor themeBlueColor];
}

+ (UIColor *)courseWillColor {
    return [UIColor themeGreenColor];
}

+ (UIColor *)courseWaitColor {
    return [UIColor themePinkColor];
}

+ (UIColor *)courseDealingColor {
    return [UIColor gray005Color];
}

@end

