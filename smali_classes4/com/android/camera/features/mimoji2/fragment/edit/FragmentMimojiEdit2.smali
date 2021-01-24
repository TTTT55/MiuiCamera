.class public Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentMimojiEdit2.java"

# interfaces
.implements Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# static fields
.field private static final EDIT_ABANDON:I = 0x4

.field private static final EDIT_ABANDON_CAPTURE:I = 0x3

.field private static final EDIT_BACK:I = 0x1

.field private static final EDIT_CANCEL:I = 0x5

.field public static final EDIT_STATE_CREATE:I = 0x2

.field private static final EDIT_STATE_CREATE_EDITED:I = 0x3

.field public static final EDIT_STATE_POP:I = 0x4

.field private static final EDIT_STATE_POP_EDITED:I = 0x5

.field public static final EDIT_STATE_SAVE:I = 0x6

.field private static final FRAGMENT_INFO:I = 0xfa2

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private fromTag:I

.field private mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

.field private mAvatarEngineManager2:Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

.field private mBackTextView:Landroid/widget/TextView;

.field private mConfirmTextView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCreateEmoticonTextView:Landroid/widget/TextView;

.field private mCurrentAlertDialog:Landroid/app/AlertDialog;

.field private mCurrentConfigPath:Ljava/lang/String;

.field private mCurrentTopPannelState:I

.field private mEditLevelListAdapter2:Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;

.field private mEditState:Z

.field private mEnterFromMimoji:Z

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mIsShowDialog:Z

.field private mIsStartEdit:Z

.field private mLevelRecyleView:Landroidx/recyclerview/widget/RecyclerView;

.field private mMimojiEditGLTextureView2:Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

.field private mMimojiEditViewLayout:Landroid/view/View;

.field private mMimojiPageChangeAnimManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;

.field private mMimojiTypeAdapter:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter<",
            "Lcom/android/camera/features/mimoji2/bean/MimojiTypeBean2;",
            ">;"
        }
    .end annotation
.end field

.field private mMimojiTypeSelectView:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;

.field private mMimojiTypeView:Landroid/widget/TextView;

.field private mOperateSelectLayout:Landroid/widget/LinearLayout;

.field private mPopSaveDeletePath:Ljava/lang/String;

.field private mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

.field private mRlAllEditContent:Landroid/widget/LinearLayout;

.field private mRlMainLayout:Landroid/widget/RelativeLayout;

.field private mRlNavigationlayout:Landroid/widget/RelativeLayout;

.field private mSaveFinishTextView:Landroid/widget/TextView;

.field private volatile mSetupCompleted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCurrentTopPannelState:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEditState:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEnterFromMimoji:Z

    const-string v1, ""

    .line 5
    iput-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCurrentConfigPath:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mPopSaveDeletePath:Ljava/lang/String;

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mIsShowDialog:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mSetupCompleted:Z

    .line 9
    new-instance v0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$3;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$3;-><init>(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)V

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic a()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEditState:Z

    .line 2
    iget v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->fromTag:I

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->updateTitleState(I)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiPageChangeAnimManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;->resetLayoutPosition(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->updateTitleState(I)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditViewLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditGLTextureView2:Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mIsStartEdit:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEnterFromMimoji:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCurrentConfigPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mIsShowDialog:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiPageChangeAnimManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEditState:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->fromTag:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)Lcom/arcsoft/avatar2/AvatarEngine;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCurrentTopPannelState:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mPopSaveDeletePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEditLevelListAdapter2:Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic c(Lcom/android/camera/features/mimoji2/bean/MimojiTypeBean2;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectListener position  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiPageChangeAnimManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;

    invoke-virtual {p2}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;->updateLayoutPosition()V

    .line 3
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEditLevelListAdapter2:Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p2, v0}, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->setIsColorNeedNotify(Z)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/bean/MimojiTypeBean2;->getASAvatarConfigType()Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xf7

    .line 7
    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 8
    iget p1, p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;->configType:I

    invoke-interface {p2, p1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2;->onTypeConfigSelect(I)V

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mLevelRecyleView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private synthetic e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->TAG:Ljava/lang/String;

    const-string v1, "avatar releaseRender 2"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p0}, Lcom/arcsoft/avatar2/AvatarEngine;->releaseRender()V

    :cond_0
    return-void
.end method

