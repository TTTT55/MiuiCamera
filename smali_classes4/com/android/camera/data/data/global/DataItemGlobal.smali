.class public Lcom/android/camera/data/data/global/DataItemGlobal;
.super Lcom/android/camera/data/data/DataItemBase;
.source "DataItemGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/data/global/DataItemGlobal$IntentType;
    }
.end annotation


# static fields
.field public static final BACK_DISPLAY_MODE:I = 0x2

.field public static final CTA_CAN_CONNECT_NETWORK_BY_IMPUNITY:Ljava/lang/String; = "can_connect_network"

.field public static final DATA_COMMON_AI_SCENE_HINT:Ljava/lang/String; = "pref_camera_first_ai_scene_use_hint_shown_key"

.field public static final DATA_COMMON_CAMCORDER_TIP_8K_MAX_VIDEO_DURATION_SHOWN:Ljava/lang/String; = "pref_camcorder_tip_8k_max_video_duration_shown"

.field public static final DATA_COMMON_CURRENT_CAMERA_ID:Ljava/lang/String; = "pref_camera_id_key"

.field public static final DATA_COMMON_CURRENT_MODE:Ljava/lang/String; = "pref_camera_mode_key_intent_"

.field public static final DATA_COMMON_CUSTOM_WATERMARK_VERSION:Ljava/lang/String; = "pref_custom_watermark_version"

.field public static final DATA_COMMON_DEVICE_WATERMARK:Ljava/lang/String; = "pref_dualcamera_watermark_key"

.field public static final DATA_COMMON_DOCUMENT_MODE_USE_HINT_SHOWN:Ljava/lang/String; = "pref_document_use_hint_shown"

.field public static final DATA_COMMON_DUALCAMERA_USERDEFINE_WATERMARK:Ljava/lang/String; = "user_define_watermark_key"

.field public static final DATA_COMMON_FIRST_USE_HINT:Ljava/lang/String; = "pref_camera_first_use_hint_shown_key"

.field public static final DATA_COMMON_FOCUS_SHOOT:Ljava/lang/String; = "pref_camera_focus_shoot_key"

.field public static final DATA_COMMON_FRONT_CAM_ROTATE_HINT:Ljava/lang/String; = "pref_front_camera_first_use_hint_shown_key"

.field public static final DATA_COMMON_ID_CARD_MODE_HINT:Ljava/lang/String; = "pref_camera_first_id_card_mode_use_hint_shown_key"

.field public static final DATA_COMMON_MACRO_MODE_HINT:Ljava/lang/String; = "pref_camera_first_macro_mode_use_hint_shown_key"

.field private static final DATA_COMMON_OPEN_TIME:Ljava/lang/String; = "pref_camera_open_time"

.field public static final DATA_COMMON_PORTRAIT_HINT:Ljava/lang/String; = "pref_camera_first_portrait_use_hint_shown_key"

.field public static final DATA_COMMON_TIKTOK_MORE_BUTTON_SHOW_APP:Ljava/lang/String; = "pref_camera_tiktok_more_show_app_key"

.field public static final DATA_COMMON_TIKTOK_MORE_BUTTON_SHOW_MARKET:Ljava/lang/String; = "pref_camera_tiktok_more_show_market_key"

.field public static final DATA_COMMON_TIME_WATER_MARK:Ljava/lang/String; = "pref_time_watermark_key"

.field public static final DATA_COMMON_ULTRA_TELE_HINT:Ljava/lang/String; = "pref_camera_first_ultra_tele_use_hint_shown_key"

.field public static final DATA_COMMON_ULTRA_WIDE_HINT:Ljava/lang/String; = "pref_camera_first_ultra_wide_use_hint_shown_key"

.field public static final DATA_COMMON_ULTRA_WIDE_SAT_HINT:Ljava/lang/String; = "pref_camera_first_ultra_wide_sat_use_hint_shown_key"

.field public static final DATA_COMMON_VV_HINT:Ljava/lang/String; = "pref_camera_first_vv_hint_shown_key"

.field public static final FRONT_DISPLAY_MODE:I = 0x1

.field public static final INTENT_TYPE_IMAGE:I = 0x1

.field public static final INTENT_TYPE_NORMAL:I = 0x0

.field public static final INTENT_TYPE_SCAN_QR:I = 0x3

