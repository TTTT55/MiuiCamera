.class public Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentBottomAction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;
.implements Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBeautyRecording;
.implements Lcom/android/camera/protocol/ModeProtocol$HandlerSwitcher;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;
.implements Lcom/android/camera/ui/CameraSnapView$SnapListener;
.implements Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;


# static fields
.field public static final FRAGMENT_INFO:I = 0xf1

.field private static final MSG_SHOW_PROGRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FragmentBottomAction"


# instance fields
.field private mBackEnable:Z

.field private mBottomActionView:Landroid/widget/FrameLayout;

.field private mBottomAnimator:Landroid/animation/ValueAnimator;

.field private mBottomMenuLayout:Landroid/view/View;

.field private mBottomRecordingCameraPicker:Landroid/widget/ImageView;

.field private mBottomRecordingTime:Landroid/widget/TextView;

.field private mBottomRollDownHeight:I

.field private mCameraPickEnable:Z

.field private mCameraPicker:Landroid/widget/ImageView;

.field private mCaptureProgressDelay:I

.field private mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

.field private mCubicEaseOut:Lc/h/a/m;

.field private mCurrentBeautyActionMenuType:I

.field private mCurrentLiveActionMenuType:I

.field private mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

.field private mFilterListHeight:I

.field private mFragmentActionLighting:Lcom/android/camera/fragment/bottom/action/FragmentActionLighting;

.field private mFragmentActionMimoji:Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;

.field private mFragmentLayoutExtra:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mInLoading:Z

.field private mIsBottomRollDown:Z

.field private mIsIntentAction:Z

.field private mIsShowLighting:Z

.field private mIsShowMiMoji:Z

.field private mLastPauseTime:J

.field private mLongPressBurst:Z

.field private mMimojiBack:Landroid/widget/ImageView;

.field private mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

.field private mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

.field private mPostProcess:Landroid/widget/ProgressBar;

.field private mPreGifStatus:Z

.field private mRecordProgressDelay:I

.field private mRecordingPause:Landroid/widget/ImageView;

.field private mRecordingReverse:Landroid/widget/ImageView;

.field private mRecordingSnap:Landroid/widget/ImageView;

.field private mRecordingSwitch:Landroid/widget/ImageView;

.field private mReverseDialog:Landroid/app/AlertDialog;

.field private mShutterButton:Lcom/android/camera/ui/CameraSnapView;

.field private mSineEaseOut:Lc/h/a/G;

.field private mThumbnailImage:Landroid/widget/ImageView;

.field private mThumbnailImageLayout:Landroid/view/ViewGroup;

.field private mThumbnailImageMask:Landroid/view/View;

.field private mThumbnailProgress:Landroid/widget/ProgressBar;

.field private mV9bottomParentLayout:Landroid/widget/RelativeLayout;

.field private mVideoCaptureEnable:Z

.field private mVideoPauseSupported:Z

.field private mVideoRecordingPaused:Z

.field private mVideoRecordingStarted:Z

