.class public Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentDualCameraBokehAdjust.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/fragment/manually/ManuallyListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$BokehFNumberController;


# static fields
.field private static final DEFAULT_SCROLL_DURATION:I = 0xfa

.field public static final FRAGMENT_INFO:I = 0xffb

.field private static final HIDE_POPUP:I = 0x1

.field public static final TAG:Ljava/lang/String; = "BokehAdjust"


# instance fields
.field private mBokehFButtonHeight:I

.field private mCurrentState:I

.field private mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mDualBokehFButton:Landroid/view/View;

.field private mDualParentLayout:Landroid/view/ViewGroup;

.field private mFNumberTextView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHorizontalSlideLayout:Landroid/view/ViewGroup;

.field private mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

.field private mImageIndicator:Landroid/widget/ImageView;

.field private mItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

.field private mLastTs:J

.field private mShowImageIndicator:Z

.field private mSlideLayoutHeight:I

.field private mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;

.field private mSnapStyle:Landroid/text/style/TextAppearanceSpan;

.field private mStringBuilder:Landroid/text/SpannableStringBuilder;

.field private mTabListener:Lcom/android/camera/ui/HorizontalSlideView$OnTabListener;

.field private mXTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mZoomInAnimator:Landroid/animation/AnimatorSet;

.field private mZoomInOutAnimator:Landroid/animation/AnimatorSet;

.field private mZoomOutAnimator:Landroid/animation/AnimatorSet;

