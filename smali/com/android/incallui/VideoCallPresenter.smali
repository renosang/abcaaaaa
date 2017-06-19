.class public Lcom/android/incallui/VideoCallPresenter;
.super Lcom/android/incallui/Presenter;
.source "VideoCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;
.implements Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
.implements Lcom/android/incallui/InCallPresenter$InCallEventListener;
.implements Lcom/android/incallui/InCallUiStateNotifierListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/VideoCallPresenter$1;,
        Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/VideoCallPresenter$VideoCallUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
        "Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;",
        "Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;",
        "Lcom/android/incallui/InCallPresenter$InCallEventListener;",
        "Lcom/android/incallui/InCallUiStateNotifierListener;"
    }
.end annotation


# static fields
.field private static mIsIncomingVideoAvailable:Z

.field private static mIsVideoMode:Z


# instance fields
.field private mActivityOrientationMode:I

.field private mAutoFullScreenPending:Z

.field private mAutoFullscreenRunnable:Ljava/lang/Runnable;

.field private mAutoFullscreenTimeoutMillis:I

.field private mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentCallState:I

.field private mCurrentVideoState:I

.field private mDeviceOrientation:I

.field private mHandler:Landroid/os/Handler;

.field private mIsAutoFullscreenEnabled:Z

.field private mIsInBackground:Z

.field private mMinimumVideoDimension:F

.field private mPreviewSurfaceState:I

.field private mPrimaryCall:Lcom/android/incallui/Call;

