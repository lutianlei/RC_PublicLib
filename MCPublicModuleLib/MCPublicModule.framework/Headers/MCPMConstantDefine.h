//
//  MCPMConstantDefine.h
//  MCPublicModule
//
//  Created by Mirko on 15/12/23.
//  Copyright (c) 2015年 Mirko. All rights reserved.
//

#ifndef MCPublicModule_MCPMConstantDefine_h
#define MCPublicModule_MCPMConstantDefine_h

#define OPEN_LOG
#ifdef OPEN_LOG
#define DLOG(fmt, ...)  NSLog((@"[Line %d] %s\r\n" fmt), __LINE__, __PRETTY_FUNCTION__, ##__VA_ARGS__);
#define DLOG_POINT(fmt, Point, ...)  NSLog((@"[Line %d] %s" fmt @" Point :%@"), __LINE__, __PRETTY_FUNCTION__, ##__VA_ARGS__, NSStringFromCGPoint(Point));
#define DLOG_SIZE(fmt, Size, ...)  NSLog((@"[Line %d] %s" fmt @" size :%@"), __LINE__, __PRETTY_FUNCTION__, ##__VA_ARGS__, NSStringFromCGSize(Size));
#define DLOG_RECT(fmt, Rect, ...)  NSLog((@"[Line %d] %s" fmt @" Rect :%@"), __LINE__, __PRETTY_FUNCTION__, ##__VA_ARGS__, NSStringFromCGRect(Rect));
#define DLOG_EDGEINSET(fmt, EdgeInsets, ...)  NSLog((@"[Line %d] %s" fmt @" EdgeInsets :%@"), __LINE__, __PRETTY_FUNCTION__, ##__VA_ARGS__, NSStringFromUIEdgeInsets(EdgeInsets));
#define DLOG_OFFSET(fmt, Offset, ...)  NSLog((@"[Line %d] %s" fmt @" Offset :%@"), __LINE__, __PRETTY_FUNCTION__, ##__VA_ARGS__, NSStringFromUIOffset(Offset));
#define DLOG_CLASS(fmt, Class, ...)  NSLog((@"[Line %d] %s" fmt @" Class :%@"), __LINE__, __PRETTY_FUNCTION__, ##__VA_ARGS__, NSStringFromClass(Class));
#define DLOG_SELECTOR(fmt, Selector, ...)  NSLog((@"[Line %d] %s" fmt @" Selector :%@"), __LINE__, __PRETTY_FUNCTION__, ##__VA_ARGS__, NSStringFromSelector(Selector));
#define DLOG_RANGE(fmt, Range, ...)  NSLog((@"[Line %d] %s" fmt @" Range :%@"), __LINE__, __PRETTY_FUNCTION__, ##__VA_ARGS__, NSStringFromRange(Range));
#else
#define DLOG(fmt, ...)
#define DLOG_POINT(fmt, Point, ...)
#define DLOG_SIZE(fmt, Size, ...)
#define DLOG_RECT(fmt, Rect, ...)
#define DLOG_EDGEINSET(fmt, EdgeInsets, ...)
#define DLOG_OFFSET(fmt, Offset, ...)
#define DLOG_CLASS(fmt, Class, ...)
#define DLOG_SELECTOR(fmt, Selector, ...)
#define DLOG_RANGE(fmt, Range, ...)
#endif

#define RGBA(_red,_green,_blue,_alpha) [UIColor colorWithRed:_red/255.0 green:_green/255.0 blue:_blue/255.0 alpha:_alpha]
#define RGB_A(_rgbValue, _alpha) [UIColor colorWithRed:((float)((_rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((_rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(_rgbValue & 0xFF))/255.0 alpha:_alpha]

#define RandomColor() [UIColor colorWithRed:arc4random() % 255 / 255.0 green:arc4random() % 255 / 255.0 blue:arc4random() % 255 / 255.0 alpha:1]

const static NSInteger kNavigationBarHeight = 44;

#endif
