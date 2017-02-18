//
//  HDCameraSourceManager.h
//  CreditGroup
//
//  Created by ltl on 15/9/11.
//  Copyright (c) 2015年 JPlay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, EActionSheetEventType)
{
    kActionSheetEventTypeDefault = -1,
    kActionSheetEventTypeCamera = 0,
    kActionSheetEventTypePhoto = 1,
    kActionSheetEventTypeCancel = 2,
};

typedef NS_ENUM(NSInteger, EMCImageRotationType) {
    kMCImageRotationTypeNone,          // 无
    kMCImageRotationTypeLeft,          // 左旋转
    kMCImageRotationTypeRight,         // 右旋转
    kMCImageRotationTypeDown,          // 下旋转
};

typedef NS_ENUM(NSInteger, EMCCameraIsHaveFrame) {
    kMCCameraHaveFrameFalse = 0,
    kMCCameraHaveFrameTrue,
};

typedef NS_ENUM(NSInteger, EMCImageFormat) {
    kMCImageFormatDefault,
    kMCImageFormatPNG,
    kMCImageFormatJPEG,
};

typedef NS_ENUM(NSInteger, EMCImageType) {
    kMCImageTypeNomal,
    kMCImageTypeImage,
    kMCImageTypeData,
};

typedef void(^EMCCameraGetImageBlock)(UIImage *image);
typedef void(^EMCCameraGetImageDataBlock)(NSData *imageData);
typedef void(^EMCCameraEventTypeBlock)(EActionSheetEventType eventType);

@interface MCCameraSourceManager : NSObject

@property (strong, nonatomic) EMCCameraEventTypeBlock eventBlock; // 记录点击事件
@property (assign, nonatomic) EMCCameraIsHaveFrame isHaveFrame;   // 显示取景框

@property (assign, nonatomic) EMCImageRotationType rotation;      // UIImage Rotate
@property (assign, nonatomic) CGSize size;                        // UIImage 压缩Size

@property (assign, nonatomic) EMCImageFormat format;              // 图片格式
@property (assign, nonatomic) CGFloat quality;                    // 图片质量

@property (strong, nonatomic, readonly) NSData *imageData;        // 数据流形式的图片

/**
 * pragrma 直接调用默认的CameraType
 * return  UIImage
 */
- (void)callCameraDefaultWithGetImageBlcok:(EMCCameraGetImageBlock)getImageBlock;
/**
 * pragrma 直接调用默认的CameraType
 * return  UIData
 */
- (void)callCameraDefaultWithGetImageDataBlcok:(EMCCameraGetImageDataBlock)getImageDataBlock;
/**
 * pragrma 需用户完全定制调用相机弹层，只需传对应的 EActionSheetEventType 类型
 * pragrma 此方法直接接收 EActionSheetEventType ，(即为事件的类型) 进入相应的相机/模式
 * return  UIImage
 */
- (void)callCameraCustomWithEventType:(EActionSheetEventType)eventType GetImageBlock:(EMCCameraGetImageBlock)getImageBlock;
/**
 * pragrma 需用户完全定制调用相机弹层，只需传对应的 EActionSheetEventType 类型
 * pragrma 此方法直接接收 EActionSheetEventType ， 进入相应的相机/模式
 * return  UIData
 */
- (void)callCameraCustomWithEventType:(EActionSheetEventType)eventType GetImageDataBlock:(EMCCameraGetImageDataBlock)getImageDataBlock;

@end