.field private mZoomPopupTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mCurrentState:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mShowImageIndicator:Z

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mLastTs:J

    .line 5
    new-instance v0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$1;-><init>(Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHandler:Landroid/os/Handler;

    .line 6
    new-instance v0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$2;-><init>(Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mZoomPopupTouchListener:Landroid/view/View$OnTouchListener;

    .line 7
    new-instance v0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$3;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$3;-><init>(Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

    .line 8
    new-instance v0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$4;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$4;-><init>(Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mTabListener:Lcom/android/camera/ui/HorizontalSlideView$OnTabListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->sendHideMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mLastTs:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mLastTs:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->playSound(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mImageIndicator:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualBokehFButton:Landroid/view/View;

    return-object p0
.end method

.method private adjustViewBackground(Landroid/view/View;I)V
    .locals 0

    const p0, 0x7f06005d

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private hideSlideView()V
    .locals 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mShowImageIndicator:Z

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->setEnable(Z)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    new-instance v3, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-direct {v3, v4}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v3

    new-instance v4, Lc/h/a/G;

    invoke-direct {v4}, Lc/h/a/G;-><init>()V

    .line 6
    invoke-virtual {v3, v4}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v3

    const/16 v4, 0x8c

    invoke-virtual {v3, v4}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v3

    .line 7
    invoke-static {v3}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    .line 9
    :goto_0
    iget-object v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->isVisible(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v1, :cond_2

    .line 10
    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-static {v3}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_1

    .line 11
    :cond_2
    new-instance v3, Lcom/android/camera/animation/type/TranslateYAlphaOutOnSubscribe;

    iget-object v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mSlideLayoutHeight:I

    invoke-direct {v3, v4, v5}, Lcom/android/camera/animation/type/TranslateYAlphaOutOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 12
    invoke-virtual {v3, v4}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v3

    .line 13
    invoke-static {v3}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :goto_1
    move v3, v0

    .line 15
    :cond_3
    iget-object v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualBokehFButton:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->isVisible(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v1, :cond_4

    .line 16
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualBokehFButton:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_2

    .line 17
    :cond_4
    new-instance v1, Lcom/android/camera/animation/type/TranslateYAlphaOutOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualBokehFButton:Landroid/view/View;

    iget v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mSlideLayoutHeight:I

    invoke-direct {v1, v3, v4}, Lcom/android/camera/animation/type/TranslateYAlphaOutOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 18
    invoke-virtual {v1, v3}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v1

    .line 19
    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_2

    :cond_5
    move v0, v3

    .line 21
    :goto_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 22
    new-instance v1, Lcom/android/camera/animation/type/TranslateYAlphaInOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mImageIndicator:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_6

    iget v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mSlideLayoutHeight:I

    goto :goto_3

    :cond_6
    move v4, v2

    :goto_3
    invoke-direct {v1, v3, v4}, Lcom/android/camera/animation/type/TranslateYAlphaInOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 23
    invoke-virtual {v1, v3}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v1

    .line 24
    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_7
    if-eqz v0, :cond_8

    .line 26
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->notifyTipsMargin(I)V

    .line 27
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_8

    .line 28
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_8
    return-void
.end method

.method private initSlideFNumberView()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {v0, v1, v2, p0}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;-><init>(Landroid/content/Context;ILcom/android/camera/fragment/manually/ManuallyListener;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/HorizontalSlideView;->setOnPositionSelectListener(Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HorizontalSlideView;->setJustifyEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/HorizontalSlideView;->setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;)V

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->readFNumber()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;

    invoke-virtual {v2, v0}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mapFNumberToPosition(Ljava/lang/String;)F

    move-result v0

    .line 7
    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/HorizontalSlideView;->setSelection(FZ)V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->resetFNumber()V

    return-void
.end method

.method private isVisible(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyTipsMargin(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    const/4 v0, 0x1

    .line 3
    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipBottomMargin(IZ)V

    return-void
.end method

.method private playSound(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->canProvide()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    const/4 p1, 0x6

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ActivityBase;->playCameraSound(IF)V

    :cond_0
    return-void
.end method

.method private requestFNumber(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new f number is ignored: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BokehAdjust"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xae

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onBokehFNumberValueChanged(Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->setFNumberText()V

    return-void
.end method

.method private resetFNumber()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->setFNumberText()V

    return-void
.end method

.method private sendHideMessage()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private setFNumberText()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->readFNumber()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    const/16 v3, 0x21

    invoke-static {v1, v0, v2, v3}, Lcom/android/camera/Util;->appendInApi26(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualBokehFButton:Landroid/view/View;

    const v2, 0x7f100025

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualBokehFButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$6;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$6;-><init>(Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mFNumberTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showSlideView()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc2

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "BokehAdjust"

    const-string v0, "beauty panel shown. do not show the slide view."

    .line 4
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->setEnable(Z)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mSlideLayoutHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 9
    new-instance v0, Lcom/android/camera/animation/type/TranslateYAlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-direct {v0, v2, v1}, Lcom/android/camera/animation/type/TranslateYAlphaInOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 10
    invoke-virtual {v0, v2}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualBokehFButton:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualBokehFButton:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mSlideLayoutHeight:I

    iget v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mBokehFButtonHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 15
    new-instance v0, Lcom/android/camera/animation/type/TranslateYAlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualBokehFButton:Landroid/view/View;

    iget v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mBokehFButtonHeight:I

    invoke-direct {v0, v2, v3}, Lcom/android/camera/animation/type/TranslateYAlphaInOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance v2, Lc/h/a/c;

    invoke-direct {v2}, Lc/h/a/c;-><init>()V

    .line 16
    invoke-virtual {v0, v2}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 19
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mSlideLayoutHeight:I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->notifyTipsMargin(I)V

    .line 20
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xaf

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_1

    .line 21
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directHideTipImage()V

    .line 22
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directShowOrHideLeftTipImage(Z)V

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mImageIndicator:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 24
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mImageIndicator:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mSlideLayoutHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 25
    new-instance v0, Lcom/android/camera/animation/type/TranslateYAlphaOutOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mImageIndicator:Landroid/widget/ImageView;

    invoke-direct {v0, v2, v1}, Lcom/android/camera/animation/type/TranslateYAlphaOutOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance v2, Lc/h/a/c;

    invoke-direct {v2}, Lc/h/a/c;-><init>()V

    .line 26
    invoke-virtual {v0, v2}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 29
    iput-boolean v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mShowImageIndicator:Z

    return-void
.end method


# virtual methods
.method public getBokehFButtonHeight()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mCurrentState:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mBokehFButtonHeight:I

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xffb

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0c0049

    return p0
.end method

.method public hideFNumberPanel(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mCurrentState:I

    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->hideSlideView()V

    .line 4
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->targetGone()Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->getBottomHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const v0, 0x7f090053

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0900a7

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualBokehFButton:Landroid/view/View;

    const v1, 0x7f0900c4

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mFNumberTextView:Landroid/widget/TextView;

    const v0, 0x7f0900a8

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mImageIndicator:Landroid/widget/ImageView;

    const v0, 0x7f0900aa

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0900a9

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/HorizontalSlideView;

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mZoomPopupTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/HorizontalSlideView;->setOnItemSelectListener(Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mTabListener:Lcom/android/camera/ui/HorizontalSlideView$OnTabListener;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/HorizontalSlideView;->setOnTabListener(Lcom/android/camera/ui/HorizontalSlideView$OnTabListener;)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mImageIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mImageIndicator:Landroid/widget/ImageView;

    const v0, 0x7f100024

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mImageIndicator:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$5;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust$5;-><init>(Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualBokehFButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701a5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mBokehFButtonHeight:I

    .line 19
    new-instance p1, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11018b

    invoke-direct {p1, v0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    .line 20
    new-instance p1, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11018c

    invoke-direct {p1, v0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mXTextStyle:Landroid/text/style/TextAppearanceSpan;

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f020001

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    check-cast p1, Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mZoomInOutAnimator:Landroid/animation/AnimatorSet;

    .line 22
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualBokehFButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mZoomInOutAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lc/h/a/w;

    invoke-direct {v0}, Lc/h/a/w;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x7f020000

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    check-cast p1, Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    .line 25
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualBokehFButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lc/h/a/v;

    invoke-direct {v0}, Lc/h/a/v;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f020002

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    check-cast p1, Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    .line 28
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualBokehFButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 29
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lc/h/a/v;

    invoke-direct {v0}, Lc/h/a/v;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 31
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-float p1, p1

    const/high16 v1, 0x3f400000    # 0.75f

    div-float v1, p1, v1

    sub-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    float-to-int p1, v1

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07026b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 33
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mSlideLayoutHeight:I

    .line 34
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->adjustViewBackground(Landroid/view/View;I)V

    .line 35
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public isFNumberVisible()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mImageIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualBokehFButton:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->isVisible(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xab

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa2

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 4
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowLightingView()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xc2

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 7
    :cond_2
    :goto_0
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->adjustViewBackground(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mShowImageIndicator:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xab

    if-eq v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->stopScroll()V

    return v1

    .line 5
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->hideSlideView()V

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

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

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 6
    :pswitch_0
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mImageIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "M_portrait_"

    const-string v1, "bokeh_adjust_entry"

    .line 8
    invoke-static {v0, v1, p1}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->initSlideFNumberView()V

    .line 10
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->sendHideMessage()V

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa2

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_2

    .line 15
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowFilterView()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 16
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showOrHideFilter()V

    .line 17
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->showSlideView()V

    goto :goto_0

    .line 18
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->hideSlideView()V

    goto :goto_0

    .line 19
    :pswitch_1
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualBokehFButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_4

    .line 20
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->hideSlideView()V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0900a7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isInModeChanging()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->requestFNumber(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xab

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->hideSlideView()V

    :cond_0
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    const/4 p3, 0x1

    const/4 v0, -0x1

    const/16 v1, 0xab

    if-eq p1, v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualBokehFButton:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mImageIndicator:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setRotation(F)V

    move p1, p3

    .line 5
    :goto_1
    iget v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mCurrentState:I

    if-ne v1, p1, :cond_3

    if-ne p3, v1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->isVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->hideSlideView()V

    :cond_2
    return-void

    .line 8
    :cond_3
    iput p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mCurrentState:I

    const/16 v1, 0x8

    if-eq p1, v0, :cond_8

    if-eq p1, p3, :cond_4

    goto/16 :goto_4

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    const/4 p3, 0x4

    if-nez p1, :cond_5

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualBokehFButton:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mImageIndicator:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p3

    if-eq p3, v1, :cond_6

    iget p3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mSlideLayoutHeight:I

    int-to-float p3, p3

    goto :goto_2

    :cond_6
    const/4 p3, 0x0

    :goto_2
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 14
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->resetFNumber()V

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mImageIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->isVisible(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_b

    if-nez p2, :cond_7

    .line 16
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mImageIndicator:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_4

    .line 17
    :cond_7
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mImageIndicator:Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    .line 18
    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    .line 19
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 20
    :cond_8
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->isVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_a

    if-nez p2, :cond_9

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 22
    :cond_9
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-direct {p1, p3}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    .line 23
    invoke-virtual {p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->targetGone()Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    .line 24
    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    .line 25
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_3
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mShowImageIndicator:Z

    :cond_b
    :goto_4
    return-void
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
    iget-object p2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualBokehFButton:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualBokehFButton:Landroid/view/View;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mImageIndicator:Landroid/widget/ImageView;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xd2

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public showFNumberPanel(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mShowImageIndicator:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mCurrentState:I

    const-string v0, "BokehAdjust"

    const-string v1, "showFNumber"

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->hideSlideView()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->showSlideView()V

    :goto_0
    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/16 v0, 0xd2

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 4
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public updateFNumberValue()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->setFNumberText()V

    return-void
.end method

.method public visibleHeight()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mCurrentState:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mShowImageIndicator:Z

    if-eqz v0, :cond_2

    .line 4
    iget p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mBokehFButtonHeight:I

    return p0

    .line 5
    :cond_2
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mBokehFButtonHeight:I

    iget p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraBokehAdjust;->mSlideLayoutHeight:I

    add-int/2addr v0, p0

    return v0
.end method