.field private mProfileInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mVideoCall:Landroid/telecom/InCallService$VideoCall;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/VideoCallPresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullScreenPending:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/incallui/VideoCallPresenter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mProfileInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/incallui/VideoCallPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullScreenPending:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/incallui/VideoCallPresenter;Lcom/android/contacts/common/ContactPhotoManager;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/incallui/VideoCallPresenter;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mProfileInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 167
    sput-boolean v0, Lcom/android/incallui/VideoCallPresenter;->mIsVideoMode:Z

    .line 215
    sput-boolean v0, Lcom/android/incallui/VideoCallPresenter;->mIsIncomingVideoAvailable:Z

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 84
    new-instance v0, Lcom/android/incallui/VideoCallPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/VideoCallPresenter$1;-><init>(Lcom/android/incallui/VideoCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullscreenRunnable:Ljava/lang/Runnable;

    .line 155
    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    .line 160
    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_0:I

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    .line 165
    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 172
    iput-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 177
    iput-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mProfileInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 188
    iput-boolean v1, p0, Lcom/android/incallui/VideoCallPresenter;->mIsAutoFullscreenEnabled:Z

    .line 194
    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullscreenTimeoutMillis:I

    .line 204
    iput-boolean v1, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullScreenPending:Z

    .line 207
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mActivityOrientationMode:I

    .line 71
    return-void
.end method

.method private changePreviewDimensions(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1000
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1001
    .local v1, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v1, :cond_0

    .line 1002
    return-void

    .line 1006
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setPreviewSurfaceSize(II)V

    .line 1009
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1010
    .local v0, "aspectRatio":F
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 1011
    int-to-float v2, p1

    int-to-float v3, p2

    div-float v0, v2, v3

    .line 1016
    :cond_1
    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    invoke-direct {p0, v2, v0}, Lcom/android/incallui/VideoCallPresenter;->setPreviewSize(IF)V

    .line 999
    return-void
.end method

.method private changeVideoCall(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 686
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    .line 687
    .local v1, "videoCall":Landroid/telecom/InCallService$VideoCall;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "changeVideoCall to videoCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mVideoCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v2, :cond_0

    .line 695
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 697
    .local v0, "hasChanged":Z
    :goto_0
    iput-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 698
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v2, :cond_1

    if-nez p1, :cond_3

    .line 699
    :cond_1
    const-string/jumbo v2, "Video call or primary call is null. Return"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    return-void

    .line 695
    .end local v0    # "hasChanged":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "hasChanged":Z
    goto :goto_0

    .line 703
    :cond_3
    invoke-static {p1}, Lcom/android/incallui/VideoUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 704
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->enterVideoMode(Lcom/android/incallui/Call;)V

    .line 685
    :cond_4
    return-void
.end method

.method private checkForCallStateChange(Lcom/android/incallui/Call;)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 548
    invoke-static {p1}, Lcom/android/incallui/VideoUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    .line 549
    .local v2, "isVideoCall":Z
    iget v5, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    if-eq v5, v6, :cond_0

    const/4 v1, 0x1

    .line 551
    .local v1, "hasCallStateChanged":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkForCallStateChange: isVideoCall= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 552
    const-string/jumbo v6, " hasCallStateChanged="

    .line 551
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 553
    const-string/jumbo v6, " isVideoMode="

    .line 551
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 553
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v6

    .line 551
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    if-nez v1, :cond_1

    .line 556
    return-void

    .line 549
    .end local v1    # "hasCallStateChanged":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "hasCallStateChanged":Z
    goto :goto_0

    .line 559
    :cond_1
    if-eqz v2, :cond_2

    .line 560
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    .line 563
    .local v0, "cameraManager":Lcom/android/incallui/InCallCameraManager;
    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v4

    .line 564
    .local v4, "prevCameraId":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->updateCameraSelection(Lcom/android/incallui/Call;)V

    .line 565
    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v3

    .line 567
    .local v3, "newCameraId":Ljava/lang/String;
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {p1}, Lcom/android/incallui/VideoUtils;->isActiveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 568
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    .line 573
    .end local v0    # "cameraManager":Lcom/android/incallui/InCallCameraManager;
    .end local v3    # "newCameraId":Ljava/lang/String;
    .end local v4    # "prevCameraId":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/incallui/VideoCallPresenter;->showVideoUi(IIZ)V

    .line 547
    return-void
.end method

.method private checkForOrientationAllowedChange(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 658
    invoke-static {}, Lcom/android/incallui/OrientationModeHandler;->getInstance()Lcom/android/incallui/OrientationModeHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/OrientationModeHandler;->getOrientation(Lcom/android/incallui/Call;)I

    move-result v0

    .line 659
    .local v0, "newMode":I
    iget v1, p0, Lcom/android/incallui/VideoCallPresenter;->mActivityOrientationMode:I

    if-eq v0, v1, :cond_0

    .line 660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkForOrientationAllowedChange: currMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 661
    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mActivityOrientationMode:I

    .line 660
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 661
    const-string/jumbo v2, " newMode = "

    .line 660
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mActivityOrientationMode:I

    .line 663
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallPresenter;->setInCallAllowsOrientationChange(I)V

    .line 657
    :cond_0
    return-void
.end method

.method private checkForVideoCallChange(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 671
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    .line 672
    .local v0, "videoCall":Landroid/telecom/InCallService$VideoCall;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkForVideoCallChange: videoCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mVideoCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 673
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 672
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 674
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 675
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->changeVideoCall(Lcom/android/incallui/Call;)V

    .line 670
    :cond_0
    return-void
.end method

.method private checkForVideoStateChange(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 525
    invoke-static {p1}, Lcom/android/incallui/VideoUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 526
    .local v1, "isVideoCall":Z
    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 528
    .local v0, "hasVideoStateChanged":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkForVideoStateChange: isVideoCall= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 529
    const-string/jumbo v3, " hasVideoStateChanged="

    .line 528
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 529
    const-string/jumbo v3, " isVideoMode="

    .line 528
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 530
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v3

    .line 528
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 530
    const-string/jumbo v3, " previousVideoState: "

    .line 528
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 531
    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    invoke-static {v3}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v3

    .line 528
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 531
    const-string/jumbo v3, " newVideoState: "

    .line 528
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 532
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v3

    .line 528
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    if-nez v0, :cond_1

    .line 535
    return-void

    .line 526
    .end local v0    # "hasVideoStateChanged":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "hasVideoStateChanged":Z
    goto :goto_0

    .line 538
    :cond_1
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->updateCameraSelection(Lcom/android/incallui/Call;)V

    .line 540
    if-eqz v1, :cond_3

    .line 541
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->enterVideoMode(Lcom/android/incallui/Call;)V

    .line 524
    :cond_2
    :goto_1
    return-void

    .line 542
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 543
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    goto :goto_1
.end method

.method private cleanupSurfaces()V
    .locals 2

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 578
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v0, :cond_0

    .line 579
    const-string/jumbo v1, "cleanupSurfaces"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    return-void

    .line 582
    :cond_0
    invoke-interface {v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->cleanupSurfaces()V

    .line 576
    return-void
.end method

.method private enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V
    .locals 4
    .param p1, "videoCall"    # Landroid/telecom/InCallService$VideoCall;
    .param p2, "isCameraRequired"    # Z

    .prologue
    const/4 v3, 0x0

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableCamera: VideoCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " enabling="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 754
    if-nez p1, :cond_0

    .line 755
    const-string/jumbo v1, "enableCamera: VideoCall is null."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 756
    return-void

    .line 759
    :cond_0
    if-eqz p2, :cond_1

    .line 760
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    .line 762
    .local v0, "cameraManager":Lcom/android/incallui/InCallCameraManager;
    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 763
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 765
    invoke-virtual {p1}, Landroid/telecom/InCallService$VideoCall;->requestCameraCapabilities()V

    .line 766
    invoke-static {}, Lcom/android/incallui/InCallZoomController;->getInstance()Lcom/android/incallui/InCallZoomController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallZoomController;->onCameraEnabled(Ljava/lang/String;)V

    .line 752
    .end local v0    # "cameraManager":Lcom/android/incallui/InCallCameraManager;
    :goto_0
    return-void

    .line 768
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 769
    invoke-virtual {p1, v3}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 770
    invoke-static {}, Lcom/android/incallui/InCallZoomController;->getInstance()Lcom/android/incallui/InCallZoomController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/InCallZoomController;->onCameraEnabled(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enterVideoMode(Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 722
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    .line 723
    .local v2, "videoCall":Landroid/telecom/InCallService$VideoCall;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    .line 725
    .local v0, "newVideoState":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enterVideoMode videoCall= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " videoState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 726
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 727
    .local v1, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v1, :cond_0

    .line 728
    const-string/jumbo v3, "Error VideoCallUi is null so returning"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    return-void

    .line 732
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    invoke-direct {p0, v0, v3, v4}, Lcom/android/incallui/VideoCallPresenter;->showVideoUi(IIZ)V

    .line 736
    if-eqz v2, :cond_2

    .line 737
    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->isDisplayVideoSurfaceCreated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 738
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Calling setDisplaySurface with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getDisplayVideoSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 739
    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getDisplayVideoSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->setDisplaySurface(Landroid/view/Surface;)V

    .line 742
    :cond_1
    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->setDeviceOrientation(I)V

    .line 743
    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->isCameraRequired(I)Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    .line 745
    :cond_2
    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    .line 747
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/incallui/VideoCallPresenter;->mIsVideoMode:Z

    .line 749
    invoke-virtual {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->maybeAutoEnterFullscreen(Lcom/android/incallui/Call;)V

    .line 721
    return-void
.end method

.method private exitVideoMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 778
    const-string/jumbo v0, "exitVideoMode"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 780
    const/4 v0, 0x3

    invoke-direct {p0, v1, v0, v1}, Lcom/android/incallui/VideoCallPresenter;->showVideoUi(IIZ)V

    .line 781
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    .line 782
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    .line 784
    sput-boolean v1, Lcom/android/incallui/VideoCallPresenter;->mIsVideoMode:Z

    .line 777
    return-void
.end method

.method private static isCameraDirectionSet(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 1289
    invoke-static {p0}, Lcom/android/incallui/VideoUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call$VideoSettings;->getCameraDir()I

    move-result v1

    .line 1290
    const/4 v2, -0x1

    .line 1289
    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCameraRequired()Z
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->isCameraRequired(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCameraRequired(I)Z
    .locals 2
    .param p1, "videoState"    # I

    .prologue
    const/4 v0, 0x0

    .line 709
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 710
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v1

    .line 709
    if-eqz v1, :cond_1

    .line 710
    :cond_0
    iget-boolean v1, p0, Lcom/android/incallui/VideoCallPresenter;->mIsInBackground:Z

    if-eqz v1, :cond_2

    .line 709
    :cond_1
    :goto_0
    return v0

    .line 710
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVideoMode()Z
    .locals 1

    .prologue
    .line 608
    sget-boolean v0, Lcom/android/incallui/VideoCallPresenter;->mIsVideoMode:Z

    return v0
.end method

.method private maybeEnableCamera()V
    .locals 2

    .prologue
    .line 877
    iget v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isCameraRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    .line 876
    :cond_0
    return-void
.end method

.method private onPrimaryCallChanged(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "newPrimaryCall"    # Lcom/android/incallui/Call;

    .prologue
    .line 586
    invoke-static {p1}, Lcom/android/incallui/VideoUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    .line 587
    .local v0, "isVideoCall":Z
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v1

    .line 589
    .local v1, "isVideoMode":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPrimaryCallChanged: isVideoCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isVideoMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 595
    const-string/jumbo v2, "onPrimaryCallChanged: Exiting video mode..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    .line 604
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->checkForOrientationAllowedChange(Lcom/android/incallui/Call;)V

    .line 585
    return-void

    .line 597
    :cond_1
    if-eqz v0, :cond_0

    .line 598
    const-string/jumbo v2, "onPrimaryCallChanged: Entering video mode..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->checkForOrientationAllowedChange(Lcom/android/incallui/Call;)V

    .line 601
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->updateCameraSelection(Lcom/android/incallui/Call;)V

    .line 602
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->enterVideoMode(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method private setDisplayVideoSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDisplayVideoSize: Received peer width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1131
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1132
    .local v1, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v1, :cond_0

    .line 1133
    return-void

    .line 1137
    :cond_0
    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getScreenSize()Landroid/graphics/Point;

    move-result-object v0

    .line 1138
    .local v0, "size":Landroid/graphics/Point;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDisplayVideoSize: windowmgr width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1139
    const-string/jumbo v3, " windowmgr height="

    .line 1138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1139
    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 1138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1140
    iget v2, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, p1

    iget v3, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, p2

    if-le v2, v3, :cond_2

    .line 1142
    iget v2, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v2, p2

    div-int/2addr v2, p1

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 1147
    :cond_1
    :goto_0
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v3}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setDisplayVideoSize(II)V

    .line 1129
    return-void

    .line 1143
    :cond_2
    iget v2, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, p1

    iget v3, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, p2

    if-ge v2, v3, :cond_1

    .line 1145
    iget v2, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, p1

    div-int/2addr v2, p2

    iput v2, v0, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method private setPreviewSize(IF)V
    .locals 4
    .param p1, "orientation"    # I
    .param p2, "aspectRatio"    # F

    .prologue
    .line 1103
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1104
    .local v1, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v1, :cond_0

    .line 1105
    return-void

    .line 1111
    :cond_0
    sget v3, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_90:I

    if-eq p1, v3, :cond_1

    .line 1112
    sget v3, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_270:I

    if-ne p1, v3, :cond_2

    .line 1113
    :cond_1
    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    mul-float/2addr v3, p2

    float-to-int v2, v3

    .line 1114
    .local v2, "width":I
    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    float-to-int v0, v3

    .line 1120
    .local v0, "height":I
    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setPreviewSize(II)V

    .line 1102
    return-void

    .line 1117
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_2
    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    float-to-int v2, v3

    .line 1118
    .restart local v2    # "width":I
    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    mul-float/2addr v3, p2

    float-to-int v0, v3

    .restart local v0    # "height":I
    goto :goto_0
.end method

.method private shallHidePreview(ZI)Z
    .locals 1
    .param p1, "isConf"    # Z
    .param p2, "videoState"    # I

    .prologue
    .line 1381
    invoke-static {p2}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallHidePreviewInVtConference(Landroid/content/Context;)Z

    move-result v0

    .line 1381
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showIncomingVideo(II)Z
    .locals 5
    .param p0, "videoState"    # I
    .param p1, "callState"    # I

    .prologue
    const/4 v3, 0x0

    .line 842
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isVideoCompatible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 843
    return v3

    .line 846
    :cond_0
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v2

    .line 847
    .local v2, "isPaused":Z
    const/4 v4, 0x3

    if-ne p1, v4, :cond_3

    const/4 v0, 0x1

    .line 849
    .local v0, "isCallActive":Z
    :goto_0
    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 850
    const/16 v4, 0xd

    if-ne p1, v4, :cond_5

    const/4 v1, 0x1

    .line 852
    .local v1, "isCallOutgoing":Z
    :goto_1
    if-nez v2, :cond_2

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 853
    :cond_1
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v4

    .line 852
    if-eqz v4, :cond_2

    .line 853
    sget-boolean v3, Lcom/android/incallui/VideoCallPresenter;->mIsIncomingVideoAvailable:Z

    .line 852
    :cond_2
    return v3

    .line 847
    .end local v0    # "isCallActive":Z
    .end local v1    # "isCallOutgoing":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isCallActive":Z
    goto :goto_0

    .line 849
    :cond_4
    const/4 v1, 0x1

    .restart local v1    # "isCallOutgoing":Z
    goto :goto_1

    .line 850
    .end local v1    # "isCallOutgoing":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "isCallOutgoing":Z
    goto :goto_1
.end method

.method public static showOutgoingVideo(I)Z
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    .line 865
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isVideoCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 866
    const/4 v0, 0x0

    return v0

    .line 869
    :cond_0
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    return v0
.end method

.method private showVideoUi(IIZ)V
    .locals 8
    .param p1, "videoState"    # I
    .param p2, "callState"    # I
    .param p3, "isConf"    # Z

    .prologue
    .line 799
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 800
    .local v5, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v5, :cond_0

    .line 801
    const-string/jumbo v6, "showVideoUi, VideoCallUi is null returning"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 802
    return-void

    .line 805
    :cond_0
    invoke-interface {v5}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->isDisplayVideoSurfaceCreated()Z

    move-result v1

    .line 806
    .local v1, "isDisplaySurfaceCreated":Z
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v2

    .line 807
    .local v2, "isVideoReceptionEnabled":Z
    invoke-static {p1, p2}, Lcom/android/incallui/VideoCallPresenter;->showIncomingVideo(II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 808
    if-nez v1, :cond_4

    move v3, v2

    .line 809
    :goto_0
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->showOutgoingVideo(I)Z

    move-result v4

    .line 811
    .local v4, "showOutgoingVideo":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showVideoUi : showIncoming = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " showOutgoing = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 813
    if-nez v3, :cond_1

    if-eqz v4, :cond_6

    .line 814
    :cond_1
    invoke-interface {v5, v4, v3}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->showVideoViews(ZZ)V

    .line 816
    invoke-direct {p0, p3, p1}, Lcom/android/incallui/VideoCallPresenter;->shallHidePreview(ZI)Z

    move-result v0

    .line 817
    .local v0, "hidePreview":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showVideoUi, hidePreview = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 818
    if-eqz v0, :cond_5

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v5, v6}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->showOutgoingVideoView(Z)V

    .line 820
    if-eqz v2, :cond_2

    .line 821
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->loadProfilePhotoAsync()V

    .line 827
    .end local v0    # "hidePreview":Z
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    .line 828
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v7

    .line 827
    invoke-virtual {v6, v7}, Lcom/android/incallui/InCallPresenter;->enableScreenTimeout(Z)V

    .line 798
    return-void

    .line 807
    .end local v4    # "showOutgoingVideo":Z
    :cond_3
    const/4 v3, 0x1

    .local v3, "showIncomingVideo":Z
    goto :goto_0

    .line 808
    .end local v3    # "showIncomingVideo":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "showIncomingVideo":Z
    goto :goto_0

    .line 818
    .end local v3    # "showIncomingVideo":Z
    .restart local v0    # "hidePreview":Z
    .restart local v4    # "showOutgoingVideo":Z
    :cond_5
    const/4 v6, 0x1

    goto :goto_1

    .line 824
    .end local v0    # "hidePreview":Z
    :cond_6
    invoke-interface {v5}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->hideVideoUi()V

    goto :goto_2
.end method

.method private static toCameraDirection(I)I
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    .line 1282
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1283
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1285
    :cond_0
    const/4 v0, 0x0

    .line 1282
    :goto_0
    return v0

    .line 1284
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static toSimpleString(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 1294
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->toSimpleString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateCallCache(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 612
    if-nez p1, :cond_0

    .line 613
    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    .line 614
    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    .line 615
    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 616
    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    .line 611
    :goto_0
    return-void

    .line 618
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    .line 619
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 620
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    .line 621
    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    goto :goto_0
.end method

.method private static updateCameraSelection(Lcom/android/incallui/Call;)V
    .locals 7
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v3, 0x0

    .line 1215
    const-string/jumbo v4, "VideoCallPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCameraSelection: call="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    const-string/jumbo v4, "VideoCallPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCameraSelection: call="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->toSimpleString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1219
    .local v0, "activeCall":Lcom/android/incallui/Call;
    const/4 v1, -0x1

    .line 1223
    .local v1, "cameraDir":I
    if-nez p0, :cond_1

    .line 1224
    const/4 v1, -0x1

    .line 1225
    const-string/jumbo v4, "VideoCallPresenter"

    const-string/jumbo v5, "updateCameraSelection: Call object is null. Setting camera direction to default value (CAMERA_DIRECTION_UNKNOWN)"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    :goto_0
    const-string/jumbo v4, "VideoCallPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCameraSelection: Setting camera direction to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1274
    const-string/jumbo v6, " Call="

    .line 1273
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v2

    .line 1277
    .local v2, "cameraManager":Lcom/android/incallui/InCallCameraManager;
    if-nez v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallCameraManager;->setUseFrontFacingCamera(Z)V

    .line 1214
    return-void

    .line 1230
    .end local v2    # "cameraManager":Lcom/android/incallui/InCallCameraManager;
    :cond_1
    invoke-static {p0}, Lcom/android/incallui/VideoUtils;->isAudioCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1231
    const/4 v1, -0x1

    .line 1232
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/incallui/Call$VideoSettings;->setCameraDir(I)V

    goto :goto_0

    .line 1238
    :cond_2
    invoke-static {v0}, Lcom/android/incallui/VideoUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0}, Lcom/android/incallui/VideoUtils;->isIncomingVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1239
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/Call$VideoSettings;->getCameraDir()I

    move-result v1

    goto :goto_0

    .line 1244
    :cond_3
    invoke-static {p0}, Lcom/android/incallui/VideoUtils;->isOutgoingVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->isCameraDirectionSet(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1251
    :cond_4
    invoke-static {p0}, Lcom/android/incallui/VideoUtils;->isOutgoingVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1252
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/Call$VideoSettings;->getCameraDir()I

    move-result v1

    goto :goto_0

    .line 1245
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/VideoCallPresenter;->toCameraDirection(I)I

    move-result v1

    .line 1246
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/incallui/Call$VideoSettings;->setCameraDir(I)V

    goto/16 :goto_0

    .line 1257
    :cond_6
    invoke-static {p0}, Lcom/android/incallui/VideoUtils;->isActiveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->isCameraDirectionSet(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1264
    :cond_7
    invoke-static {p0}, Lcom/android/incallui/VideoUtils;->isActiveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1265
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/Call$VideoSettings;->getCameraDir()I

    move-result v1

    goto/16 :goto_0

    .line 1258
    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/VideoCallPresenter;->toCameraDirection(I)I

    move-result v1

    .line 1259
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/incallui/Call$VideoSettings;->setCameraDir(I)V

    goto/16 :goto_0

    .line 1270
    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/VideoCallPresenter;->toCameraDirection(I)I

    move-result v1

    goto/16 :goto_0
.end method

.method private updateVideoCall(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 651
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->checkForVideoCallChange(Lcom/android/incallui/Call;)V

    .line 652
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->checkForVideoStateChange(Lcom/android/incallui/Call;)V

    .line 653
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->checkForCallStateChange(Lcom/android/incallui/Call;)V

    .line 654
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->checkForOrientationAllowedChange(Lcom/android/incallui/Call;)V

    .line 650
    return-void
.end method


# virtual methods
.method public cancelAutoFullScreen()V
    .locals 1

    .prologue
    .line 1202
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullScreenPending:Z

    if-nez v0, :cond_0

    .line 1203
    const-string/jumbo v0, "cancelAutoFullScreen : none pending."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1204
    return-void

    .line 1206
    :cond_0
    const-string/jumbo v0, "cancelAutoFullScreen : cancelling pending"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullScreenPending:Z

    .line 1201
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    .line 224
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 225
    const v1, 0x7f0b0279

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    .line 226
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    .line 227
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 228
    const v1, 0x7f090019

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsAutoFullscreenEnabled:Z

    .line 229
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 230
    const v1, 0x7f0c002c

    .line 229
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullscreenTimeoutMillis:I

    .line 222
    return-void
.end method

.method public loadProfilePhotoAsync()V
    .locals 3

    .prologue
    .line 1301
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1302
    .local v1, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v1, :cond_0

    .line 1303
    return-void

    .line 1306
    :cond_0
    new-instance v0, Lcom/android/incallui/VideoCallPresenter$2;

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/VideoCallPresenter$2;-><init>(Lcom/android/incallui/VideoCallPresenter;Lcom/android/incallui/VideoCallPresenter$VideoCallUi;)V

    .line 1374
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1300
    return-void
.end method

.method protected maybeAutoEnterFullscreen(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1176
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsAutoFullscreenEnabled:Z

    if-nez v0, :cond_0

    .line 1177
    return-void

    .line 1180
    :cond_0
    if-eqz p1, :cond_2

    .line 1181
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1182
    invoke-static {p1}, Lcom/android/incallui/VideoUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1183
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v0

    .line 1180
    if-eqz v0, :cond_3

    .line 1185
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->cancelAutoFullScreen()V

    .line 1186
    return-void

    .line 1189
    :cond_3
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullScreenPending:Z

    if-eqz v0, :cond_4

    .line 1190
    const-string/jumbo v0, "maybeAutoEnterFullscreen : already pending."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1191
    return-void

    .line 1193
    :cond_4
    const-string/jumbo v0, "maybeAutoEnterFullscreen : scheduled"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullScreenPending:Z

    .line 1195
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullscreenRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullscreenTimeoutMillis:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1175
    return-void
.end method

.method protected maybeExitFullscreen(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1156
    if-nez p1, :cond_0

    .line 1157
    return-void

    .line 1160
    :cond_0
    invoke-static {p1}, Lcom/android/incallui/VideoUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1161
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    .line 1155
    :cond_2
    return-void
.end method

.method public onCallDataUsageChange(J)V
    .locals 3
    .param p1, "dataUsage"    # J

    .prologue
    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallDataUsageChange dataUsage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1059
    return-void
.end method

.method public onCallSessionEvent(I)V
    .locals 4
    .param p1, "event"    # I

    .prologue
    .line 1026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1027
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "onCallSessionEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    packed-switch p1, :pswitch_data_0

    .line 1046
    :pswitch_0
    const-string/jumbo v2, "unknown event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1050
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1025
    return-void

    .line 1033
    :pswitch_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    .line 1032
    :goto_1
    sput-boolean v2, Lcom/android/incallui/VideoCallPresenter;->mIsIncomingVideoAvailable:Z

    .line 1034
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    .line 1036
    :goto_2
    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    invoke-direct {p0, v2, v3, v0}, Lcom/android/incallui/VideoCallPresenter;->showVideoUi(IIZ)V

    .line 1037
    sget-boolean v2, Lcom/android/incallui/VideoCallPresenter;->mIsIncomingVideoAvailable:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "rx_resume"

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1033
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1035
    :cond_1
    const/4 v0, 0x0

    .local v0, "isConf":Z
    goto :goto_2

    .line 1037
    .end local v0    # "isConf":Z
    :cond_2
    const-string/jumbo v2, "rx_pause"

    goto :goto_3

    .line 1040
    :pswitch_2
    const-string/jumbo v2, "camera_failure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1043
    :pswitch_3
    const-string/jumbo v2, "camera_ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1029
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCameraDimensionsChange(Lcom/android/incallui/Call;II)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraDimensionsChange call="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 971
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 972
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v0, :cond_0

    .line 973
    const-string/jumbo v1, "onCameraDimensionsChange ui is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 974
    return-void

    .line 977
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v1}, Lcom/android/incallui/Call;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 978
    const-string/jumbo v1, "Call is not primary call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 979
    return-void

    .line 982
    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 983
    invoke-direct {p0, p2, p3}, Lcom/android/incallui/VideoCallPresenter;->changePreviewDimensions(II)V

    .line 987
    invoke-interface {v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->isPreviewVideoSurfaceCreated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 988
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 989
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-interface {v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getPreviewVideoSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    .line 968
    :cond_2
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " onDetailsChanged call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mPrimaryCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 635
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    .line 634
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    if-nez p1, :cond_0

    .line 637
    return-void

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 641
    const-string/jumbo v0, " onDetailsChanged: Details not for current active call so returning. "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    return-void

    .line 645
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->updateVideoCall(Lcom/android/incallui/Call;)V

    .line 647
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->updateCallCache(Lcom/android/incallui/Call;)V

    .line 633
    return-void
.end method

.method public onDeviceOrientationChanged(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 1073
    iput p1, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    .line 1075
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1076
    .local v1, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v1, :cond_0

    .line 1077
    const-string/jumbo v2, "onDeviceOrientationChanged: VideoCallUi is null"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1078
    return-void

    .line 1081
    :cond_0
    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getPreviewSize()Landroid/graphics/Point;

    move-result-object v0

    .line 1082
    .local v0, "previewDimensions":Landroid/graphics/Point;
    if-nez v0, :cond_1

    .line 1083
    return-void

    .line 1085
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDeviceOrientationChanged: orientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1087
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/VideoCallPresenter;->changePreviewDimensions(II)V

    .line 1089
    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    invoke-interface {v1, v2}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setPreviewRotation(I)V

    .line 1072
    return-void
.end method

.method public onFullscreenModeChanged(Z)V
    .locals 0
    .param p1, "isFullscreenMode"    # Z

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->cancelAutoFullScreen()V

    .line 505
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 430
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/VideoCallPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 428
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 5
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStateChange oldState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " newState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 443
    const-string/jumbo v4, " isVideoMode="

    .line 442
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 443
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v4

    .line 442
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_1

    .line 446
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    .line 450
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->cleanupSurfaces()V

    .line 454
    :cond_1
    const/4 v1, 0x0

    .line 460
    .local v1, "primary":Lcom/android/incallui/Call;
    const/4 v0, 0x0

    .line 462
    .local v0, "currentCall":Lcom/android/incallui/Call;
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_4

    .line 467
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 468
    .local v1, "primary":Lcom/android/incallui/Call;
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 469
    .local v0, "currentCall":Lcom/android/incallui/Call;
    invoke-static {v1}, Lcom/android/incallui/VideoUtils;->isActiveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 470
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 480
    .end local v0    # "currentCall":Lcom/android/incallui/Call;
    .end local v1    # "primary":Lcom/android/incallui/Call;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v2, 0x0

    .line 481
    .local v2, "primaryChanged":Z
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStateChange primaryChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStateChange primary= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStateChange mPrimaryCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    if-eqz v2, :cond_8

    .line 485
    invoke-direct {p0, v1}, Lcom/android/incallui/VideoCallPresenter;->onPrimaryCallChanged(Lcom/android/incallui/Call;)V

    .line 489
    :cond_3
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/incallui/VideoCallPresenter;->updateCallCache(Lcom/android/incallui/Call;)V

    .line 494
    invoke-virtual {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->maybeExitFullscreen(Lcom/android/incallui/Call;)V

    .line 496
    invoke-virtual {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->maybeAutoEnterFullscreen(Lcom/android/incallui/Call;)V

    .line 441
    return-void

    .line 472
    .end local v2    # "primaryChanged":Z
    .local v0, "currentCall":Lcom/android/incallui/Call;
    .local v1, "primary":Lcom/android/incallui/Call;
    :cond_4
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_5

    .line 473
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .local v1, "primary":Lcom/android/incallui/Call;
    move-object v0, v1

    .local v0, "currentCall":Lcom/android/incallui/Call;
    goto :goto_0

    .line 474
    .local v0, "currentCall":Lcom/android/incallui/Call;
    .local v1, "primary":Lcom/android/incallui/Call;
    :cond_5
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_6

    .line 475
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .local v1, "primary":Lcom/android/incallui/Call;
    move-object v0, v1

    .local v0, "currentCall":Lcom/android/incallui/Call;
    goto :goto_0

    .line 476
    .local v0, "currentCall":Lcom/android/incallui/Call;
    .local v1, "primary":Lcom/android/incallui/Call;
    :cond_6
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_2

    .line 477
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    .local v1, "primary":Lcom/android/incallui/Call;
    move-object v0, v1

    .local v0, "currentCall":Lcom/android/incallui/Call;
    goto :goto_0

    .line 480
    .end local v0    # "currentCall":Lcom/android/incallui/Call;
    .end local v1    # "primary":Lcom/android/incallui/Call;
    :cond_7
    const/4 v2, 0x1

    .restart local v2    # "primaryChanged":Z
    goto :goto_1

    .line 486
    :cond_8
    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v3, :cond_3

    .line 487
    invoke-direct {p0, v1}, Lcom/android/incallui/VideoCallPresenter;->updateVideoCall(Lcom/android/incallui/Call;)V

    goto :goto_2
.end method

.method public onSurfaceClick(I)V
    .locals 3
    .param p1, "surfaceId"    # I

    .prologue
    .line 406
    packed-switch p1, :pswitch_data_0

    .line 405
    :goto_0
    return-void

    .line 408
    :pswitch_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->toggleFullscreenMode()Z

    move-result v0

    .line 409
    .local v0, "isFullscreen":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleFullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 412
    .end local v0    # "isFullscreen":Z
    :pswitch_1
    invoke-static {}, Lcom/android/incallui/InCallZoomController;->getInstance()Lcom/android/incallui/InCallZoomController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallZoomController;->onPreviewSurfaceClicked(Landroid/telecom/InCallService$VideoCall;)V

    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSurfaceCreated(I)V
    .locals 5
    .param p1, "surface"    # I

    .prologue
    const/4 v4, 0x2

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSurfaceCreated surface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mVideoCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSurfaceCreated PreviewSurfaceState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSurfaceCreated presenter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 307
    .local v1, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-nez v2, :cond_1

    .line 308
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSurfaceCreated: Error bad state VideoCallUi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mVideoCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 309
    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 308
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    return-void

    .line 315
    :cond_1
    if-ne p1, v4, :cond_4

    .line 316
    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    if-ne v2, v4, :cond_3

    .line 317
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 318
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getPreviewVideoSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    .line 301
    :cond_2
    :goto_0
    return-void

    .line 320
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->maybeEnableCamera()V

    goto :goto_0

    .line 322
    :cond_4
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 323
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getDisplayVideoSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->setDisplaySurface(Landroid/view/Surface;)V

    .line 329
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    .line 331
    :goto_1
    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    invoke-direct {p0, v2, v3, v0}, Lcom/android/incallui/VideoCallPresenter;->showVideoUi(IIZ)V

    goto :goto_0

    .line 330
    :cond_5
    const/4 v0, 0x0

    .local v0, "isConf":Z
    goto :goto_1
.end method

.method public onSurfaceDestroyed(I)V
    .locals 3
    .param p1, "surface"    # I

    .prologue
    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceDestroyed: mSurfaceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-nez v1, :cond_0

    .line 380
    return-void

    .line 384
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isChangingConfigurations()Z

    move-result v0

    .line 385
    .local v0, "isChangingConfigurations":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceDestroyed: isChangingConfigurations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 388
    if-nez v0, :cond_2

    .line 389
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    .line 377
    :cond_1
    :goto_0
    return-void

    .line 391
    :cond_2
    const-string/jumbo v1, "onSurfaceDestroyed: Activity is being destroyed due to configuration changes. Not closing the camera."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSurfaceReleased(I)V
    .locals 3
    .param p1, "surface"    # I

    .prologue
    const/4 v2, 0x0

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSurfaceReleased: mSurfaceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSurfaceReleased: VideoCall is null. mSurfaceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    return-void

    .line 361
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v0, v2}, Landroid/telecom/InCallService$VideoCall;->setDisplaySurface(Landroid/view/Surface;)V

    .line 353
    :cond_1
    :goto_0
    return-void

    .line 363
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v0, v2}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    .line 365
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    goto :goto_0
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/incallui/Ui;

    .prologue
    .line 239
    check-cast p1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .end local p1    # "ui":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->onUiReady(Lcom/android/incallui/VideoCallPresenter$VideoCallUi;)V

    return-void
.end method

.method public onUiReady(Lcom/android/incallui/VideoCallPresenter$VideoCallUi;)V
    .locals 3
    .param p1, "ui"    # Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .prologue
    const/4 v2, 0x0

    .line 240
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 241
    const-string/jumbo v1, "onUiReady:"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isVideoCompatible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    return-void

    .line 250
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 251
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 252
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 253
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    .line 255
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 256
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    .line 259
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->addSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;)V

    .line 260
    invoke-static {}, Lcom/android/incallui/InCallUiStateNotifier;->getInstance()Lcom/android/incallui/InCallUiStateNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallUiStateNotifier;->addListener(Lcom/android/incallui/InCallUiStateNotifierListener;)V

    .line 261
    iput v2, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    .line 262
    iput v2, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    .line 265
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    .line 266
    .local v0, "inCallState":Lcom/android/incallui/InCallPresenter$InCallState;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/incallui/VideoCallPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 267
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v1

    .line 268
    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    invoke-static {v2}, Lcom/android/incallui/VideoUtils;->isVideoCall(I)Z

    move-result v2

    .line 267
    invoke-virtual {v1, p0, v2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->addVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;Z)V

    .line 239
    return-void
.end method

.method public onUiShowing(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .prologue
    const/4 v1, 0x0

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUiShowing, showing = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " mPrimaryCall = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 890
    const-string/jumbo v2, " mPreviewSurfaceState = "

    .line 889
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 890
    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 889
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 892
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsInBackground:Z

    .line 894
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/VideoUtils;->isActiveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 899
    if-eqz p1, :cond_3

    .line 900
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->maybeEnableCamera()V

    .line 888
    :cond_0
    :goto_1
    return-void

    .line 892
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 895
    :cond_2
    const-string/jumbo v0, "onUiShowing, received for non-active video call"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 896
    return-void

    .line 901
    :cond_3
    iget v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    goto :goto_1
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/incallui/Ui;

    .prologue
    .line 277
    check-cast p1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .end local p1    # "ui":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->onUiUnready(Lcom/android/incallui/VideoCallPresenter$VideoCallUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/VideoCallPresenter$VideoCallUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 279
    const-string/jumbo v0, "onUiUnready:"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isVideoCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    return-void

    .line 285
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 286
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 287
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 288
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    .line 289
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    .line 291
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->removeSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;)V

    .line 292
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->removeVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;)V

    .line 293
    invoke-static {}, Lcom/android/incallui/InCallUiStateNotifier;->getInstance()Lcom/android/incallui/InCallUiStateNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallUiStateNotifier;->removeListener(Lcom/android/incallui/InCallUiStateNotifierListener;)V

    .line 277
    return-void
.end method

.method public onUpdatePeerDimensions(Lcom/android/incallui/Call;II)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdatePeerDimensions: width= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " height= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 932
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 933
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v0, :cond_0

    .line 934
    const-string/jumbo v1, "VideoCallUi is null. Bail out"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 935
    return-void

    .line 937
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v1}, Lcom/android/incallui/Call;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 938
    const-string/jumbo v1, "Current call is not equal to primary call. Bail out"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 939
    return-void

    .line 943
    :cond_1
    if-lez p2, :cond_2

    if-lez p3, :cond_2

    .line 944
    invoke-direct {p0, p2, p3}, Lcom/android/incallui/VideoCallPresenter;->setDisplayVideoSize(II)V

    .line 930
    :cond_2
    return-void
.end method

.method public onVideoQualityChanged(Lcom/android/incallui/Call;I)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoQuality"    # I

    .prologue
    .line 955
    return-void
.end method