.method private synthetic g()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCurrentTopPannelState:I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v0, :cond_0

    const/16 v1, 0x13

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMode(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditViewLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRlMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRlNavigationlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9
    :cond_1
    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->clear()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEnterFromMimoji:Z

    .line 11
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mIsStartEdit:Z

    return-void
.end method

.method private initConfigList()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    iget-boolean v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEnterFromMimoji:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCurrentConfigPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TempOriginalConfigPath:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->initAvatar(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    invoke-direct {v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v1, v0}, Lcom/arcsoft/avatar2/AvatarEngine;->getConfigValue(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatarEngineManager2:Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->setASAvatarConfigValue(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatarEngineManager2:Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getASAvatarConfigValue()Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    move-result-object v1

    iget v1, v1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->gender:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->getSupportConfigType(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatarEngineManager2:Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->setConfigTypeList(Ljava/util/ArrayList;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mLevelRecyleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEditLevelListAdapter2:Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;

    if-nez v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->setLevelDatas(Ljava/util/List;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEditLevelListAdapter2:Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 10
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEditLevelListAdapter2:Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;

    if-nez v0, :cond_3

    .line 11
    new-instance v0, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/camera/features/mimoji2/fragment/edit/d;

    invoke-direct {v3, p0}, Lcom/android/camera/features/mimoji2/fragment/edit/d;-><init>(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)V

    invoke-direct {v0, v2, v3}, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;-><init>(Landroid/content/Context;Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2$ItfGvOnItemClickListener;)V

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEditLevelListAdapter2:Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mLevelRecyleView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEditLevelListAdapter2:Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    :goto_2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEditLevelListAdapter2:Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->setIsColorNeedNotify(Z)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiTypeAdapter:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter;

    if-nez v0, :cond_4

    .line 15
    new-instance v0, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter;

    invoke-direct {v0, v1}, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiTypeAdapter:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter;

    .line 16
    new-instance v1, Lcom/android/camera/features/mimoji2/fragment/edit/b;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimoji2/fragment/edit/b;-><init>(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter;->setOnSelectListener(Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter$OnSelectListener;)V

    .line 17
    :cond_4
    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getConfigTypeList()Ljava/util/ArrayList;

    move-result-object v0

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;

    .line 20
    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->queryAvatar()Lcom/arcsoft/avatar2/AvatarEngine;

    move-result-object v4

    iget v5, v3, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;->configType:I

    .line 21
    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getASAvatarConfigValue()Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    move-result-object v6

    iget v6, v6, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->gender:I

    .line 22
    invoke-virtual {v4, v5, v6}, Lcom/arcsoft/avatar2/AvatarEngine;->getConfig(II)Ljava/util/ArrayList;

    move-result-object v4

    .line 23
    sget-object v5, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "putConfigList:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;->configTypeDesc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;->configType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v5

    iget v6, v3, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;->configType:I

    invoke-virtual {v5, v6, v4}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->putConfigList(ILjava/util/ArrayList;)V

    .line 25
    iget v4, v3, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;->configType:I

    invoke-static {v4}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->filterTypeTitle(I)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    .line 26
    :cond_5
    new-instance v4, Lcom/android/camera/features/mimoji2/bean/MimojiTypeBean2;

    invoke-direct {v4}, Lcom/android/camera/features/mimoji2/bean/MimojiTypeBean2;-><init>()V

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v3, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;->configType:I

    invoke-static {v5, v6}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->replaceTabTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 28
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/features/mimoji2/widget/autoselectview/SelectItemBean;->setText(Ljava/lang/String;)V

    .line 29
    iget-object v5, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiTypeView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/camera/features/mimoji2/widget/autoselectview/SelectItemBean;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 30
    invoke-virtual {v4, v5}, Lcom/android/camera/features/mimoji2/widget/autoselectview/SelectItemBean;->setCurLength(F)V

    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/features/mimoji2/bean/MimojiTypeBean2;

    invoke-virtual {v5}, Lcom/android/camera/features/mimoji2/widget/autoselectview/SelectItemBean;->getCurTotalLength()F

    move-result v5

    invoke-virtual {v4}, Lcom/android/camera/features/mimoji2/widget/autoselectview/SelectItemBean;->getCurLength()F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Lcom/android/camera/features/mimoji2/widget/autoselectview/SelectItemBean;->getCurLength()F

    move-result v5

    .line 33
    :goto_4
    invoke-virtual {v4, v5}, Lcom/android/camera/features/mimoji2/widget/autoselectview/SelectItemBean;->setCurTotalLength(F)V

    const/4 v5, 0x0

    .line 34
    invoke-virtual {v4, v5}, Lcom/android/camera/features/mimoji2/widget/autoselectview/SelectItemBean;->setAlpha(I)V

    .line 35
    invoke-virtual {v4, v3}, Lcom/android/camera/features/mimoji2/bean/MimojiTypeBean2;->setASAvatarConfigType(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;)V

    .line 36
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 37
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 38
    sget-object p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->TAG:Ljava/lang/String;

    const-string v0, " initConfigList() size 0 error"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 39
    :cond_8
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiTypeAdapter:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter;->setDataList(Ljava/util/ArrayList;)V

    .line 40
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiTypeSelectView:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiTypeAdapter:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/16 v0, 0xc9

    .line 41
    iget v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->fromTag:I

    if-ne v0, v1, :cond_9

    const/4 v0, 0x4

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->updateTitleState(I)V

    goto :goto_5

    :cond_9
    const/4 v0, 0x2

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->updateTitleState(I)V

    :goto_5
    return-void
.end method

.method private initMimojiEdit(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0901c5

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRlMainLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0901d5

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRlNavigationlayout:Landroid/widget/RelativeLayout;

    .line 3
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901c3

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 5
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090135

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRlAllEditContent:Landroid/widget/LinearLayout;

    const v0, 0x7f090238

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCreateEmoticonTextView:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09023f

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mSaveFinishTextView:Landroid/widget/TextView;

    .line 10
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090235

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mBackTextView:Landroid/widget/TextView;

    .line 12
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090064

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mConfirmTextView:Landroid/widget/TextView;

    .line 14
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090165

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditGLTextureView2:Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

    .line 16
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;->setHandler(Landroid/os/Handler;)V

    const v0, 0x7f090190

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiTypeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0090

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090242

    .line 21
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiTypeView:Landroid/widget/TextView;

    :cond_0
    const v0, 0x7f09016f

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiTypeSelectView:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;

    .line 23
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    const v0, 0x7f090098

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mLevelRecyleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mLevelRecyleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-nez p1, :cond_1

    .line 27
    new-instance p1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mContext:Landroid/content/Context;

    const-string v1, "color_level"

    invoke-direct {p1, v0, v1}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 29
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mLevelRecyleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 30
    :cond_1
    new-instance p1, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$2;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$2;-><init>(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)V

    invoke-direct {p1, v0, v1}, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;-><init>(Landroid/content/Context;Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2$ItfGvOnItemClickListener;)V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEditLevelListAdapter2:Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;

    .line 31
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mLevelRecyleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 32
    new-instance p1, Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;

    invoke-direct {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiPageChangeAnimManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;

    .line 33
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditGLTextureView2:Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRlAllEditContent:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;->initView(Landroid/content/Context;Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;Landroid/widget/LinearLayout;I)V

    return-void
.end method

.method private resetData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatarEngineManager2:Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->resetData()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEditLevelListAdapter2:Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->setIsColorNeedNotify(Z)V

    .line 5
    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getSelectType()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getSubConfigList(Landroid/content/Context;I)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEditLevelListAdapter2:Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;

    invoke-virtual {v2, v0}, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->setLevelDatas(Ljava/util/List;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->getIsRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->setResetStopRender(Z)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->draw(Z)V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEditLevelListAdapter2:Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 11
    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetData   mEnterFromMimoji :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEnterFromMimoji:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    iget-boolean v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEnterFromMimoji:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCurrentConfigPath:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TempOriginalConfigPath:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, p0}, Lcom/arcsoft/avatar2/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    return-void
.end method

.method private setupAvatar()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->TAG:Ljava/lang/String;

    const-string v1, "setup avatar"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mSetupCompleted:Z

    .line 3
    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatarEngineManager2:Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->queryAvatar()Lcom/arcsoft/avatar2/AvatarEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    .line 5
    sget-object v2, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->loadColorValue(Ljava/lang/String;)I

    .line 6
    iget-boolean v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEnterFromMimoji:Z

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    sget-object v2, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setTemplatePath(Ljava/lang/String;)V

    .line 8
    :cond_0
    new-instance v1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    invoke-direct {v1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;-><init>()V

    .line 9
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v2, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->getConfigValue(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V

    .line 10
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatarEngineManager2:Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    invoke-virtual {v2, v1}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->setASAvatarConfigValue(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V

    .line 11
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatarEngineManager2:Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    invoke-virtual {v2, v1}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->setASAvatarConfigValueDefault(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V

    .line 12
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    const v2, 0x3f59999a    # 0.85f

    invoke-virtual {v1, v0, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene(ZF)V

    .line 13
    new-instance v1, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mContext:Landroid/content/Context;

    const-string v3, "MimojiEdit"

    const/16 v4, 0x1f4

    invoke-direct {v1, v3, v4, v4, v2}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;-><init>(Ljava/lang/String;IILandroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 15
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->waitUntilReady()V

    .line 16
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->setUpdateHandler(Landroid/os/Handler;)V

    .line 17
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEditLevelListAdapter2:Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;

    if-eqz v1, :cond_1

    .line 18
    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimoji2/fragment/edit/EditLevelListAdapter2;->setRenderThread(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;)V

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatarEngineManager2:Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->initUpdatePara()V

    .line 20
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    sget-object v2, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TempOriginalConfigPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->saveConfig(Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mSetupCompleted:Z

    .line 22
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditGLTextureView2:Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

    if-eqz v1, :cond_2

    .line 23
    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;->setIsStopRenderForce(Z)V

    .line 24
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditGLTextureView2:Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;->setStopRender(Z)V

    .line 25
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xf6

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;

    if-eqz p0, :cond_3

    .line 27
    invoke-interface {p0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;->onMimojiInitFinish()V

    :cond_3
    return-void
.end method

.method private showAlertDialog(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mIsShowDialog:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v0, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const v2, 0x7f1001c0

    goto :goto_0

    :cond_2
    const v2, 0x7f1001c1

    goto :goto_0

    :cond_3
    const v2, 0x7f1001c3

    :goto_0
    if-ne v2, v1, :cond_4

    return-void

    .line 2
    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f1001ab

    .line 5
    new-instance v3, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$4;

    invoke-direct {v3, p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$4;-><init>(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f1001a2

    .line 6
    new-instance v2, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$5;

    invoke-direct {v2, p0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$5;-><init>(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)V

    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mIsShowDialog:Z

    .line 8
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCurrentAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public synthetic b()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->a()V

    return-void
.end method

.method public createEmoticonPicture(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/arcsoft/avatar2/emoticon/EmoInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->TAG:Ljava/lang/String;

    const-string v1, "createEmoticonVideo mRenderThread null "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->setupAvatar()V

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->drawForEmoticonPicture(Ljava/util/List;)V

    return-void
.end method

.method public createEmoticonThumbnail()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->TAG:Ljava/lang/String;

    const-string v1, "createEmoticonVideo mRenderThread null "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->setupAvatar()V

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->drawForEmoticonThumbnail()V

    return-void
.end method

.method public createEmoticonVideo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/arcsoft/avatar2/emoticon/EmoInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->TAG:Ljava/lang/String;

    const-string v1, "createEmoticonVideo mRenderThread null "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->setupAvatar()V

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->recordForEmoticonVideo(Ljava/util/List;)V

    return-void
.end method

.method public synthetic d(Lcom/android/camera/features/mimoji2/bean/MimojiTypeBean2;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->c(Lcom/android/camera/features/mimoji2/bean/MimojiTypeBean2;I)V

    return-void
.end method

.method public directlyEnterEditMode(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCurrentConfigPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mPackPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mPopSaveDeletePath:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCurrentConfigPath:Ljava/lang/String;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEnterFromMimoji:Z

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mIsStartEdit:Z

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMode(I)V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->forceSwitchFront()Z

    .line 9
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0, p1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;->setDisableSingleTapUp(Z)V

    .line 12
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 13
    fill-array-data v1, :array_0

    invoke-interface {v0, p1, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem(Z[I)V

    .line 14
    invoke-virtual {p0, p2}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->startMimojiEdit(I)V

    return-void

    :array_0
    .array-data 4
        0xc5
        0xc1
    .end array-data
.end method

.method public synthetic f()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->e()V

    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xfa2

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0c0064

    return p0
.end method

.method public goBack(ZZ)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->clear()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditGLTextureView2:Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->releaseRender()V

    :cond_0
    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCurrentTopPannelState:I

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0, p2, v1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;->backToPreview(ZZ)V

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {v0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiAvatarEngine2;->onMimojiCreate()V

    :cond_1
    if-eqz p2, :cond_2

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xf8

    .line 10
    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiBottomList;

    if-eqz p1, :cond_2

    .line 11
    invoke-interface {p1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiBottomList;->refreshMimojiList()I

    .line 12
    :cond_2
    iput-boolean v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEnterFromMimoji:Z

    .line 13
    iput-boolean v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mIsStartEdit:Z

    .line 14
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditViewLayout:Landroid/view/View;

    const/16 p2, 0x8

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRlAllEditContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditGLTextureView2:Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->quit()V

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object p1, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic h()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->g()V

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mIsStartEdit:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->showAlertDialog(I)V

    return v1

    .line 3
    :cond_1
    iget p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->fromTag:I

    const/16 v2, 0xcb

    if-ne p1, v2, :cond_2

    iget p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCurrentTopPannelState:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 4
    invoke-direct {p0, v1}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->showAlertDialog(I)V

    return v1

    .line 5
    :cond_2
    iget p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCurrentTopPannelState:I

    const/4 v2, 0x6

    if-ne p1, v2, :cond_3

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->goBack(ZZ)V

    return v1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditViewLayout:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_4

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiEdit()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    .line 10
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->showAlertDialog(I)V

    return v1

    :cond_4
    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mSetupCompleted:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/camera/features/mimoji2/utils/ClickCheck2;->getInstance()Lcom/android/camera/features/mimoji2/utils/ClickCheck2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/utils/ClickCheck2;->checkClickable()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 3
    :sswitch_0
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->goBack(ZZ)V

    goto/16 :goto_0

    .line 4
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->showEmoticon()V

    goto :goto_0

    .line 5
    :sswitch_2
    iget p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->fromTag:I

    const/16 v2, 0xc9

    if-ne p1, v2, :cond_1

    const/4 p1, 0x5

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->showAlertDialog(I)V

    goto :goto_0

    :cond_1
    const/16 v2, 0xcb

    const/4 v3, 0x2

    if-ne p1, v2, :cond_2

    .line 7
    iget p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCurrentTopPannelState:I

    if-ne p1, v3, :cond_2

    .line 8
    invoke-direct {p0, v1}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->showAlertDialog(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-boolean p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEditState:Z

    if-eqz p1, :cond_5

    .line 10
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEditState:Z

    .line 11
    invoke-virtual {p0, v3}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->updateTitleState(I)V

    .line 12
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->resetData()V

    const-string p0, "edit_reset"

    const-string p1, "edit"

    .line 13
    invoke-static {p0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :sswitch_3
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditGLTextureView2:Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

    invoke-virtual {p1, v1}, Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;->setSaveConfigThum(Z)V

    .line 15
    iget-boolean p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mIsStartEdit:Z

    if-eqz p1, :cond_4

    .line 16
    new-instance p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    invoke-direct {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;-><init>()V

    .line 17
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->getConfigValue(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V

    .line 18
    invoke-static {p1}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getMimojiConfigValue(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "attr_event_name"

    const-string v1, "click"

    .line 19
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-boolean p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEnterFromMimoji:Z

    const-string v0, "key_edit_save"

    const-string v1, "attr_mimoji_edit_count"

    if-eqz p0, :cond_3

    const-string p0, "second"

    .line 21
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiSavePara(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    const-string p0, "first"

    .line 23
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiSavePara(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    const-string p0, "preview_mid_save"

    const-string p1, "preview_mid"

    .line 25
    invoke-static {p0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090064 -> :sswitch_3
        0x7f090235 -> :sswitch_2
        0x7f090238 -> :sswitch_1
        0x7f09023f -> :sswitch_0
    .end sparse-switch
.end method

.method public onDeviceRotationChange(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditGLTextureView2:Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;->onDeviceRotationChange(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEnterFromMimoji:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCurrentConfigPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TempEditConfigPath:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p0}, Lcom/arcsoft/avatar2/AvatarEngine;->saveConfig(Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimoji2/utils/ClickCheck2;->getInstance()Lcom/android/camera/features/mimoji2/utils/ClickCheck2;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/utils/ClickCheck2;->setForceDisabled(Z)V

    .line 2
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimoji2/utils/ClickCheck2;->getInstance()Lcom/android/camera/features/mimoji2/utils/ClickCheck2;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/utils/ClickCheck2;->setForceDisabled(Z)V

    .line 2
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    return-void
.end method

.method public onTypeConfigSelect(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatarEngineManager2:Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->setIsColorSelected(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatarEngineManager2:Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->setSelectType(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->getIsRendering()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x6

    .line 5
    iput v0, p1, Landroid/os/Message;->what:I

    .line 6
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->setStopRender(Z)V

    :goto_0
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

    .line 2
    sget-object p1, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "provideAnimateElement, animateInElements"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "resetType = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditViewLayout:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x3

    if-ne p3, p1, :cond_1

    .line 4
    sget-object p1, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->TAG:Ljava/lang/String;

    const-string p2, "mimoji edit timeout"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->goBack(ZZ)V

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->reset()V

    .line 7
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCurrentAlertDialog:Landroid/app/AlertDialog;

    if-eqz p2, :cond_0

    .line 8
    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mIsShowDialog:Z

    .line 9
    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCurrentAlertDialog:Landroid/app/AlertDialog;

    .line 11
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xa0

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 12
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->getFragmentInto()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    :cond_1
    return-void
.end method

.method public quitCoverEmoticon()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->quitEmoticonVideo()V

    :cond_0
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xf7

    .line 4
    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public releaseRender()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditGLTextureView2:Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;->setIsStopRenderForce(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditGLTextureView2:Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

    new-instance v1, Lcom/android/camera/features/mimoji2/fragment/edit/a;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimoji2/fragment/edit/a;-><init>(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLTextureView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditGLTextureView2:Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditGLTextureView2:Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

    .line 3
    invoke-virtual {v0}, Landroid/view/TextureView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditGLTextureView2:Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;->setStopRender(Z)V

    .line 5
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditGLTextureView2:Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    :cond_0
    return-void
.end method

.method public resetClickEnable(Z)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimoji2/utils/ClickCheck2;->getInstance()Lcom/android/camera/features/mimoji2/utils/ClickCheck2;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimoji2/utils/ClickCheck2;->setForceDisabled(Z)V

    return-void
.end method

.method public resetConfig()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditGLTextureView2:Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->TAG:Ljava/lang/String;

    const-string v0, "resetConfig view NULL, UI need init "

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;->setStopRender(Z)V

    .line 4
    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatarEngineManager2:Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->queryAvatar()Lcom/arcsoft/avatar2/AvatarEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    .line 6
    iget-boolean v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEnterFromMimoji:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCurrentConfigPath:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TempEditConfigPath:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    const v1, 0x3f59999a    # 0.85f

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene(ZF)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditGLTextureView2:Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;->setIsStopRenderForce(Z)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditGLTextureView2:Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

    invoke-virtual {p0, v2}, Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;->setStopRender(Z)V

    return-void
.end method

.method public showEmoticon()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/camera/features/mimoji2/fragment/edit/c;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimoji2/fragment/edit/c;-><init>(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startMimojiEdit(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMimojiEdit\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mSetupCompleted:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditViewLayout:Landroid/view/View;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditViewLayout:Landroid/view/View;

    .line 5
    invoke-direct {p0, v1}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->initMimojiEdit(Landroid/view/View;)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mLevelRecyleView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->isFullScreenNavBarHidden(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 10
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 11
    :cond_1
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 12
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 13
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->getFragmentInto()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 14
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRlMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 15
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRlNavigationlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 16
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditViewLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditGLTextureView2:Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;->setStopRender(Z)V

    .line 18
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditGLTextureView2:Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 19
    iput p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->fromTag:I

    .line 20
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditViewLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$1;-><init>(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 21
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->setupAvatar()V

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_3

    .line 22
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->initConfigList()V

    goto :goto_2

    .line 23
    :cond_3
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRenderThread:Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    iget-boolean v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mEnterFromMimoji:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCurrentConfigPath:Ljava/lang/String;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TempOriginalConfigPath:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->initAvatar(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->showEmoticon()V

    :goto_2
    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xf7

    .line 4
    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mIsStartEdit:Z

    return-void
.end method

.method public updateTitleState(I)V
    .locals 6

    const/4 v0, 0x2

    const v1, 0x7f1001e3

    const v2, 0x7f0600b7

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    iput v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCurrentTopPannelState:I

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiPageChangeAnimManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mMimojiEditGLTextureView2:Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

    iget-object v3, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRlAllEditContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;->initView(Landroid/content/Context;Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;Landroid/widget/LinearLayout;I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRlAllEditContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_9

    .line 7
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_0

    .line 12
    :cond_3
    iput v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCurrentTopPannelState:I

    .line 13
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRlAllEditContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1001a2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_0

    .line 24
    :cond_5
    iput v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCurrentTopPannelState:I

    .line 25
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRlAllEditContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    .line 27
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 28
    :cond_6
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 33
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 34
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 35
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1001e2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 37
    :cond_7
    iput v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mCurrentTopPannelState:I

    .line 38
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mRlAllEditContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 39
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_8

    .line 40
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 41
    :cond_8
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f1001e0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 45
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_9
    :goto_0
    return-void
.end method