.field private mVideoReverseEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowLighting:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowMiMoji:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsBottomRollDown:Z

    .line 5
    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$1;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Lcom/android/camera/ui/ModeSelectView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPicker:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Lcom/android/camera/ui/CameraSnapView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Lcom/android/camera/fragment/bottom/BottomActionMenu;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mReverseDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private adjustViewBackground(Landroid/view/View;I)V
    .locals 1

    const p0, 0x7f060038

    const/16 v0, 0xa5

    if-ne p2, v0, :cond_0

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDisplayMode()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const p0, 0x7f06005d

    .line 6
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private animateViews(ILjava/util/List;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    if-nez p2, :cond_0

    .line 1
    invoke-static {p3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {p0, p3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 3
    invoke-static {p3}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_2
    new-instance p0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {p0, p3}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private initThumbLayoutByIntent()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsIntentAction:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageMask:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const v2, 0x7f080258

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGalleryLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isJumpBack()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    return-void

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkStoragePermissions()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const v2, 0x7f08008b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 13
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const v1, 0x7f080134

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageMask:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private isFPS960()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xac

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/a;->m2()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->isSlowMotionFps960()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isFocusOrZoomMoving()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa6

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isFocusViewMoving()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isZoomViewMoving()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isThumbLoading()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mInLoading:Z

    return p0
.end method

.method private setProgressBarVisible(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x12c

    const/4 v2, 0x2

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-array p1, v2, [F

    .line 4
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xa0

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 7
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$6;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$6;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    const/16 v3, 0x8

    if-ne p1, v3, :cond_2

    return-void

    :cond_2
    new-array p1, v2, [F

    .line 11
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13
    new-instance v0, Lc/h/a/j;

    invoke-direct {v0}, Lc/h/a/j;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$7;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$7;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 15
    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$8;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$8;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 16
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setRecordingTimeState(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_7

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 3
    :cond_1
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 5
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    .line 7
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_1

    .line 8
    :cond_4
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xae

    if-eq p1, v0, :cond_5

    const/16 v0, 0xb7

    if-eq p1, v0, :cond_5

    const/16 v0, 0xb8

    if-eq p1, v0, :cond_5

    goto :goto_0

    .line 9
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    const-string v0, "00:05"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_6
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    const-string v0, "00:15"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :goto_0
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_7
    :goto_1
    return-void
.end method

.method private showNormalMimoji2Bottom()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiPreviewPlay()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0, v3}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMimojiRecordState(I)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPicker:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    invoke-static {v1, v3}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPicker:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v1, v3}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v1, v3}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 12
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v4, 0xac

    invoke-virtual {v1, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 14
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiRecordState()I

    move-result v0

    const/16 v4, 0xc1

    if-nez v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    const v5, 0x7f080256

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isFPS960()Z

    move-result v6

    invoke-virtual {v0, v5, v2, v6}, Lcom/android/camera/ui/CameraSnapView;->setParameters(IZZ)V

    if-eqz v1, :cond_4

    new-array v0, v3, [I

    aput v4, v0, v2

    .line 18
    invoke-interface {v1, v3, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    goto :goto_1

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    const v5, 0x7f080257

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/16 v5, 0xae

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isFPS960()Z

    move-result v6

    invoke-virtual {v0, v5, v2, v6}, Lcom/android/camera/ui/CameraSnapView;->setParameters(IZZ)V

    .line 21
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_4

    new-array v0, v3, [I

    aput v4, v0, v2

    .line 22
    invoke-interface {v1, v3, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem(Z[I)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    new-array v0, v3, [I

    aput v4, v0, v2

    .line 23
    invoke-interface {v1, v3, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    .line 24
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    const/16 v4, 0xa3

    if-eqz v0, :cond_5

    if-eqz v1, :cond_6

    new-array v0, v3, [I

    aput v4, v0, v2

    .line 25
    invoke-interface {v1, v3, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    new-array v0, v3, [I

    aput v4, v0, v2

    .line 26
    invoke-interface {v1, v3, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem(Z[I)V

    .line 27
    :cond_6
    :goto_2
    iget-boolean p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowMiMoji:Z

    if-eqz p0, :cond_7

    .line 28
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_7

    .line 29
    invoke-interface {p0, v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showMimojiPanel(I)V

    :cond_7
    return-void
.end method

.method private showReverseConfirmDialog()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mReverseDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xae

    if-ne v0, v1, :cond_1

    const-string v0, "live_reverse"

    .line 3
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveClick(Ljava/lang/String;)V

    .line 4
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100182

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f100181

    .line 7
    new-instance v2, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$9;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$9;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f100489

    .line 8
    new-instance v2, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$10;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$10;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mReverseDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private startBottomAnimation(Z)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsBottomRollDown:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsBottomRollDown:Z

    const v0, 0x3f666666    # 0.9f

    const-wide/16 v1, 0x12c

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomMenuLayout:Landroid/view/View;

    invoke-static {p1, v3}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomMenuLayout:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v5, 0x96

    invoke-virtual {p1, v5, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget-object v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCubicEaseOut:Lc/h/a/m;

    .line 5
    invoke-virtual {p1, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomMenuLayout:Landroid/view/View;

    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomMenuLayout:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFilterListHeight:I

    int-to-float v5, v5

    invoke-virtual {p1, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget-object v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCubicEaseOut:Lc/h/a/m;

    .line 8
    invoke-virtual {p1, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRollDownHeight:I

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCubicEaseOut:Lc/h/a/m;

    .line 11
    invoke-virtual {p1, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {p1, v3}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {p1, v3}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCubicEaseOut:Lc/h/a/m;

    .line 15
    invoke-virtual {p1, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto/16 :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomMenuLayout:Landroid/view/View;

    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomMenuLayout:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v5, 0x32

    invoke-virtual {p1, v5, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v5, 0xfa

    invoke-virtual {p1, v5, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget-object v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mSineEaseOut:Lc/h/a/G;

    .line 18
    invoke-virtual {p1, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomMenuLayout:Landroid/view/View;

    iget v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFilterListHeight:I

    int-to-float v5, v5

    invoke-static {p1, v5}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomMenuLayout:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget-object v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCubicEaseOut:Lc/h/a/m;

    .line 21
    invoke-virtual {p1, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    iget v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRollDownHeight:I

    int-to-float v5, v5

    invoke-static {p1, v5}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCubicEaseOut:Lc/h/a/m;

    .line 24
    invoke-virtual {p1, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 25
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 27
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCubicEaseOut:Lc/h/a/m;

    .line 28
    invoke-virtual {p1, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :goto_0
    return-void
.end method

.method private startExtraLayoutAnimation(Landroid/view/View;Z)V
    .locals 6

    const-wide/16 v0, 0x12c

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 1
    iget p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFilterListHeight:I

    neg-int p2, p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 2
    invoke-static {p1, v3}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 3
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCubicEaseOut:Lc/h/a/m;

    .line 4
    invoke-virtual {p2, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$2;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$2;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Landroid/view/View;)V

    .line 5
    invoke-virtual {p2, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 8
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    const-wide/16 v4, 0x96

    invoke-virtual {p2, v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mSineEaseOut:Lc/h/a/G;

    .line 9
    invoke-virtual {p2, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 10
    invoke-static {p1, v3}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 11
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    iget v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFilterListHeight:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCubicEaseOut:Lc/h/a/m;

    .line 12
    invoke-virtual {p2, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$3;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$3;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :goto_0
    return-void
.end method

.method private startExtraLayoutExchangeAnimation(Landroid/view/View;)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 3
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFilterListHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCubicEaseOut:Lc/h/a/m;

    .line 4
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$4;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$4;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Landroid/view/View;)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private switchVideoCapture(Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, -0x5a

    const/4 v3, 0x5

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/16 v5, 0xb4

    const/16 v6, 0xa7

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/16 v9, 0x5a

    if-eq v1, v6, :cond_3

    const/high16 v10, 0x42b40000    # 90.0f

    if-eq v1, v5, :cond_2

    const/16 v3, 0xb8

    if-eq v1, v3, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiRecordState()I

    move-result v3

    if-nez v3, :cond_1

    .line 4
    invoke-virtual {v1, v8}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMimojiRecordState(I)V

    .line 5
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMimojiRecordState(I)V

    .line 7
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setRotation(F)V

    move v2, v9

    .line 8
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera;

    iget v0, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    const/4 v3, 0x7

    .line 9
    invoke-virtual {v0, v3}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v7}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v8}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 12
    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_2

    .line 13
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 14
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    const v4, 0x7f080256

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setRotation(F)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    invoke-static {v6}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v1

    .line 17
    invoke-virtual {v1, v3}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v1

    .line 18
    invoke-virtual {v1, v8}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v1

    .line 19
    invoke-virtual {v1, v7}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_2

    .line 21
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 22
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setRotation(F)V

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera;

    invoke-static {v5}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v2

    .line 24
    invoke-virtual {v2, v3}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v2

    .line 25
    invoke-virtual {v2, v8}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v2

    .line 26
    invoke-virtual {v2, v7}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    .line 28
    iget-object v0, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    const v1, 0x7f080257

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    move v2, v9

    .line 29
    :goto_2
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v10, 0x0

    int-to-float v11, v2

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v1, 0x12c

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 31
    invoke-virtual {v0, v8}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    move-object/from16 v1, p1

    .line 32
    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private updateBottomInRecording(ZZ)V
    .locals 5

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1
    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    :cond_0
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v3, 0xa1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_c

    const/16 v3, 0xa2

    if-eq v2, v3, :cond_9

    const/16 v3, 0xa9

    if-eq v2, v3, :cond_8

    const/16 v3, 0xac

    if-eq v2, v3, :cond_8

    const/16 v3, 0xae

    if-eq v2, v3, :cond_7

    const/16 v3, 0xb1

    if-eq v2, v3, :cond_5

    const/16 v3, 0xb3

    if-eq v2, v3, :cond_7

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_9

    const/16 v3, 0xb7

    if-eq v2, v3, :cond_3

    const/16 v3, 0xb8

    if-eq v2, v3, :cond_1

    .line 5
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    .line 6
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    .line 7
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    .line 8
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    goto/16 :goto_2

    .line 9
    :cond_1
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    .line 10
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    .line 11
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    .line 12
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    .line 13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiCreate()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    .line 15
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 16
    :cond_2
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    .line 17
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    goto/16 :goto_2

    .line 18
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/a;->z2()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 19
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    goto :goto_0

    .line 20
    :cond_4
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    .line 21
    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    .line 22
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    .line 23
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    goto/16 :goto_2

    .line 24
    :cond_5
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    .line 25
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    .line 26
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    .line 27
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    .line 28
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->IsInMimojiCreate()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 29
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    goto :goto_2

    .line 30
    :cond_6
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    .line 31
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    goto :goto_2

    .line 32
    :cond_7
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    .line 33
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    .line 35
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    goto :goto_2

    .line 36
    :cond_8
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    .line 37
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    .line 38
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    .line 39
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    goto :goto_2

    .line 40
    :cond_9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v2

    if-nez v2, :cond_a

    .line 41
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoCaptureVisible()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    .line 42
    :cond_a
    invoke-static {}, Lcom/mi/config/b;->K0()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_1

    :cond_b
    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    .line 43
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    .line 44
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    goto :goto_2

    .line 45
    :cond_c
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    .line 46
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    .line 47
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    .line 48
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/a;->z2()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 49
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    goto :goto_2

    .line 50
    :cond_d
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    :goto_2
    if-eqz p1, :cond_10

    .line 51
    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 52
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    const v3, 0x7f080243

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 54
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 56
    :cond_e
    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    if-eqz v1, :cond_f

    .line 57
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    const v3, 0x7f080241

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 59
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 61
    :cond_f
    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    if-eqz v1, :cond_10

    .line 62
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    const v2, 0x7f0801c8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 64
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    :cond_10
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 66
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_11
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 67
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_12

    const-wide/16 v1, 0xfa

    goto :goto_3

    :cond_12
    const-wide/16 v1, 0x0

    .line 68
    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 69
    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$11;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$11;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 70
    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 71
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public animateShineBeauty(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->animateShineBeauty(Z)V

    return-void
.end method

.method public canSnap()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa1

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isBlockSnap()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canSwipeChangeMode()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->IsInMimojiPreview()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiPreview()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb6

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb3

    if-eq v0, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isFocusOrZoomMoving()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public varargs changeCamera([Landroid/view/View;)V
    .locals 12

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 3
    :goto_0
    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v6, 0xa3

    if-ne v5, v6, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v7, 0xa4

    invoke-virtual {v5, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    new-array v7, v3, [I

    const/16 v8, 0xd1

    aput v8, v7, v2

    .line 5
    invoke-interface {v5, v7}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->switchOffElementsSilent([I)V

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->clearZoomRatioHistory()V

    .line 7
    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraId(I)V

    if-eqz p1, :cond_3

    .line 8
    array-length v0, p1

    if-lez v0, :cond_3

    .line 9
    array-length v0, p1

    move v5, v2

    :goto_1
    if-ge v5, v0, :cond_3

    aget-object v7, p1, v5

    const-wide/16 v8, 0x12c

    if-ne v4, v3, :cond_2

    .line 10
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    const/high16 v10, -0x3ccc0000    # -180.0f

    .line 11
    invoke-virtual {v7, v10}, Landroidx/core/view/ViewPropertyAnimatorCompat;->rotationBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    .line 12
    invoke-virtual {v7, v8, v9}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    .line 13
    invoke-virtual {v7}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_2

    .line 14
    :cond_2
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    const/high16 v10, 0x43340000    # 180.0f

    .line 15
    invoke-virtual {v7, v10}, Landroidx/core/view/ViewPropertyAnimatorCompat;->rotationBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    .line 16
    invoke-virtual {v7, v8, v9}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    .line 17
    invoke-virtual {v7}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 18
    :cond_3
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v3

    iget v7, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v5, v8

    const-string v7, "switch camera from %d to %d, for module 0x%x"

    .line 20
    invoke-static {p1, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "FragmentBottomAction"

    invoke-static {v5, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v3, :cond_4

    move p1, v3

    goto :goto_3

    :cond_4
    move p1, v2

    :goto_3
    if-ne v4, v3, :cond_5

    move v2, v3

    .line 21
    :cond_5
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1, v2, v1}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackSwitchCameraStart(ZZI)V

    .line 22
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xac

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, 0x4

    .line 23
    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->removeExtraMenu(I)V

    .line 24
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v5, 0xa9

    const/4 v7, 0x5

    const/16 v9, 0xa2

    if-eq v2, v9, :cond_10

    const/16 v10, 0xb0

    const/16 v11, 0xa6

    if-eq v2, v11, :cond_f

    if-eq v2, v5, :cond_e

    const/16 v5, 0xb8

    if-eq v2, v5, :cond_b

    if-eq v2, v10, :cond_a

    const/16 v1, 0xb1

    if-eq v2, v1, :cond_8

    if-eq v2, v6, :cond_6

    const/16 p1, 0xa5

    if-ne v2, p1, :cond_7

    .line 25
    :cond_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getMappingModeByRatio(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 26
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 27
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    .line 28
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 29
    invoke-virtual {v0, v7}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 30
    invoke-virtual {v0, v8}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v3}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto/16 :goto_7

    .line 33
    :cond_8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xd9

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MimojiAvatarEngine;

    if-eqz v1, :cond_9

    .line 34
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MimojiAvatarEngine;->isOnCreateMimoji()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 35
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    .line 36
    invoke-virtual {v1, v11}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 37
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->mimojiStart()V

    new-array v1, v8, [I

    .line 38
    fill-array-data v1, :array_0

    invoke-interface {p1, v3, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem(Z[I)V

    goto :goto_4

    :cond_9
    move v0, v8

    .line 39
    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v1

    .line 40
    invoke-virtual {v1, v7}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v1

    .line 41
    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v3}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto/16 :goto_7

    .line 44
    :cond_a
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v11}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v11}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v8}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v3}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto/16 :goto_7

    :cond_b
    if-ne v4, v3, :cond_c

    .line 50
    invoke-interface {p1, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->removeConfigItem(I)V

    .line 51
    :cond_c
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v4, 0xf6

    .line 52
    invoke-virtual {v2, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;

    if-eqz v2, :cond_d

    .line 53
    invoke-interface {v2}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;->isOnCreateMimoji()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 54
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    .line 55
    invoke-virtual {v2, v11}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 56
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->mimojiStart()V

    new-array v1, v1, [I

    .line 57
    fill-array-data v1, :array_1

    invoke-interface {p1, v3, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem(Z[I)V

    goto :goto_5

    :cond_d
    move v0, v8

    .line 58
    :goto_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v7}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v1

    .line 60
    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v3}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto/16 :goto_7

    .line 63
    :cond_e
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v9}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v3}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v8}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_7

    .line 68
    :cond_f
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v10}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v10}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v8}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v3}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_7

    :cond_10
    if-nez v4, :cond_11

    .line 74
    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object p1

    .line 75
    invoke-interface {p1}, Lcom/android/camera/data/backup/DataBackUp;->isLastVideoFastMotion()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_6

    :cond_11
    move v5, v9

    :goto_6
    if-eq v5, v9, :cond_12

    .line 76
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 77
    :cond_12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v5}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v7}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v3}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v8}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    .line 82
    :goto_7
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 83
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const v0, 0x7f10002e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 84
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const p1, 0x8000

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->sendAccessibilityEvent(I)V

    :cond_13
    return-void

    :array_0
    .array-data 4
        0xc5
        0xc1
    .end array-data

    :array_1
    .array-data 4
        0xc5
        0xc1
        0xa3
        0xa2
    .end array-data
.end method

.method public changeModeByGravity(II)V
    .locals 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x3

    const v3, 0x800005

    const v4, 0x800003

    if-eqz v0, :cond_2

    if-ne p1, v2, :cond_1

    :goto_0
    move p1, v3

    goto :goto_2

    :cond_1
    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_2
    if-ne p1, v2, :cond_3

    :goto_1
    move p1, v4

    goto :goto_2

    :cond_3
    if-ne p1, v1, :cond_4

    goto :goto_0

    .line 2
    :cond_4
    :goto_2
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->getTransferredMode(I)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v5, v2

    :goto_3
    if-ge v5, v1, :cond_6

    .line 4
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v6, v5}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMode(I)I

    move-result v6

    if-ne v6, v0, :cond_5

    move v2, v5

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-eq p1, v4, :cond_8

    if-eq p1, v3, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_9

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    if-lez v2, :cond_9

    add-int/lit8 v2, v2, -0x1

    .line 5
    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMode(I)I

    move-result p1

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->changeModeByNewMode(II)V

    return-void
.end method

.method public changeModeByNewMode(II)V
    .locals 6

    const/16 v0, 0xa6

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->j2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xb0

    :cond_0
    const/16 v0, 0xa3

    if-eq p1, v0, :cond_1

    const/16 v1, 0xa5

    if-ne p1, v1, :cond_2

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getMappingModeByRatio(I)I

    move-result p1

    .line 4
    :cond_2
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne p1, v1, :cond_3

    return-void

    :cond_3
    const/16 v1, 0xb4

    const/16 v2, 0xa7

    if-ne p1, v2, :cond_4

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFromProVideoMudule()Z

    move-result v3

    if-eqz v3, :cond_4

    move p1, v1

    .line 6
    :cond_4
    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v1, :cond_5

    .line 7
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->setIsFromProVideoMudule(Z)V

    goto :goto_0

    :cond_5
    if-ne v3, v2, :cond_6

    .line 8
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->setIsFromProVideoMudule(Z)V

    .line 9
    :cond_6
    :goto_0
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xa9

    const/16 v3, 0xa2

    if-eq v1, v3, :cond_8

    if-eq v1, v0, :cond_7

    if-eq v1, v2, :cond_8

    goto :goto_1

    .line 10
    :cond_7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_9

    new-array v1, v5, [I

    const/16 v2, 0xd1

    aput v2, v1, v4

    .line 12
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->switchOffElementsSilent([I)V

    goto :goto_1

    :cond_8
    if-eq p1, v3, :cond_e

    if-eq p1, v2, :cond_e

    :cond_9
    :goto_1
    const/16 v0, 0xae

    if-eq p1, v0, :cond_a

    const/16 v0, 0xb7

    if-ne p1, v0, :cond_b

    .line 13
    :cond_a
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveModuleClicked()Z

    move-result v0

    if-nez v0, :cond_b

    .line 14
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->setLiveModuleClicked(Z)V

    .line 15
    :cond_b
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 16
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isThumbLoading()Z

    move-result v1

    if-eqz v1, :cond_c

    return-void

    .line 17
    :cond_c
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v1, :cond_d

    .line 18
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    .line 19
    :cond_d
    iput p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 20
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->getInstance(Landroid/content/Context;)Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->performModeSwitch()V

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/Camera;

    .line 23
    invoke-static {p1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 24
    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/StartControl;->setStartDelay(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 p2, 0x4

    .line 25
    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 p2, 0x2

    .line 26
    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 27
    invoke-virtual {p1, v5}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    :cond_e
    return-void
.end method

.method public entryOrExitMiMojiGif(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPreGifStatus:Z

    return-void
.end method

.method public expandAIWatermarkBottomMenu(Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, p1, p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->expandAIWatermark(Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;I)V

    return-void
.end method

.method public expandShineBottomMenu(Lcom/android/camera/data/data/runing/ComponentRunningShine;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, p1, p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->expandShine(Lcom/android/camera/data/data/runing/ComponentRunningShine;I)V

    return-void
.end method

.method public filterUiChange()V
    .locals 0

    return-void
.end method

.method public forceSwitchFront()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPicker:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->onClick(Landroid/view/View;)V

    return v1
.end method

.method public getBeautyActionMenuType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBeautyActionMenuType:I

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xf1

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0c0030

    return p0
.end method

.method public hideExtra()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowLighting:Z

    const/16 v1, 0xa4

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showOrHideLighting(Z)V

    .line 4
    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowMiMoji:Z

    if-eqz p0, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_1

    .line 6
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showOrHideMimoji()V

    :cond_1
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f090055

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->getBottomHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 4
    sget v0, Lcom/android/camera/Util;->sCenterDisplayHeight:I

    int-to-float v0, v0

    const v1, 0x3cd4fdf4    # 0.026f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRollDownHeight:I

    const v0, 0x7f09025b

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    .line 6
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    sget v1, Lcom/android/camera/Util;->sBottomBarHeight:I

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 8
    sget v1, Lcom/android/camera/Util;->sBottomMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 9
    sget v1, Lcom/android/camera/Util;->sBottomBarHeight:I

    int-to-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    .line 11
    new-instance v0, Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f090171

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v3}, Lcom/android/camera/fragment/bottom/BottomActionMenu;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getCameraOperateMenuView()Lcom/android/camera/ui/EdgeHorizonScrollView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const v0, 0x7f09005a

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomMenuLayout:Landroid/view/View;

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    sget v1, Lcom/android/camera/Util;->sBottomBarHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 16
    sget v1, Lcom/android/camera/Util;->sBottomMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getCameraOperateSelectView()Lcom/android/camera/ui/ModeSelectView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    .line 18
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ui/ModeSelectView;->init(Lcom/android/camera/data/data/global/ComponentModuleList;I)V

    .line 19
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ModeSelectView;->setOnModeClickedListener(Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;)V

    const v0, 0x7f090267

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const v1, 0x7f090265

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    .line 22
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const v1, 0x7f090266

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageMask:Landroid/view/View;

    const v0, 0x7f090261

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f090260

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    const v0, 0x7f090264

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraSnapView;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const v0, 0x7f09025c

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPicker:Landroid/widget/ImageView;

    const v0, 0x7f090263

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    const v0, 0x7f090262

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    const v0, 0x7f09025d

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    const v0, 0x7f0900ce

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentLayoutExtra:Landroid/view/View;

    const v0, 0x7f09025f

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    const v0, 0x7f090057

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/camera/Util;->sBottomBarHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    const v0, 0x7f090062

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    const v0, 0x7f090061

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    .line 35
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/CameraSnapView;->setSnapListener(Lcom/android/camera/ui/CameraSnapView$SnapListener;)V

    .line 37
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCaptureProgressDelay:I

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordProgressDelay:I

    .line 40
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPicker:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090162

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    .line 47
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->adjustViewBackground(Landroid/view/View;I)V

    .line 49
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->provideAnimateElement(ILjava/util/List;I)V

    .line 50
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsIntentAction:Z

    .line 51
    new-instance p1, Lc/h/a/m;

    invoke-direct {p1}, Lc/h/a/m;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCubicEaseOut:Lc/h/a/m;

    .line 52
    new-instance p1, Lc/h/a/G;

    invoke-direct {p1}, Lc/h/a/G;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mSineEaseOut:Lc/h/a/G;

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07011f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFilterListHeight:I

    .line 54
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {p0, v1}, Lcom/android/camera/Util;->setAccessibilityFocusable(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public isShowFilterView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShowLightingView()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowLighting:Z

    return p0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentActionLighting:Lcom/android/camera/fragment/bottom/action/FragmentActionLighting;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentActionLighting:Lcom/android/camera/fragment/bottom/action/FragmentActionLighting;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/bottom/action/FragmentActionLighting;->reInitAdapterBgMode(Z)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->initBeautyMenuView()V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->adjustViewBackground(Landroid/view/View;I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    if-eqz p1, :cond_2

    .line 7
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xb8

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiCreate()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showNormalMimoji2Bottom()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "FragmentBottomAction"

    const-string v0, "notifyAfterFrameAvailable: shutter process bar is showing"

    .line 10
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->processingFinish()V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isFPS960()Z

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/camera/ui/CameraSnapView;->setParameters(IZZ)V

    .line 13
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->IsInMimojiCreate()Z

    move-result p0

    if-nez p0, :cond_3

    .line 14
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiCreate()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 15
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa6

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 17
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->mimojiStart()V

    :cond_4
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p1

    .line 3
    iget-boolean p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsIntentAction:Z

    if-eq p1, p2, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsIntentAction:Z

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/ui/ModeSelectView;->init(Lcom/android/camera/data/data/global/ComponentModuleList;I)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->initThumbLayoutByIntent()V

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mInLoading:Z

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentActionLighting:Lcom/android/camera/fragment/bottom/action/FragmentActionLighting;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentActionLighting:Lcom/android/camera/fragment/bottom/action/FragmentActionLighting;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/action/FragmentActionLighting;->reInit()V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentActionMimoji:Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentActionMimoji:Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->reInit(I)V

    .line 12
    :cond_2
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0xa2

    .line 13
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne p1, p2, :cond_3

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const p2, 0x7f10005c

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const p2, 0x7f100060

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onAngleChanged(F)V
    .locals 0

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowLighting:Z

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->hideExtra()V

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xac

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 6
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateContentDescription()V

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public onBeautyRecordingStart()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public onBeautyRecordingStop()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public onBottomMenuAnimate(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->bottomMenuAnimate(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    const-string v1, "FragmentBottomAction"

    if-nez v0, :cond_0

    const-string p0, "onClick: disabled"

    .line 2
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa1

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_1

    const-string p0, "onClick: null action"

    .line 4
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Lcom/android/camera/module/Module;->isIgnoreTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7
    invoke-interface {v2}, Lcom/android/camera/module/Module;->isShot2GalleryOrEnableParallel()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090267

    if-eq v2, v3, :cond_3

    :cond_2
    const-string p0, "onClick: ignore click event, because module isn\'t ready"

    .line 8
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "create"

    const/16 v5, 0xb7

    const/16 v6, 0xae

    const/4 v7, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_8

    .line 10
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isThumbLoading()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "onClick: ignore thumbnail click event as loading thumbnail"

    .line 11
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 12
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p0

    if-nez p0, :cond_5

    const/4 p0, 0x0

    .line 13
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onThumbnailClicked(Landroid/view/View;)V

    goto/16 :goto_8

    .line 14
    :cond_5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    goto/16 :goto_8

    .line 15
    :sswitch_1
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez p1, :cond_6

    goto :goto_1

    .line 16
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    if-eqz p0, :cond_a

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    instance-of p1, p1, Lcom/android/camera/module/VideoModule;

    if-nez p1, :cond_7

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    instance-of p1, p1, Lcom/android/camera/module/FunModule;

    if-nez p1, :cond_7

    .line 19
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    instance-of p1, p1, Lcom/android/camera/module/MiLiveModule;

    if-nez p1, :cond_7

    goto :goto_0

    .line 20
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    .line 21
    instance-of p1, p0, Lcom/android/camera/module/VideoModule;

    if-eqz p1, :cond_8

    .line 22
    check-cast p0, Lcom/android/camera/module/VideoModule;

    .line 23
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->takeVideoSnapShoot()Z

    goto/16 :goto_8

    .line 24
    :cond_8
    instance-of p1, p0, Lcom/android/camera/module/FunModule;

    if-eqz p1, :cond_9

    .line 25
    check-cast p0, Lcom/android/camera/module/FunModule;

    .line 26
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->takePreviewSnapShoot()V

    goto/16 :goto_8

    .line 27
    :cond_9
    instance-of p1, p0, Lcom/android/camera/module/MiLiveModule;

    if-eqz p1, :cond_22

    .line 28
    check-cast p0, Lcom/android/camera/module/MiLiveModule;

    .line 29
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->takePreviewSnapShoot()V

    goto/16 :goto_8

    :cond_a
    :goto_0
    const-string p0, "onClick: recording snap is not allowed!!!"

    .line 30
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_1
    return-void

    .line 31
    :sswitch_2
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez p1, :cond_c

    goto :goto_2

    .line 32
    :cond_c
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->hasSegments()Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    .line 33
    :cond_d
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showReverseConfirmDialog()V

    goto/16 :goto_8

    :cond_e
    :goto_2
    return-void

    .line 34
    :sswitch_3
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    if-eqz p1, :cond_17

    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez p1, :cond_f

    goto/16 :goto_5

    .line 35
    :cond_f
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_16

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_16

    if-eq p1, v6, :cond_10

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_16

    if-eq p1, v5, :cond_12

    return-void

    .line 36
    :cond_10
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingPaused:Z

    if-eqz p1, :cond_11

    const-string p1, "live_resume"

    .line 37
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveClick(Ljava/lang/String;)V

    goto :goto_3

    :cond_11
    const-string p1, "live_pause"

    .line 38
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveClick(Ljava/lang/String;)V

    .line 39
    :cond_12
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mLastPauseTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_13

    const-wide/16 v4, 0x1f4

    cmp-long p1, v2, v4

    if-gez p1, :cond_13

    return-void

    .line 40
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mLastPauseTime:J

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    if-eqz p0, :cond_15

    .line 42
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    instance-of p1, p1, Lcom/android/camera/module/LiveModule;

    if-nez p1, :cond_14

    .line 43
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    instance-of p1, p1, Lcom/android/camera/module/MiLiveModule;

    if-nez p1, :cond_14

    goto :goto_4

    .line 44
    :cond_14
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/ILiveModule;

    .line 45
    invoke-interface {p0}, Lcom/android/camera/module/ILiveModule;->onPauseButtonClick()V

    goto/16 :goto_8

    :cond_15
    :goto_4
    const-string p0, "onClick: recording pause is not allowed!!!"

    .line 46
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 47
    :cond_16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    .line 48
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/VideoModule;

    .line 49
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onPauseButtonClick()V

    goto/16 :goto_8

    :cond_17
    :goto_5
    return-void

    .line 50
    :sswitch_4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-nez v0, :cond_22

    .line 51
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->switchVideoCapture(Landroid/view/View;)V

    goto/16 :goto_8

    .line 52
    :sswitch_5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-eqz v1, :cond_18

    return-void

    .line 53
    :cond_18
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    .line 54
    :cond_19
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isThumbLoading()Z

    move-result v0

    if-eqz v0, :cond_1a

    return-void

    .line 55
    :cond_1a
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->hideExtra()V

    .line 56
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->IsInMimojiCreate()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 57
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiCreate()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    const-string v0, "mimoji_click_create_switch"

    .line 58
    invoke-static {v0, v4}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    new-array v0, v3, [Landroid/view/View;

    aput-object p1, v0, v7

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->changeCamera([Landroid/view/View;)V

    goto :goto_8

    .line 60
    :sswitch_6
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xb8

    const/16 v1, 0xb1

    if-ne p1, v0, :cond_1e

    .line 62
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object p1

    const/4 v0, 0x2

    .line 63
    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMode(I)V

    .line 64
    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiRecordState()I

    move-result p1

    .line 65
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    if-nez p1, :cond_1d

    move v6, v1

    :cond_1d
    invoke-virtual {p0, v6, v7}, Lcom/android/camera/ui/CameraSnapView;->intoPattern(IZ)V

    goto :goto_6

    .line 66
    :cond_1e
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object p1

    sget v0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->MIMOJI_PREVIEW:I

    invoke-virtual {p1, v0}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->setMode(I)V

    .line 67
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v1, v7}, Lcom/android/camera/ui/CameraSnapView;->intoPattern(IZ)V

    .line 68
    :goto_6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xd4

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    .line 70
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onMimojiCreateBack()V

    const-string p0, "mimoji_click_create_back"

    .line 71
    invoke-static {p0, v4}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 72
    :sswitch_7
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingPaused:Z

    if-nez v0, :cond_1f

    return-void

    .line 73
    :cond_1f
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v0, v6, :cond_20

    const-string v0, "live_swith_camera"

    .line 74
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveClick(Ljava/lang/String;)V

    goto :goto_7

    :cond_20
    if-ne v0, v5, :cond_21

    const-string v0, "mi_live_switch_camera"

    .line 75
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    :cond_21
    :goto_7
    new-array v0, v3, [Landroid/view/View;

    aput-object p1, v0, v7

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->changeCamera([Landroid/view/View;)V

    :cond_22
    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090061 -> :sswitch_7
        0x7f090162 -> :sswitch_6
        0x7f09025c -> :sswitch_5
        0x7f09025d -> :sswitch_4
        0x7f090260 -> :sswitch_3
        0x7f090262 -> :sswitch_2
        0x7f090263 -> :sswitch_1
        0x7f090267 -> :sswitch_0
    .end sparse-switch
.end method

.method public onHandleSwitcher(I)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowLighting:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowLighting:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentActionLighting:Lcom/android/camera/fragment/bottom/action/FragmentActionLighting;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentActionLighting;->switchLighting(I)V

    :cond_2
    :goto_0
    return v1
.end method

.method public onModeClicked(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isShowFilterView()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isShowLightingView()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->IsInMimojiPreview()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb8

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiPreview()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_3

    const/16 v0, 0xa7

    if-ne p1, v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->changeModeByNewMode(II)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->initThumbLayoutByIntent()V

    return-void
.end method

.method public onSnapClick()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    const-string v1, "FragmentBottomAction"

    if-nez v0, :cond_0

    const-string p0, "onSnapClick: disabled"

    .line 2
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "onSnapClick: no context"

    .line 4
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {v2}, Lcom/android/camera/module/Module;->isIgnoreTouchEvent()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "onSnapClick: ignore onSnapClick event, because module isn\'t ready"

    .line 8
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "onSnapClick: ignore onSnapClick event, because screen slide is off"

    .line 10
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa1

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_4

    const-string p0, "onSnapClick: no camera action"

    .line 12
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string v3, "onSnapClick"

    .line 13
    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v4, 0xa2

    const/16 v5, 0xa

    if-eq v3, v2, :cond_9

    if-eq v3, v4, :cond_9

    const/16 v2, 0xa6

    if-eq v3, v2, :cond_9

    const/16 v2, 0xa9

    if-eq v3, v2, :cond_9

    const/16 v2, 0xac

    if-eq v3, v2, :cond_9

    const/16 v2, 0xae

    if-eq v3, v2, :cond_9

    const/16 v2, 0xb0

    if-eq v3, v2, :cond_9

    const/16 v2, 0xb1

    if-eq v3, v2, :cond_7

    const/16 v6, 0xb3

    if-eq v3, v6, :cond_9

    const/16 v6, 0xb4

    if-eq v3, v6, :cond_9

    const/16 v6, 0xb7

    if-eq v3, v6, :cond_6

    const/16 v6, 0xb8

    if-eq v3, v6, :cond_7

    .line 15
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isBlockSnap()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p0, "onSnapClick: block snap"

    .line 16
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 17
    :cond_5
    invoke-interface {v0, v5}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    goto :goto_0

    .line 18
    :cond_6
    invoke-interface {v0, v5}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    goto :goto_0

    .line 19
    :cond_7
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v3

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v3, v2, :cond_8

    const-string p0, "onSnapClick: doing action"

    .line 20
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 21
    :cond_8
    invoke-interface {v0, v5}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    goto :goto_0

    .line 22
    :cond_9
    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez v1, :cond_a

    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    .line 24
    :cond_a
    invoke-interface {v0, v5}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    .line 25
    :goto_0
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 26
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v4, v0, :cond_c

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 28
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const v1, 0x7f10002f

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 29
    :cond_b
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const v1, 0x7f100030

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 30
    :cond_c
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const v1, 0x7f100031

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 31
    :goto_1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const v0, 0x8000

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->sendAccessibilityEvent(I)V

    :cond_d
    return-void
.end method

.method public onSnapLongPress()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera;

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    const-string v1, "FragmentBottomAction"

    const-string v2, "onSnapLongPress"

    .line 7
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonLongClick()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mLongPressBurst:Z

    :cond_4
    return-void
.end method

.method public onSnapLongPressCancelIn()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "FragmentBottomAction"

    const-string v2, "onSnapLongPressCancelIn"

    .line 3
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonLongClickCancel(Z)V

    .line 5
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa5

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_2

    const/16 v1, 0xab

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->onSnapClick()V

    goto :goto_0

    .line 7
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mLongPressBurst:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mLongPressBurst:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public onSnapLongPressCancelOut()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "FragmentBottomAction"

    const-string v2, "onSnapLongPressCancelOut"

    .line 3
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonLongClickCancel(Z)V

    .line 5
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mLongPressBurst:Z

    if-eqz v0, :cond_2

    .line 6
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mLongPressBurst:Z

    :cond_2
    return-void
.end method

.method public onSnapPrepare()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa1

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const-string v0, "FragmentBottomAction"

    const-string v1, "onSnapPrepare"

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 4
    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonFocus(ZI)V

    return-void
.end method

.method public onSwitchBeautyActionMenu(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_0
    iput p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBeautyActionMenuType:I

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, v0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->switchMenuMode(IIZ)V

    return-void
.end method

.method public onSwitchCameraActionMenu(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xae

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb7

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowMiMoji:Z

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showOrHideMiMojiView()Z

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->switchMenuMode(IZ)V

    return-void
.end method

.method public onSwitchCameraPicker()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPicker:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 2
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->changeCamera([Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onSwitchKaleidoscopeActionMenu(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->switchMenuMode(IIZ)V

    return-void
.end method

.method public onSwitchLiveActionMenu(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_0
    iput p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentLiveActionMenuType:I

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->switchMenuMode(IIZ)V

    return-void
.end method

.method public onTrackSnapMissTaken(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xba

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;

    if-nez p0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrackSnapMissTaken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentBottomAction"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-interface {p0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;->onTrackShutterButtonMissTaken(J)V

    return-void
.end method

.method public onTrackSnapTaken(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xba

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;

    if-nez p0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrackSnapTaken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentBottomAction"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-interface {p0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;->onTrackShutterButtonTaken(J)V

    return-void
.end method

.method public processingAudioCapture(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->startRing()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->stopRing()V

    :goto_0
    return-void
.end method

.method public processingFailed()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateLoading(Z)V

    return-void
.end method

.method public processingFinish()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 7
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    .line 8
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingPaused:Z

    const/16 v0, 0x8

    .line 9
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setProgressBarVisible(I)V

    .line 10
    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v2}, Lcom/android/camera/ui/CameraSnapView;->showRoundPaintItem()V

    .line 11
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v3, 0xa7

    const/16 v4, 0xb8

    if-eq v2, v3, :cond_6

    const/16 v3, 0xae

    const/4 v5, 0x2

    if-eq v2, v3, :cond_5

    const/16 v3, 0xb1

    if-eq v2, v3, :cond_4

    const/16 v0, 0xb4

    if-eq v2, v0, :cond_3

    const/16 v0, 0xb7

    if-eq v2, v0, :cond_5

    if-eq v2, v4, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showNormalMimoji2Bottom()V

    .line 13
    invoke-direct {p0, v5}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setRecordingTimeState(I)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    const v2, 0x7f080257

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_0

    .line 16
    :cond_4
    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, v3, v1}, Lcom/android/camera/ui/CameraSnapView;->intoPattern(IZ)V

    goto :goto_0

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    invoke-direct {p0, v5}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setRecordingTimeState(I)V

    goto :goto_0

    .line 23
    :cond_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->C3()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    const v2, 0x7f080256

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_0

    .line 26
    :cond_7
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 27
    :goto_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 28
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isFPS960()Z

    move-result v2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v3

    invoke-static {v1, v0, v1, v2, v3}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 30
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v2, v4, :cond_8

    .line 31
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiCreate()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsInMimojiCreate:Z

    goto :goto_1

    .line 32
    :cond_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->IsInMimojiCreate()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsInMimojiCreate:Z

    .line 33
    :goto_1
    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    .line 34
    invoke-direct {p0, v1, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateBottomInRecording(ZZ)V

    return-void
.end method

.method public processingMimojiBack()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v1

    sget v2, Lcom/android/camera/module/impl/component/MimojiStatusManager;->MIMOJI_PREVIEW:I

    invoke-virtual {v1, v2}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->setMode(I)V

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMode(I)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPicker:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v1, v2}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 14
    :cond_1
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v3, 0xb8

    if-ne v1, v3, :cond_2

    .line 15
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showNormalMimoji2Bottom()V

    goto :goto_0

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPicker:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 17
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    invoke-static {p0, v0}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    :goto_0
    return-void
.end method

.method public processingMimojiPrepare()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xb8

    if-ne v0, v4, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMode(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 5
    iput-boolean v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    .line 6
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v2}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPicker:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 11
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->targetGone()Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 12
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v1, v3}, Lcom/android/camera/ui/CameraSnapView;->intoPattern(IZ)V

    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 15
    iput-boolean v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    .line 16
    invoke-direct {p0, v2, v2}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateBottomInRecording(ZZ)V

    .line 17
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v1, v3}, Lcom/android/camera/ui/CameraSnapView;->intoPattern(IZ)V

    return-void
.end method

.method public processingPause()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingPaused:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->pauseRecording()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    const v1, 0x7f080242

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    const v1, 0x7f10006a

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xae

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$5;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$5;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 10
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    .line 11
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setRecordingTimeState(I)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->addSegmentNow()V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v2}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    .line 16
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public processingPostAction()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    .line 4
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isFPS960()Z

    move-result v2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 9
    invoke-direct {p0, v1, v4}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateBottomInRecording(ZZ)V

    .line 10
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setProgressBarVisible(I)V

    return-void
.end method

.method public processingPrepare()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isFPS960()Z

    move-result v1

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 4
    invoke-static {v3, v0, v4, v1, v2}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 6
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xa2

    const/16 v5, 0xb1

    if-ne v1, v5, :cond_0

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->IsInMimojiCreate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/CameraSnapView;->intoPattern(IZ)V

    .line 9
    :cond_0
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v5, 0xb8

    if-ne v1, v5, :cond_1

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiCreate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/CameraSnapView;->intoPattern(IZ)V

    .line 12
    :cond_1
    invoke-direct {p0, v4, v4}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateBottomInRecording(ZZ)V

    .line 13
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->prepareRecording(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    .line 14
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xae

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_2

    if-ne v0, v5, :cond_3

    .line 15
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setRecordingTimeState(I)V

    :cond_3
    return-void
.end method

.method public processingResume()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingPaused:Z

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraSnapView;->resumeRecording()V

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    const v2, 0x7f080241

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    const v2, 0x7f100069

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xb7

    const/16 v3, 0xae

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_3

    :cond_0
    const/4 v1, 0x4

    .line 6
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setRecordingTimeState(I)V

    .line 7
    new-instance v1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v3}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    .line 9
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    const/16 v4, 0x8

    if-nez v1, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    :cond_3
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v1, v2, :cond_4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/a;->z2()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public processingSpeechShutter(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->startSpeech()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->stopSpeech()V

    :goto_0
    return-void
.end method

.method public processingStart()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    .line 5
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isFPS960()Z

    move-result v3

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v4

    .line 8
    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 13
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    return-void
.end method

.method public processingWorkspace(Z)V
    .locals 2

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->showRoundPaintItem()V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    const v1, 0x7f080242

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-direct {p1, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->targetGone()Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 8
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-direct {p1, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->targetGone()Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_6

    .line 10
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->targetGone()Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto/16 :goto_1

    .line 11
    :cond_2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb8

    if-ne p1, v1, :cond_3

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiRecordState()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->pauseRecording()V

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->addSegmentNow()V

    .line 18
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 20
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->targetGone()Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 22
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->targetGone()Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 23
    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 24
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->targetGone()Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_6
    :goto_1
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne p3, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/4 v4, 0x0

    if-nez v3, :cond_1

    if-eq v0, p1, :cond_4

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    .line 4
    invoke-static {v5, v7}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 5
    :cond_2
    iget-object v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mReverseDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_3

    .line 6
    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 7
    iput-object v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mReverseDialog:Landroid/app/AlertDialog;

    .line 8
    :cond_3
    iget-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowMiMoji:Z

    if-eqz v5, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showOrHideMiMojiView()Z

    .line 10
    :cond_4
    iget-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowLighting:Z

    if-eqz v5, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showOrHideLightingView()Z

    :cond_5
    const/16 v5, 0xb1

    if-ne v0, v5, :cond_7

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->IsInMimojiCreate()Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v3, :cond_6

    return-void

    .line 13
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->processingFinish()V

    :cond_7
    const/16 v5, 0xb8

    if-ne v0, v5, :cond_9

    .line 14
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiCreate()Z

    move-result v6

    if-eqz v6, :cond_9

    if-nez v3, :cond_8

    return-void

    .line 15
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->processingFinish()V

    :cond_9
    const/16 v6, 0xae

    if-eq v0, v6, :cond_a

    const/16 v6, 0xb7

    if-ne v0, v6, :cond_c

    .line 16
    :cond_a
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-eqz v0, :cond_c

    if-nez v3, :cond_b

    return-void

    .line 17
    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->processingFinish()V

    .line 18
    :cond_c
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->processingSpeechShutter(Z)V

    const/16 p3, 0xa5

    if-eq p1, p3, :cond_f

    if-eq p1, v5, :cond_e

    .line 20
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    if-eqz p2, :cond_d

    move v0, v2

    goto :goto_1

    :cond_d
    move v0, v1

    :goto_1
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isFPS960()Z

    move-result v3

    invoke-virtual {p3, p1, v0, v3}, Lcom/android/camera/ui/CameraSnapView;->setParameters(IZZ)V

    goto :goto_3

    .line 21
    :cond_e
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showNormalMimoji2Bottom()V

    goto :goto_3

    .line 22
    :cond_f
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {p3}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object p3

    const v0, 0x7f060038

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 23
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    if-eqz p2, :cond_10

    move v0, v2

    goto :goto_2

    :cond_10
    move v0, v1

    :goto_2
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isFPS960()Z

    move-result v3

    invoke-virtual {p3, p1, v0, v3}, Lcom/android/camera/ui/CameraSnapView;->setParameters(IZZ)V

    .line 24
    :goto_3
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {p3}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->clearBottomMenu()V

    .line 25
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "provideAnimateElement: newMode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mCurrentMode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", animateInElements = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "FragmentBottomAction"

    invoke-static {v0, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-boolean p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowLighting:Z

    if-eqz p3, :cond_11

    iget-boolean p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowMiMoji:Z

    if-nez p3, :cond_12

    .line 27
    :cond_11
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_12

    .line 28
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {p3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 29
    :cond_12
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {p3, p1, p2}, Lcom/android/camera/ui/ModeSelectView;->judgePosition(ILjava/util/List;)V

    const/4 p3, -0x1

    packed-switch p1, :pswitch_data_0

    .line 30
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    goto/16 :goto_9

    .line 31
    :pswitch_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiCreate()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 33
    iput-boolean v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    goto/16 :goto_9

    .line 34
    :cond_13
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 35
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    goto :goto_4

    .line 36
    :cond_14
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    move p1, v2

    move v0, p1

    move v2, p3

    move p3, v0

    goto/16 :goto_b

    :pswitch_2
    move p1, p3

    move v0, p1

    goto :goto_5

    .line 37
    :pswitch_3
    iput-boolean v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    goto/16 :goto_9

    .line 38
    :pswitch_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->r2()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 39
    iput-boolean v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    goto/16 :goto_9

    .line 40
    :cond_15
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    goto :goto_4

    .line 41
    :pswitch_5
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    :goto_4
    move v0, p3

    move p1, v2

    move p3, p1

    :goto_5
    move v2, v0

    goto/16 :goto_b

    .line 42
    :pswitch_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->f3()Z

    move-result p1

    if-nez p1, :cond_17

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->g3()Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_6

    .line 43
    :cond_16
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    goto :goto_4

    .line 44
    :cond_17
    :goto_6
    iput-boolean v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    goto :goto_9

    .line 45
    :pswitch_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->o2()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 46
    iput-boolean v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    goto :goto_9

    .line 47
    :cond_18
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    goto :goto_4

    .line 48
    :pswitch_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->p2()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 49
    iput-boolean v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    goto :goto_9

    .line 50
    :cond_19
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    goto :goto_4

    .line 51
    :pswitch_9
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    .line 52
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->C3()Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v2

    goto :goto_7

    :cond_1a
    move v0, p3

    .line 53
    :goto_7
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    const/16 v3, 0xb4

    if-ne p1, v3, :cond_1b

    const p1, 0x7f080257

    goto :goto_8

    :cond_1b
    const p1, 0x7f080256

    :goto_8
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    move p1, v2

    move v2, p3

    goto :goto_a

    .line 54
    :pswitch_a
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->j2()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 55
    iput-boolean v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    goto :goto_9

    .line 56
    :cond_1c
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    goto :goto_4

    .line 57
    :pswitch_b
    iput-boolean v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPickEnable:Z

    :goto_9
    move v0, p3

    move p1, v2

    :goto_a
    move p3, p1

    .line 58
    :goto_b
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPicker:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPicker:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_1e

    .line 59
    :cond_1d
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPicker:Landroid/widget/ImageView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 60
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPicker:Landroid/widget/ImageView;

    invoke-direct {p0, v2, p2, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->animateViews(ILjava/util/List;Landroid/view/View;)V

    .line 61
    :cond_1e
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    .line 62
    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p3, :cond_20

    .line 63
    :cond_1f
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p3, p2, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->animateViews(ILjava/util/List;Landroid/view/View;)V

    .line 65
    :cond_20
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_21

    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    .line 66
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eq p3, p1, :cond_22

    .line 67
    :cond_21
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 68
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->animateViews(ILjava/util/List;Landroid/view/View;)V

    .line 69
    :cond_22
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v0, :cond_24

    .line 70
    :cond_23
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 71
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingSwitch:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->animateViews(ILjava/util/List;Landroid/view/View;)V

    :cond_24
    return-void

    :pswitch_data_0
    .packed-switch 0xa3
        :pswitch_b
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 6

    const/16 v0, 0xf0

    if-eq p1, v0, :cond_1

    const v0, 0xff01

    const-wide/16 v1, 0x96

    const/16 v3, 0xa1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, v0, :cond_0

    const v0, 0xfff3

    if-eq p1, v0, :cond_0

    new-array p0, v5, [I

    aput v3, p0, v4

    .line 1
    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    .line 2
    invoke-virtual {p0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    new-array p0, v5, [I

    aput v3, p0, v4

    .line 4
    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected provideExitAnimation(I)Landroid/view/animation/Animation;
    .locals 3

    const v0, 0xfff3

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/android/camera/Util;->sBottomMargin:I

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    sub-int/2addr v0, p1

    int-to-float p1, v0

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_0

    :cond_0
    const v0, 0xff01

    if-ne p1, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/android/camera/Util;->sBottomMargin:I

    add-int/2addr v0, v1

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    sub-int/2addr v0, p1

    int-to-float p1, v0

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p1, 0x0

    const/16 v0, 0xa2

    aput v0, p0, p1

    .line 9
    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPicker:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingCameraPicker:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingReverse:Landroid/widget/ImageView;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xb3

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xa2

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xb7

    .line 4
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xc5

    .line 5
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 6
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public setClickEnable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    return-void
.end method

.method public setLightingViewStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowLighting:Z

    return-void
.end method

.method public showCameraPicker(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPicker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPicker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPicker:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPicker:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->animateViews(ILjava/util/List;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public showOrHideBottomViewWithAnim(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lc/h/a/j;

    invoke-direct {v1}, Lc/h/a/j;-><init>()V

    .line 2
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 3
    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    .line 4
    :goto_0
    invoke-virtual {v0, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v5, 0x0

    .line 5
    invoke-virtual {v0, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v6, Lc/h/a/j;

    invoke-direct {v6}, Lc/h/a/j;-><init>()V

    .line 8
    invoke-virtual {v0, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    if-eqz p1, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v4

    .line 10
    :goto_1
    invoke-virtual {v0, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 13
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCameraPicker:Landroid/widget/ImageView;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    new-instance v0, Lc/h/a/j;

    invoke-direct {v0}, Lc/h/a/j;-><init>()V

    .line 14
    invoke-virtual {p0, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 15
    invoke-virtual {p0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    .line 16
    :goto_2
    invoke-virtual {p0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 17
    invoke-virtual {p0, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public showOrHideFilterView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showOrHideLightingView()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowLighting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->startBottomAnimation(Z)V

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentLayoutExtra:Landroid/view/View;

    invoke-direct {p0, v2, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->startExtraLayoutAnimation(Landroid/view/View;Z)V

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentActionLighting:Lcom/android/camera/fragment/bottom/action/FragmentActionLighting;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentActionLighting;

    invoke-direct {v0}, Lcom/android/camera/fragment/bottom/action/FragmentActionLighting;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentActionLighting:Lcom/android/camera/fragment/bottom/action/FragmentActionLighting;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentActionLighting:Lcom/android/camera/fragment/bottom/action/FragmentActionLighting;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f0900ce

    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentActionLighting:Lcom/android/camera/fragment/bottom/action/FragmentActionLighting;

    .line 8
    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-static {v0, v2, v3, v4}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentActionLighting:Lcom/android/camera/fragment/bottom/action/FragmentActionLighting;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/FragmentActionLighting;->reInit()V

    .line 11
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->startBottomAnimation(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentLayoutExtra:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->startExtraLayoutAnimation(Landroid/view/View;Z)V

    .line 13
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowLighting:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowLighting:Z

    return v0
.end method

.method public showOrHideLoadingProgress(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->showRoundPaintItem()V

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    .line 3
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setProgressBarVisible(I)V

    return-void
.end method

.method public showOrHideMiMojiView()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowMiMoji:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectLayout:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 4
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentLayoutExtra:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->targetGone()Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentActionMimoji:Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;

    invoke-direct {v0}, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentActionMimoji:Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentActionMimoji:Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0900ce

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentActionMimoji:Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;

    .line 9
    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentActionMimoji:Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->reInit(I)V

    .line 12
    :goto_0
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->targetGone()Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 13
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mFragmentLayoutExtra:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 14
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowMiMoji:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsShowMiMoji:Z

    return v0
.end method

.method public showOrHideMimojiProgress(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->showRoundPaintItem()V

    .line 3
    :goto_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isFPS960()Z

    move-result v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v3, v0, v4, v1, v2}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 6
    iput-boolean v3, v0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsInMimojiCreate:Z

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    .line 8
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setProgressBarVisible(I)V

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/16 v0, 0xb3

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xa2

    .line 4
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xb7

    .line 5
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xc5

    .line 6
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 7
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public updateLoading(Z)V
    .locals 3

    if-nez p1, :cond_3

    .line 1
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/Util;->isSaveToHidenFolder(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsIntentAction:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mInLoading:Z

    .line 4
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa1

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa6

    if-eq v0, v1, :cond_2

    const/16 v1, 0xac

    if-eq v0, v1, :cond_2

    const/16 v1, 0xae

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb0

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCaptureProgressDelay:I

    int-to-long v1, p0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordProgressDelay:I

    int-to-long v1, p0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mInLoading:Z

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateRecordingTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomRecordingTime:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateThumbnail(Lcom/android/camera/Thumbnail;ZI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getStartFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq p3, v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p3}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v1

    if-eq v1, p1, :cond_2

    .line 6
    invoke-virtual {p3, p1, v0, v0}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    const-string p3, "FragmentBottomAction"

    const-string v1, "inconsistent thumbnail"

    .line 7
    invoke-static {p3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_2
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mInLoading:Z

    .line 10
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p3

    const/16 v0, 0x8

    if-eq p3, v0, :cond_3

    .line 11
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 12
    :cond_3
    iget-boolean p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsIntentAction:Z

    if-eqz p3, :cond_4

    return-void

    :cond_4
    if-nez p1, :cond_5

    .line 13
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const p1, 0x7f080258

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 14
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p3, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    invoke-virtual {p1, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    .line 17
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_7

    .line 18
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-eqz p1, :cond_6

    goto :goto_0

    .line 19
    :cond_6
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const p2, 0x3e99999a    # 0.3f

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 22
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 p1, 0x50

    .line 23
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_7
    :goto_0
    return-void
.end method