.field public static final INTENT_TYPE_UNSPECIFIED:I = -0x1

.field public static final INTENT_TYPE_VIDEO:I = 0x2

.field public static final INTENT_TYPE_VOICE_CONTROL:I = 0x4

.field public static final IS_FIRST_SHOW_VIDEOTAG:Ljava/lang/String; = "first_show_videotag"

.field public static final IS_FIRST_USE_CLONE_PHOTO:Ljava/lang/String; = "first_show_clone_photo"

.field public static final IS_FIRST_USE_CLONE_VIDEO:Ljava/lang/String; = "first_show_clone_video"

.field public static final KEY:Ljava/lang/String; = "camera_settings_global"

.field private static final TAG:Ljava/lang/String; = "DataItemGlobal"

.field private static final TIME_OUT:I = 0x7530

.field public static sUseHints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDataItemFeature:Lcom/mi/config/a;

.field private mIntentType:I

.field private mIsForceMainBackCamera:Z

.field private mIsTimeOut:Ljava/lang/Boolean;

.field private mLastCameraId:I

.field private mMimojiStandAlone:Z

.field private mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

.field private mRetriedIfCameraError:Z

.field private mStartFromKeyguard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/data/data/global/DataItemGlobal;->sUseHints:Ljava/util/List;

    const-string v1, "pref_camera_first_use_hint_shown_key"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lcom/android/camera/data/data/global/DataItemGlobal;->sUseHints:Ljava/util/List;

    const-string v1, "pref_camera_first_ai_scene_use_hint_shown_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lcom/android/camera/data/data/global/DataItemGlobal;->sUseHints:Ljava/util/List;

    const-string v1, "pref_camera_first_ultra_wide_use_hint_shown_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lcom/android/camera/data/data/global/DataItemGlobal;->sUseHints:Ljava/util/List;

    const-string v1, "pref_camera_first_portrait_use_hint_shown_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/android/camera/data/data/global/DataItemGlobal;->sUseHints:Ljava/util/List;

    const-string v1, "pref_front_camera_first_use_hint_shown_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lcom/android/camera/data/data/global/DataItemGlobal;->sUseHints:Ljava/util/List;

    const-string v1, "pref_document_use_hint_shown"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Lcom/android/camera/data/data/global/DataItemGlobal;->sUseHints:Ljava/util/List;

    const-string v1, "pref_camera_recordlocation_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/mi/config/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    .line 3
    iput-object p1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:Lcom/mi/config/a;

    .line 4
    invoke-virtual {p1}, Lcom/mi/config/a;->M1()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mMimojiStandAlone:Z

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p1

    iput p1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    .line 6
    new-instance p1, Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-direct {p1, p0}, Lcom/android/camera/data/data/global/ComponentModuleList;-><init>(Lcom/android/camera/data/data/global/DataItemGlobal;)V

    iput-object p1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    return-void
.end method

.method private determineTimeOut()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->retainCameraMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isActualTimeOut()Z

    move-result p0

    return p0
.end method

