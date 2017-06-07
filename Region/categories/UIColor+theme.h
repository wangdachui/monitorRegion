//
//  UIColor+theme.h
//  QQing
//
//  Created by 李杰 on 1/22/15.
//
//

#import <UIKit/UIKit.h>

@interface UIColor (theme)

#pragma mark - 颜色规范
#pragma mark - 基准色

// ===============================================
// 全局用色：灰色系

// Use 000, just because one '0', is too short.
// ===============================================
+ (UIColor *)gray000Color;
+ (UIColor *)gray001Color;
+ (UIColor *)gray002Color;
+ (UIColor *)gray003Color;
+ (UIColor *)gray004Color;
+ (UIColor *)gray005Color;
+ (UIColor *)gray006Color;
+ (UIColor *)gray007Color;

// ===============================================
// 全局用色：主题色、辅助色

// st：家长端
// te：老师端
// ta：助教端

// Notice: 可能不同的端对同一种颜色，色值定义不同
// ===============================================

+ (UIColor *)stGreenColor;
+ (UIColor *)stLightGreenColor;
+ (UIColor *)stOrangeColor;
+ (UIColor *)stBlueColor;
+ (UIColor *)stYellowColor;
+ (UIColor *)stRedColor;

+ (UIColor *)teGreenColor;
+ (UIColor *)teOrangeColor;
+ (UIColor *)teBlueColor;
+ (UIColor *)teYellowColor;
+ (UIColor *)teRedColor;

+ (UIColor *)taGreenColor;
+ (UIColor *)taOrangeColor;
+ (UIColor *)taBlueColor;
+ (UIColor *)taYellowColor;
+ (UIColor *)taRedColor;
+ (UIColor *)taBrownColor;
+ (UIColor *)taGoldenColor;


// ===============================================
// 背景用色
// ===============================================

+ (UIColor *)bgGray000Color;

+ (UIColor *)stHighlightedGreenColor;
+ (UIColor *)stHighlightedOrangeColor;
+ (UIColor *)stHighlightedYellowColor;
+ (UIColor *)stLightOrangeColor;

+ (UIColor *)teHighlightedBlueColor;
+ (UIColor *)teHighlightedOrangeColor;

+ (UIColor *)taHighlightedOrangeColor;
+ (UIColor *)taLightOrangeColor;

// ===============================================
// 分割线用色
// ===============================================

+ (UIColor *)lineGray000Color;
+ (UIColor *)lineGray001Color;
+ (UIColor *)dottedLineGrayColor;

// ===============================================
// 文字用色
// 暂时不区分 端
// ===============================================

+ (UIColor *)fontGray000Color; // gray000 white font 1
+ (UIColor *)fontGray005Color; // gray005       font 2
+ (UIColor *)fontGray006Color; // gray006       font 3
+ (UIColor *)fontGray007Color; // gray007       font 4

+ (UIColor *)fontWhiteColor;
+ (UIColor *)fontBlackColor; // title
+ (UIColor *)fontGreenColor;    //              font 5
+ (UIColor *)fontOrangeColor;   //              font 6
+ (UIColor *)fontBlueColor;

/**
 * 字体灰 1-4 颜色递减
 */
+ (UIColor *)fontGray_one_Color_deprecated; // gray007Color
+ (UIColor *)fontGray_two_Color_deprecated; // gray006
+ (UIColor *)fontGray_three_Color_deprecated; // gray005
+ (UIColor *)fontGray_four_Color_deprecated; // gray004

#pragma mark - 命名色

+ (UIColor *)themeColor;

/**
 *  主题色
 */
+ (UIColor *)themePinkColor;    // 系统、主题 粉红
+ (UIColor *)themePurpleColor;  // 系统、主题 紫色

+ (UIColor *)themeGreenColor;   // 系统、主题 绿色
+ (UIColor *)themeOrangeColor;  // 系统、主题 橙色
+ (UIColor *)themeBlueColor;    // 系统、主题 蓝色
+ (UIColor *)themeBlueColorWithAlpha:(CGFloat)alpha;
+ (UIColor *)themeYellowColor;  // 系统、主题 黄色
+ (UIColor *)themeRedColor;     // 系统、主题 红色

+ (UIColor *)themeGreenTwoColor;
+ (UIColor *)themeGreenColorWithAlpha:(CGFloat)alpha;

/**
 *  背景用色
 */
+ (UIColor *)bottomToolBarBackgroundColor;      // 【背景1】白white-底部工具栏、列表背景色
+ (UIColor *)cellBackgroundColor;

+ (UIColor *)topBarBackgroundColor;             // 【背景2】灰1 grey 1-顶部导航栏
+ (UIColor *)bottomBarBackgroundColor;

+ (UIColor *)viewBackgroundColor;               // 【背景3】灰2 grey 2-整体背景色
+ (UIColor *)frontTopBarBackgroundColor;        // 【背景4】绿色green-五个大栏目顶部导航栏

+ (UIColor *)buttonDisableStateColor;           // gray004

/**
 *  字体用色
 
 *  想着并不大好，暂时用宏替换
 */
#define fontColor1 fontGray000Color
#define fontColor2 fontGray005Color
#define fontColor3 fontGray006Color
#define fontColor4 fontGray007Color
#define fontColor5 fontGreenColor
#define fontColor6 fontOrangeColor

#pragma mark - 颜色预定义

/**
 *  好评、中评、差评
 */
+ (UIColor *)goodAppraiseColor;
+ (UIColor *)normalAppraiseColor;
+ (UIColor *)badAppraiseColor;

//背景灰
+ (UIColor *)webViewNavigationBarBackgroundColor;
+ (UIColor *)backGroundGrayColor;

// 导航栏颜色风格
+ (UIColor *)navigationBarTintColor;
+ (UIColor *)textDarkGreenColor;

/**
 * 单选上课时间 颜色
 */
+ (UIColor *)sscourseCellContentColor;
+ (UIColor *)sscourseCellBorderColor;
+ (UIColor *)sscourseNewCellBorderColor;

/**
 * 自定义view，按下态等
 */
+ (UIColor *)colorOnTouched;
+ (UIColor *)colorOnSelected;
+ (UIColor *)bgImageColorOnTouched;
+ (UIColor *)bgImageColorOnSelected;

/**
 * 授课时间课程表 颜色表
 */
+ (UIColor *)schePurpleColor;
+ (UIColor *)schePurpleColorWithAlpha:(CGFloat)alpha;

/**
 *  黄色：奖学券
 */
+ (UIColor *)yellowColor_1;

/**
 * 课程详情底部按钮栏背景色
 */
+ (UIColor *)courseDetailBottomBarColor;

// ”我“页面headerview颜色
+ (UIColor *)minBrownColor;
+ (UIColor *)maxBrownColor;
+ (UIColor *)minBlueColor;
+ (UIColor *)maxBlueColor;

// ”我“页面老师标签框颜色
+ (UIColor *)teacherBadgeBrownColor;
+ (UIColor *)teacherBadgeBlueColor;

/**
 *  课程状态对应的标记色
 */
+ (UIColor *)courseEdColor;
+ (UIColor *)courseIngColor;
+ (UIColor *)courseWillColor;
+ (UIColor *)courseWaitColor;
+ (UIColor *)courseDealingColor;

@end