.method private getCurrentCameraId(I)I
    .locals 3

    const/16 v0, 0xa6

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_5

    const/16 v0, 0xaf

    if-eq p1, v0, :cond_5

    const/16 v0, 0xb0

    if-eq p1, v0, :cond_4

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_5

    const-string v0, "pref_camera_id_key"

    packed-switch p1, :pswitch_data_0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultCameraId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 5
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:Lcom/mi/config/a;

    invoke-virtual {v2}, Lcom/mi/config/a;->f3()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:Lcom/mi/config/a;

    invoke-virtual {v2}, Lcom/mi/config/a;->g3()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 6
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultCameraId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 8
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:Lcom/mi/config/a;

    invoke-virtual {v2}, Lcom/mi/config/a;->o2()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultCameraId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    return v1

    .line 11
    :pswitch_2
    iget-object v2, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:Lcom/mi/config/a;

    invoke-virtual {v2}, Lcom/mi/config/a;->p2()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultCameraId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    return v1

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xab
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCurrentMode(I)I
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pref_camera_mode_key_intent_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultMode(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getCurrentModeForFrontCamera(I)I
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode(I)I

    move-result p1

    const/16 v0, 0xa3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 2
    :pswitch_1
    iget-object p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:Lcom/mi/config/a;

    invoke-virtual {p0}, Lcom/mi/config/a;->p2()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :pswitch_2
    const/16 p1, 0xa2

    goto :goto_1

    :goto_0
    :pswitch_3
    move p1, v0

    :cond_0
    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0xa6
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getDefaultCameraId(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private isActualTimeOut()Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "pref_camera_open_time"

    .line 2
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public getCTACanCollect()Z
    .locals 2

    const-string v0, "can_connect_network"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    return-object p0
.end method

.method public getCurrentCameraId()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result p0

    return p0
.end method

.method public getCurrentMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode(I)I

    move-result p0

    return p0
.end method

.method public getDataBackUpKey(I)I
    .locals 1

    const/16 v0, 0xa5

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {p1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getTransferredMode(I)I

    move-result p1

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    add-int/lit8 v0, v0, 0x2

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    .line 3
    iget-boolean p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    if-eqz p0, :cond_1

    const/high16 p0, 0x10000

    or-int/2addr p1, p0

    :cond_1
    return p1
.end method

.method public getDefaultMode(I)I
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xa3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mMimojiStandAlone:Z

    if-eqz p0, :cond_0

    const/16 p0, 0xb1

    return p0

    :cond_0
    return v1

    :cond_1
    const/16 p0, 0xa2

    return p0

    :cond_2
    return v1
.end method

.method public getDisplayMode()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/a;->j1()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0
.end method

.method public getIntentType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    return p0
.end method

.method public getLastCameraId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    return p0
.end method

.method public getStartFromKeyguard()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    return p0
.end method

.method public isFirstShowCTAConCollect()Z
    .locals 1

    const-string v0, "can_connect_network"

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/DataItemBase;->contains(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isFirstUseClonePhoto()Z
    .locals 2

    const-string v0, "first_show_clone_photo"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isFirstUseCloneVideo()Z
    .locals 2

    const-string v0, "first_show_clone_video"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isForceMainBackCamera()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsForceMainBackCamera:Z

    return p0
.end method

.method public isGlobalSwitchOn(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isIntentAction()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNormalIntent()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRetriedIfCameraError()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mRetriedIfCameraError:Z

    return p0
.end method

.method public isTiktokMoreButtonEnabled(Z)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mi/config/b;->D:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-eqz p1, :cond_1

    const-string p1, "pref_camera_tiktok_more_show_app_key"

    goto :goto_1

    :cond_1
    const-string p1, "pref_camera_tiktok_more_show_market_key"

    .line 2
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isTimeOut()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isTransient()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public matchCustomWatermarkVersion()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:Lcom/mi/config/a;

    invoke-virtual {v0}, Lcom/mi/config/a;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_custom_watermark_version"

    .line 2
    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/DataItemBase;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:Lcom/mi/config/a;

    const-string v0, "c_0x40"

    invoke-virtual {p0, v0}, Lcom/mi/config/a;->e0(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/DataItemBase;->arrayMapContainsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/DataItemBase;->arrayMapRemove(Ljava/lang/String;)V

    :cond_1
    const-string v2, ""

    .line 6
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3a

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 8
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v1, v3

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/mi/config/b;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mi/config/b;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mismatch custom watermark version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataItemGlobal"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public parseIntent(Landroid/content/Intent;Ljava/lang/Boolean;ZZZ)Landroidx/core/util/Pair;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/Boolean;",
            "ZZZ)",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setForceMainBackCamera(Z)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/a;->M0()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->isScreenSlideOff(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraId(I)V

    .line 5
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "<unknown>"

    .line 6
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x6

    const-string v8, "android.media.action.VIDEO_CAMERA"

    const-string v9, "android.media.action.STILL_IMAGE_CAMERA"

    const/4 v10, -0x1

    const/4 v12, 0x2

    const/4 v13, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "com.android.camera.action.QR_CODE_CAPTURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_1
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_1

    :sswitch_2
    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v12

    goto :goto_1

    :sswitch_3
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_4
    const-string v4, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_5
    const-string v4, "android.media.action.VOICE_COMMAND"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x7

    goto :goto_1

    :sswitch_6
    const-string v4, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v13

    goto :goto_1

    :sswitch_7
    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v10

    :goto_1
    const-string v14, "DataItemGlobal"

    packed-switch v4, :pswitch_data_0

    :goto_2
    move v4, v2

    goto/16 :goto_5

    .line 7
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Lcom/android/camera/CameraIntentManager;->getCameraModeId()I

    move-result v4

    const/16 v5, 0xa0

    if-ne v4, v5, :cond_5

    .line 10
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->determineTimeOut()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 11
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultMode(I)I

    move-result v4

    goto :goto_3

    .line 12
    :cond_4
    invoke-direct {v0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode(I)I

    move-result v4

    .line 13
    :cond_5
    :goto_3
    :try_start_0
    invoke-virtual {v3}, Lcom/android/camera/CameraIntentManager;->isUseFrontCamera()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 14
    :catch_0
    invoke-virtual {v3}, Lcom/android/camera/CameraIntentManager;->isOnlyForceOpenMainBackCamera()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 15
    invoke-virtual {v0, v13}, Lcom/android/camera/data/data/global/DataItemGlobal;->setForceMainBackCamera(Z)V

    move v3, v2

    goto :goto_4

    .line 16
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->determineTimeOut()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 17
    invoke-direct {v0, v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultCameraId(I)I

    move-result v3

    goto :goto_4

    .line 18
    :cond_7
    invoke-direct {v0, v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v3

    .line 19
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "intent from voice control assist : pendingOpenId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";pendingOpenModule = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",newIntentType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iput v2, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    .line 21
    iput-boolean v1, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    .line 22
    iget-object v1, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/global/ComponentModuleList;->setIntentType(I)V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    if-eq v4, v1, :cond_8

    .line 24
    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 25
    invoke-static {v4}, Lcom/android/camera/module/ModuleManager;->setActiveModuleIndex(I)V

    .line 26
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    if-eq v3, v1, :cond_9

    .line 27
    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraId(I)V

    .line 28
    :cond_9
    new-instance v0, Landroidx/core/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_2
    const/4 v4, 0x3

    goto :goto_5

    :pswitch_3
    move v4, v12

    goto :goto_5

    :pswitch_4
    move v4, v13

    .line 29
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/camera/CameraIntentManager;->getCameraFacing()I

    move-result v15

    if-eq v15, v10, :cond_a

    .line 30
    invoke-virtual {v0, v15}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraIdTransient(I)V

    :cond_a
    if-eqz p5, :cond_b

    .line 31
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->determineTimeOut()Z

    move-result v10

    if-eqz v10, :cond_b

    move v10, v13

    goto :goto_6

    :cond_b
    move v10, v2

    .line 32
    :goto_6
    iget v6, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    if-ne v6, v4, :cond_d

    iget-boolean v6, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    if-eq v6, v1, :cond_c

    goto :goto_7

    :cond_c
    move v6, v2

    goto :goto_8

    :cond_d
    :goto_7
    move v6, v13

    .line 33
    :goto_8
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/16 v7, 0xa2

    const/16 v11, 0xa3

    if-eqz v9, :cond_e

    .line 34
    invoke-direct {v0, v11}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v8

    goto :goto_b

    .line 35
    :cond_e
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 36
    invoke-direct {v0, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v8

    move v11, v7

    goto :goto_b

    .line 37
    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v8

    .line 38
    invoke-virtual {v8}, Lcom/android/camera/CameraIntentManager;->isQuickLaunch()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 39
    invoke-direct {v0, v11}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v8

    goto :goto_b

    :cond_10
    if-eqz v10, :cond_13

    .line 40
    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultMode(I)I

    move-result v8

    if-gez v15, :cond_11

    .line 41
    invoke-direct {v0, v8}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultCameraId(I)I

    move-result v9

    goto :goto_9

    .line 42
    :cond_11
    invoke-direct {v0, v8}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v9

    :goto_9
    if-ne v8, v11, :cond_12

    .line 43
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v11

    invoke-interface {v11, v9, v4}, Lcom/android/camera/data/provider/DataProvider;->dataConfig(II)Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v11

    check-cast v11, Lcom/android/camera/data/data/config/DataItemConfig;

    .line 44
    invoke-virtual {v11}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->isSquareModule()Z

    move-result v11

    if-eqz v11, :cond_12

    const/16 v8, 0xa5

    :cond_12
    move v11, v8

    move v8, v9

    goto :goto_b

    :cond_13
    if-eq v15, v13, :cond_14

    .line 45
    invoke-direct {v0, v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode(I)I

    move-result v8

    goto :goto_a

    .line 46
    :cond_14
    invoke-direct {v0, v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentModeForFrontCamera(I)I

    move-result v8

    :goto_a
    move v11, v8

    .line 47
    invoke-direct {v0, v11}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v8

    :goto_b
    const/16 v9, 0xa8

    if-eq v11, v9, :cond_19

    const/16 v9, 0xaa

    if-ne v11, v9, :cond_15

    goto :goto_c

    .line 48
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isActualTimeOut()Z

    move-result v9

    if-nez v9, :cond_16

    if-eqz v6, :cond_18

    :cond_16
    const/16 v9, 0xb3

    if-ne v11, v9, :cond_17

    goto :goto_d

    :cond_17
    const/16 v7, 0xb9

    if-ne v11, v7, :cond_18

    const/16 v7, 0xb8

    goto :goto_d

    :cond_18
    move v7, v11

    goto :goto_d

    .line 49
    :cond_19
    :goto_c
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mi/config/a;->X3()Z

    move-result v9

    if-eqz v9, :cond_1a

    const/16 v7, 0xac

    :cond_1a
    :goto_d
    new-array v5, v5, [Ljava/lang/Object;

    .line 50
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v5, v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v13

    aput-object v3, v5, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v5, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v5, v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v5, v3

    const-string v2, "parseIntent timeOut = %s, intentChanged = %s, action = %s, pendingOpenId = %s, pendingOpenModule = %s, intentCameraId = %s"

    .line 51
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p4, :cond_1d

    .line 52
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    if-eqz v6, :cond_1b

    .line 53
    iput v4, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    .line 54
    iput-boolean v1, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    .line 55
    iget-object v1, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v1, v4}, Lcom/android/camera/data/data/global/ComponentModuleList;->setIntentType(I)V

    .line 56
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    if-eq v7, v1, :cond_1c

    .line 57
    invoke-virtual {v0, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 58
    invoke-static {v7}, Lcom/android/camera/module/ModuleManager;->setActiveModuleIndex(I)V

    .line 59
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    if-eq v8, v1, :cond_1d

    .line 60
    invoke-virtual {v0, v8}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraId(I)V

    .line 61
    :cond_1d
    new-instance v0, Landroidx/core/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74de9aed -> :sswitch_7
        -0x62d863dd -> :sswitch_6
        -0x5b1e1211 -> :sswitch_5
        -0x566ad1d3 -> :sswitch_4
        0x1ba9c1af -> :sswitch_3
        0x29c9b033 -> :sswitch_2
        0x43680478 -> :sswitch_1
        0x4c4c1b77 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public provideKey()Ljava/lang/String;
    .locals 0

    const-string p0, "camera_settings_global"

    return-object p0
.end method

.method public reInit()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->reInit()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "pref_camera_open_time"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v1, "open_camera_fail_key"

    const-wide/16 v2, 0x0

    .line 5
    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v1

    .line 7
    iput v1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    .line 8
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_id_key"

    invoke-interface {v0, v3, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reInit: mLastCameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", currentCameraId = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DataItemGlobal"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public resetAll()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->clear()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string v0, "pref_version_key"

    const/4 v1, 0x4

    .line 3
    invoke-interface {p0, v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public resetTimeOut()V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "pref_camera_open_time"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setCTACanCollect(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string v0, "can_connect_network"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setCameraId(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    invoke-interface {v0, v2, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraId: mLastCameraId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", cameraId = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DataItemGlobal"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCameraIdTransient(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/data/data/DataItemBase;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraIdTransient: mLastCameraId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", cameraId = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DataItemGlobal"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCurrentMode(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_camera_mode_key_intent_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setFirstUseClonePhoto(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string v0, "first_show_clone_photo"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setFirstUseCloneVideo(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string v0, "first_show_clone_video"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setForceMainBackCamera(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsForceMainBackCamera:Z

    return-void
.end method

.method public setRetriedIfCameraError(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mRetriedIfCameraError:Z

    return-void
.end method

.method public setStartFromKeyguard(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    return-void
.end method

.method public updateCustomWatermarkVersion()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:Lcom/mi/config/a;

    invoke-virtual {v0}, Lcom/mi/config/a;->k()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mi/config/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mi/config/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string v1, "pref_custom_watermark_version"

    invoke-interface {p0, v1, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom watermark version updated: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataItemGlobal"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
