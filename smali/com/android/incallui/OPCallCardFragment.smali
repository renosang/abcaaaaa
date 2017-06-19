.class public Lcom/android/incallui/OPCallCardFragment;
.super Lcom/android/incallui/BaseFragment;
.source "OPCallCardFragment.java"

# interfaces
.implements Lcom/android/incallui/CallCardPresenter$CallCardUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/OPCallCardFragment$1;,
        Lcom/android/incallui/OPCallCardFragment$2;,
        Lcom/android/incallui/OPCallCardFragment$3;,
        Lcom/android/incallui/OPCallCardFragment$4;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/CallCardPresenter;",
        "Lcom/android/incallui/CallCardPresenter$CallCardUi;",
        ">;",
        "Lcom/android/incallui/CallCardPresenter$CallCardUi;"
    }
.end annotation


# static fields
.field private static mIsOnResume:Z


# instance fields
.field private animationRunning:Z

.field isButtonVisibility:Z

.field private isCanShow:Z

.field private isDangerNoticeVisible:Z

.field private isLocationVisible:Z

.field private isPhoneNumberVisible:Z

.field private isPrimaryAnimationRunning:Z

.field private isPrimaryCallActive:Z

.field private isSecondVisible:Z

.field private isTyepVisible:Z

.field isVisibility:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallButtonsContainer:Landroid/view/View;

.field private mCallNumberAndLabel:Landroid/view/View;

.field private mCallStateIcon:Landroid/widget/ImageView;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallStateLabelResetPending:Z

.field private mCallStateVideoCallIcon:Landroid/widget/ImageView;

.field private mCallStatus:Landroid/widget/TextView;

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDialpadShowing:Z

.field private mElapsedTime:Landroid/widget/TextView;

.field private mFabNormalDiameter:I

.field private mFabSmallDiameter:I

.field private mFloatingActionButton:Landroid/widget/ImageButton;

.field private mFloatingActionButtonContainer:Landroid/view/View;

.field private mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

.field private mFloatingActionButtonVerticalOffset:I

.field private mForwardIcon:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mHasSecondaryCallInfo:Z

.field private mHdAudioIcon:Landroid/widget/ImageView;

.field private mInCallActivity:Lcom/android/incallui/InCallActivity;

.field private mInCallMessageLabel:Landroid/widget/TextView;

.field private mIsDialpadShowing:Z

.field private mIsLandscape:Z

.field private mLocation:Landroid/widget/TextView;

.field private mManageConferenceCallButton:Landroid/view/View;

.field private mNoticeContainer:Landroid/widget/LinearLayout;

.field private mNumberLabel:Landroid/widget/TextView;

.field private mOPHandler:Landroid/os/Handler;

.field private mOldImageView:Landroid/widget/ImageView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Lcom/android/incallui/oneplus/OPCircleImageView;

.field private mPhotoContainer:Landroid/view/View;

.field private mPreTime:J

.field private mPrimaryCallCardContainer:Landroid/view/View;

.field private mPrimaryCallInfo:Landroid/view/ViewGroup;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mPrimaryNameContainer:Landroid/widget/LinearLayout;

.field private mPrimaryPhotoDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressSpinner:Landroid/view/View;

.field private mPulseAnimation:Landroid/view/animation/Animation;

.field private mRecordingIcon:Landroid/widget/TextView;

.field private mRecordingTimeLabel:Landroid/widget/TextView;

.field private mSecondaryCallConferenceCallIcon:Landroid/view/View;

.field private mSecondaryCallInfo:Landroid/view/View;

.field private mSecondaryCallName:Landroid/widget/TextView;

.field private mSecondaryCallProviderInfo:Landroid/view/View;

.field private mSecondaryCallProviderLabel:Landroid/widget/TextView;

.field private mSecondaryCallVideoCallIcon:Landroid/view/View;

.field private mSecondaryPhoto:Lcom/android/incallui/oneplus/OPCircleImageView;

.field private mShowingTimes:J

.field private mShrinkAnimationDuration:I

.field private mSimIndicator:Landroid/widget/ImageView;

.field private mTranslationOffset:F

.field private mType:Landroid/widget/TextView;

.field private mVbButton:Landroid/widget/ImageButton;

.field private mVbListener:Landroid/view/View$OnClickListener;

.field private mVideoAnimationDuration:I

.field private mVoltePrimary:Landroid/view/View;

.field private recorderHandler:Landroid/os/Handler;

.field private recorderStateReceiver:Landroid/content/BroadcastReceiver;

.field private sencondLineWrapper:Lcom/android/incallui/oneplus/OPSencondLineWrapper;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/OPCallCardFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/OPCallCardFragment;->isPhoneNumberVisible:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/incallui/OPCallCardFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPreTime:J

    return-wide v0
.end method

.method static synthetic -get13(Lcom/android/incallui/OPCallCardFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mRecordingIcon:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/incallui/OPCallCardFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mRecordingTimeLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/incallui/OPCallCardFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryCallInfo:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/incallui/OPCallCardFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->recorderHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/incallui/OPCallCardFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/OPCallCardFragment;->mDialpadShowing:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/incallui/OPCallCardFragment;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/incallui/OPCallCardFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/incallui/OPCallCardFragment;)Lcom/android/incallui/InCallActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/incallui/OPCallCardFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/OPCallCardFragment;->mIsDialpadShowing:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/incallui/OPCallCardFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mOPHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/incallui/OPCallCardFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/incallui/OPCallCardFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/OPCallCardFragment;->animationRunning:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/incallui/OPCallCardFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/OPCallCardFragment;->isPrimaryAnimationRunning:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/incallui/OPCallCardFragment;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/incallui/OPCallCardFragment;->mPreTime:J

    return-wide p1
.end method

.method static synthetic -wrap1(Lcom/android/incallui/OPCallCardFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/OPCallCardFragment;->isVbAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/incallui/OPCallCardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/OPCallCardFragment;->updateFabPositionForSecondaryCallInfo()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/incallui/OPCallCardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/OPCallCardFragment;->updateVbButton()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/incallui/OPCallCardFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/OPCallCardFragment;->isVolumeBoostOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/incallui/OPCallCardFragment;Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/OPCallCardFragment;->setVolumeBoost(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/incallui/OPCallCardFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/OPCallCardFragment;->showCallRecordingElapsedTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/incallui/OPCallCardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/OPCallCardFragment;->showVbNotify()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/incallui/OPCallCardFragment;Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/OPCallCardFragment;->startPrimaryCallInfoAnimation(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/OPCallCardFragment;->mIsOnResume:Z

    .line 102
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 230
    iput-boolean v1, p0, Lcom/android/incallui/OPCallCardFragment;->mCallStateLabelResetPending:Z

    .line 233
    new-instance v0, Lcom/android/incallui/OPCallCardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/OPCallCardFragment$1;-><init>(Lcom/android/incallui/OPCallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->recorderStateReceiver:Landroid/content/BroadcastReceiver;

    .line 250
    new-instance v0, Lcom/android/incallui/OPCallCardFragment$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/OPCallCardFragment$2;-><init>(Lcom/android/incallui/OPCallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->recorderHandler:Landroid/os/Handler;

    .line 281
    iput-boolean v1, p0, Lcom/android/incallui/OPCallCardFragment;->mHasSecondaryCallInfo:Z

    .line 308
    iput-wide v4, p0, Lcom/android/incallui/OPCallCardFragment;->mShowingTimes:J

    .line 311
    iput-boolean v1, p0, Lcom/android/incallui/OPCallCardFragment;->animationRunning:Z

    .line 314
    iput-wide v4, p0, Lcom/android/incallui/OPCallCardFragment;->mPreTime:J

    .line 315
    new-instance v0, Lcom/android/incallui/OPCallCardFragment$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/OPCallCardFragment$3;-><init>(Lcom/android/incallui/OPCallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mOPHandler:Landroid/os/Handler;

    .line 1894
    new-instance v0, Lcom/android/incallui/OPCallCardFragment$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/OPCallCardFragment$4;-><init>(Lcom/android/incallui/OPCallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mVbListener:Landroid/view/View$OnClickListener;

    .line 1990
    iput-boolean v2, p0, Lcom/android/incallui/OPCallCardFragment;->isCanShow:Z

    .line 2572
    iput-boolean v2, p0, Lcom/android/incallui/OPCallCardFragment;->isVisibility:Z

    .line 2573
    iput-boolean v2, p0, Lcom/android/incallui/OPCallCardFragment;->isButtonVisibility:Z

    .line 102
    return-void
.end method

.method private animationTopView(Landroid/view/View;ZZFFF)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isMoveUp"    # Z
    .param p3, "isActive"    # Z
    .param p4, "toTransY"    # F
    .param p5, "tosScaleX"    # F
    .param p6, "tosScaleY"    # F

    .prologue
    .line 2270
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2271
    .local v4, "set":Landroid/animation/AnimatorSet;
    const-string/jumbo v6, "CallCardFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "animationTopView isActive: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    if-eqz p3, :cond_a

    .line 2273
    const-string/jumbo v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    if-eqz p2, :cond_5

    .end local p5    # "tosScaleX":F
    :goto_0
    const/4 v8, 0x0

    aput p5, v7, v8

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2274
    .local v2, "scaleXAnimator":Landroid/animation/ObjectAnimator;
    const-string/jumbo v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    if-eqz p2, :cond_6

    .end local p6    # "tosScaleY":F
    :goto_1
    const/4 v8, 0x0

    aput p6, v7, v8

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2275
    .local v3, "scaleYAnimator":Landroid/animation/ObjectAnimator;
    const-string/jumbo v7, "alpha"

    const/4 v6, 0x1

    new-array v8, v6, [F

    if-eqz p2, :cond_7

    const v6, 0x3f0a3d71    # 0.54f

    :goto_2
    const/4 v9, 0x0

    aput v6, v8, v9

    invoke-static {p1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2276
    .local v0, "alphAnimator":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/android/incallui/OPCallCardFragment;->mCallStatus:Landroid/widget/TextView;

    if-ne v6, p1, :cond_0

    .line 2277
    const-string/jumbo v7, "alpha"

    const/4 v6, 0x1

    new-array v8, v6, [F

    if-eqz p2, :cond_8

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_3
    const/4 v9, 0x0

    aput v6, v8, v9

    invoke-static {p1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2279
    :cond_0
    const/4 v1, 0x0

    .line 2280
    .local v1, "originY":F
    iget-boolean v6, p0, Lcom/android/incallui/OPCallCardFragment;->mDialpadShowing:Z

    if-eqz v6, :cond_3

    .line 2281
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    instance-of v6, v6, Lcom/android/incallui/InCallActivity;

    if-eqz v6, :cond_3

    .line 2282
    iget-object v6, p0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryNameContainer:Landroid/widget/LinearLayout;

    if-ne v6, p1, :cond_1

    .line 2283
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b029b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    .line 2284
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0299

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 2286
    :cond_1
    iget-object v6, p0, Lcom/android/incallui/OPCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-ne v6, p1, :cond_2

    .line 2287
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b029f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    .line 2288
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b029d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 2290
    :cond_2
    iget-object v6, p0, Lcom/android/incallui/OPCallCardFragment;->mCallStatus:Landroid/widget/TextView;

    if-ne v6, p1, :cond_3

    .line 2291
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0297

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    .line 2292
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0295

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 2296
    :cond_3
    const-string/jumbo v6, "translationY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    if-eqz p2, :cond_4

    move v1, p4

    .end local v1    # "originY":F
    :cond_4
    const/4 v8, 0x0

    aput v1, v7, v8

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 2297
    .local v5, "transYAnimator":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/android/incallui/OPCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-ne v6, p1, :cond_9

    .line 2298
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2327
    .end local v0    # "alphAnimator":Landroid/animation/ObjectAnimator;
    .end local v2    # "scaleXAnimator":Landroid/animation/ObjectAnimator;
    .end local v3    # "scaleYAnimator":Landroid/animation/ObjectAnimator;
    :goto_4
    iget-object v6, p0, Lcom/android/incallui/OPCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-ne v6, p1, :cond_12

    .line 2328
    const-wide/16 v6, 0xe1

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2332
    :goto_5
    new-instance v6, Lcom/android/incallui/OPCallCardFragment$15;

    invoke-direct {v6, p0, p1}, Lcom/android/incallui/OPCallCardFragment$15;-><init>(Lcom/android/incallui/OPCallCardFragment;Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2347
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 2269
    return-void

    .line 2273
    .end local v5    # "transYAnimator":Landroid/animation/ObjectAnimator;
    .restart local p5    # "tosScaleX":F
    .restart local p6    # "tosScaleY":F
    :cond_5
    const/high16 p5, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 2274
    .end local p5    # "tosScaleX":F
    .restart local v2    # "scaleXAnimator":Landroid/animation/ObjectAnimator;
    :cond_6
    const/high16 p6, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 2275
    .end local p6    # "tosScaleY":F
    .restart local v3    # "scaleYAnimator":Landroid/animation/ObjectAnimator;
    :cond_7
    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 2277
    .restart local v0    # "alphAnimator":Landroid/animation/ObjectAnimator;
    :cond_8
    const v6, 0x3f0a3d71    # 0.54f

    goto/16 :goto_3

    .line 2300
    .restart local v5    # "transYAnimator":Landroid/animation/ObjectAnimator;
    :cond_9
    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    const/4 v7, 0x3

    aput-object v0, v6, v7

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_4

    .line 2303
    .end local v0    # "alphAnimator":Landroid/animation/ObjectAnimator;
    .end local v2    # "scaleXAnimator":Landroid/animation/ObjectAnimator;
    .end local v3    # "scaleYAnimator":Landroid/animation/ObjectAnimator;
    .end local v5    # "transYAnimator":Landroid/animation/ObjectAnimator;
    .restart local p5    # "tosScaleX":F
    .restart local p6    # "tosScaleY":F
    :cond_a
    const/4 v1, 0x0

    .line 2304
    .restart local v1    # "originY":F
    const-string/jumbo v6, "CallCardFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "animationTopView isPrimaryCallActive: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/incallui/OPCallCardFragment;->isPrimaryCallActive:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    iget-boolean v6, p0, Lcom/android/incallui/OPCallCardFragment;->isPrimaryCallActive:Z

    if-eqz v6, :cond_d

    .line 2306
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    instance-of v6, v6, Lcom/android/incallui/InCallActivity;

    if-eqz v6, :cond_d

    .line 2307
    iget-object v6, p0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryNameContainer:Landroid/widget/LinearLayout;

    if-ne v6, p1, :cond_b

    .line 2308
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b029c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 2310
    :cond_b
    iget-object v6, p0, Lcom/android/incallui/OPCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-ne v6, p1, :cond_c

    .line 2311
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b02a0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 2313
    :cond_c
    iget-object v6, p0, Lcom/android/incallui/OPCallCardFragment;->mCallStatus:Landroid/widget/TextView;

    if-ne v6, p1, :cond_d

    .line 2314
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0298

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 2318
    :cond_d
    const-string/jumbo v6, "translationY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    if-eqz p2, :cond_e

    move v1, p4

    .end local v1    # "originY":F
    :cond_e
    const/4 v8, 0x0

    aput v1, v7, v8

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 2319
    .restart local v5    # "transYAnimator":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/android/incallui/OPCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-ne v6, p1, :cond_11

    .line 2320
    const-string/jumbo v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    if-eqz p2, :cond_f

    .end local p5    # "tosScaleX":F
    :goto_6
    const/4 v8, 0x0

    aput p5, v7, v8

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2321
    .restart local v2    # "scaleXAnimator":Landroid/animation/ObjectAnimator;
    const-string/jumbo v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    if-eqz p2, :cond_10

    .end local p6    # "tosScaleY":F
    :goto_7
    const/4 v8, 0x0

    aput p6, v7, v8

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2322
    .restart local v3    # "scaleYAnimator":Landroid/animation/ObjectAnimator;
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_4

    .line 2320
    .end local v2    # "scaleXAnimator":Landroid/animation/ObjectAnimator;
    .end local v3    # "scaleYAnimator":Landroid/animation/ObjectAnimator;
    .restart local p5    # "tosScaleX":F
    .restart local p6    # "tosScaleY":F
    :cond_f
    const/high16 p5, 0x3f800000    # 1.0f

    goto :goto_6

    .line 2321
    .end local p5    # "tosScaleX":F
    .restart local v2    # "scaleXAnimator":Landroid/animation/ObjectAnimator;
    :cond_10
    const/high16 p6, 0x3f800000    # 1.0f

    goto :goto_7

    .line 2324
    .end local v2    # "scaleXAnimator":Landroid/animation/ObjectAnimator;
    .restart local p5    # "tosScaleX":F
    :cond_11
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_4

    .line 2330
    .end local p5    # "tosScaleX":F
    .end local p6    # "tosScaleY":F
    :cond_12
    const-wide/16 v6, 0x177

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto/16 :goto_5
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1657
    if-nez p2, :cond_0

    return-void

    .line 1658
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1659
    .local v0, "eventText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1660
    .local v1, "size":I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1662
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1663
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1656
    :cond_1
    return-void
.end method

.method private getPhoneLocal(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2504
    const-string/jumbo v0, ""

    .line 2505
    .local v0, "location":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2516
    :cond_0
    :goto_0
    const-string/jumbo v1, "CallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2517
    return-object v0

    .line 2506
    :cond_1
    const-string/jumbo v1, "CallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isOverSea: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isOverSea()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2507
    invoke-static {}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isOverSea()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2508
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/dialer/util/PhoneNumberUtil;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2510
    :cond_2
    invoke-static {p1}, Lcom/oneplus/superyellowpage/OPYuloreUtil;->getRegional(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2511
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2512
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/dialer/util/PhoneNumberUtil;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2693
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2694
    return-object v1

    .line 2696
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private initializeSecondaryCallInfo(Z)V
    .locals 2
    .param p1, "hasProvider"    # Z

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1486
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e01ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    .line 1488
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e01cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1487
    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryCallConferenceCallIcon:Landroid/view/View;

    .line 1490
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e01cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1489
    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryCallVideoCallIcon:Landroid/view/View;

    .line 1493
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryCallProviderLabel:Landroid/widget/TextView;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 1494
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryCallProviderInfo:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1495
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1496
    const v1, 0x7f0e01d0

    .line 1495
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryCallProviderLabel:Landroid/widget/TextView;

    .line 1482
    :cond_1
    return-void
.end method

.method private isShowDoubleButton()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2677
    const/4 v1, 0x0

    .line 2678
    .local v1, "slot0Ready":Z
    const/4 v2, 0x0

    .line 2679
    .local v2, "slot1Ready":Z
    invoke-direct {p0}, Lcom/android/incallui/OPCallCardFragment;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2680
    return v0

    .line 2682
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/OPCallCardFragment;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2683
    const/4 v1, 0x1

    .line 2685
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/OPCallCardFragment;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2686
    const/4 v2, 0x1

    .line 2688
    :cond_2
    if-eqz v1, :cond_3

    move v0, v2

    .line 2689
    .local v0, "isDoubleActiveSim":Z
    :cond_3
    return v0
.end method

.method private isVbAvailable()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1908
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v1

    .line 1909
    .local v1, "mode":I
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1910
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1911
    const-string/jumbo v6, "preferred_tty_mode"

    .line 1910
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1914
    .local v2, "settingsTtyMode":I
    if-eq v1, v3, :cond_0

    const/16 v5, 0x8

    if-ne v1, v5, :cond_1

    :cond_0
    :goto_0
    return v3

    .line 1915
    :cond_1
    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method private isVolumeBoostOn()Z
    .locals 2

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "volume_boost"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "=on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private setDangerNoticeVisible(Z)V
    .locals 3
    .param p1, "bool"    # Z

    .prologue
    .line 2024
    iput-boolean p1, p0, Lcom/android/incallui/OPCallCardFragment;->isDangerNoticeVisible:Z

    .line 2025
    const-string/jumbo v0, "CallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDangerNoticeVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/OPCallCardFragment;->isDangerNoticeVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/OPCallCardFragment;->isCanShow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/OPCallCardFragment;->mDialpadShowing:Z

    if-eqz v0, :cond_1

    .line 2027
    :cond_0
    return-void

    .line 2029
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment;->mNoticeContainer:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/android/incallui/OPCallCardFragment;->isVisibility:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2023
    return-void

    .line 2029
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p3, "isVisible"    # Z

    .prologue
    .line 1270
    if-nez p2, :cond_0

    .line 1271
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1273
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryPhotoDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v1, p2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment;->mOldImageView:Landroid/widget/ImageView;

    if-ne v1, p1, :cond_1

    .line 1274
    return-void

    .line 1276
    :cond_1
    iput-object p2, p0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryPhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 1277
    iput-object p1, p0, Lcom/android/incallui/OPCallCardFragment;->mOldImageView:Landroid/widget/ImageView;

    .line 1278
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1279
    .local v0, "current":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    .line 1280
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1267
    :goto_0
    return-void

    .line 1285
    :cond_2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1286
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setType(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2012
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/OPCallCardFragment;->isTyepVisible:Z

    .line 2013
    iget-boolean v0, p0, Lcom/android/incallui/OPCallCardFragment;->isTyepVisible:Z

    if-eqz v0, :cond_0

    .line 2014
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mType:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2016
    :cond_0
    const-string/jumbo v0, "CallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isTyepVisible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/OPCallCardFragment;->isTyepVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    iget-boolean v0, p0, Lcom/android/incallui/OPCallCardFragment;->isTyepVisible:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/incallui/OPCallCardFragment;->mDialpadShowing:Z

    if-eqz v0, :cond_2

    .line 2018
    return-void

    .line 2012
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2020
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mType:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/incallui/OPCallCardFragment;->isTyepVisible:Z

    if-eqz v2, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2011
    return-void

    .line 2020
    :cond_3
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private setVolumeBoost(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 1978
    if-eqz p1, :cond_0

    .line 1979
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "volume_boost=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1977
    :goto_0
    return-void

    .line 1981
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "volume_boost=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showCallRecordingElapsedTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 562
    return-void
.end method

.method private showVbNotify()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1932
    const v0, 0x7f0d0401

    .line 1934
    .local v0, "resId":I
    invoke-direct {p0}, Lcom/android/incallui/OPCallCardFragment;->isVbAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1935
    invoke-direct {p0}, Lcom/android/incallui/OPCallCardFragment;->isVolumeBoostOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1936
    const v0, 0x7f0d03ff

    .line 1942
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1943
    .local v1, "vbnotify":Landroid/widget/Toast;
    const/16 v2, 0x11

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1944
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1930
    return-void

    .line 1938
    .end local v1    # "vbnotify":Landroid/widget/Toast;
    :cond_1
    const v0, 0x7f0d0400

    goto :goto_0
.end method

.method private startPrimaryCallInfoAnimation(Z)V
    .locals 18
    .param p1, "active"    # Z

    .prologue
    .line 2401
    const-string/jumbo v1, "CallCardFragment"

    const-string/jumbo v2, "startPrimaryCallInfoAnimation"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2402
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_2

    .line 2403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryNameContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 2404
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b029c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 2405
    .local v5, "transYPrimaryName":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryNameContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f000000    # 0.5f

    move-object/from16 v1, p0

    move/from16 v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/incallui/OPCallCardFragment;->animationTopView(Landroid/view/View;ZZFFF)V

    .line 2407
    .end local v5    # "transYPrimaryName":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/OPCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 2408
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 2409
    .local v10, "transYPrimaryNumber":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/OPCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v9, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v6, p0

    move/from16 v8, p1

    invoke-direct/range {v6 .. v12}, Lcom/android/incallui/OPCallCardFragment;->animationTopView(Landroid/view/View;ZZFFF)V

    .line 2411
    .end local v10    # "transYPrimaryNumber":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/OPCallCardFragment;->mCallStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 2412
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0298

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    .line 2413
    .local v15, "transYPrimary":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/OPCallCardFragment;->mCallStatus:Landroid/widget/TextView;

    const/4 v14, 0x1

    const/high16 v16, 0x40000000    # 2.0f

    const/high16 v17, 0x40000000    # 2.0f

    move-object/from16 v11, p0

    move/from16 v13, p1

    invoke-direct/range {v11 .. v17}, Lcom/android/incallui/OPCallCardFragment;->animationTopView(Landroid/view/View;ZZFFF)V

    .line 2400
    .end local v15    # "transYPrimary":F
    :cond_2
    return-void
.end method

.method private updateFabPosition()V
    .locals 0

    .prologue
    .line 1738
    return-void
.end method

.method private updateFabPositionForSecondaryCallInfo()V
    .locals 2

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryCallInfo:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1817
    new-instance v1, Lcom/android/incallui/OPCallCardFragment$13;

    invoke-direct {v1, p0}, Lcom/android/incallui/OPCallCardFragment$13;-><init>(Lcom/android/incallui/OPCallCardFragment;)V

    .line 1816
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1815
    return-void
.end method

.method private updateSimIcon(Z)V
    .locals 14
    .param p1, "isEmergencyCall"    # Z

    .prologue
    .line 2521
    invoke-direct {p0}, Lcom/android/incallui/OPCallCardFragment;->isShowDoubleButton()Z

    move-result v4

    .line 2522
    .local v4, "isShowIcon":Z
    const-string/jumbo v11, "CallCardFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateSimIcon isShowIcon: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ",  isEmergencyCall: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2523
    if-eqz v4, :cond_0

    if-eqz p1, :cond_2

    .line 2566
    :cond_0
    iget-object v11, p0, Lcom/android/incallui/OPCallCardFragment;->mSimIndicator:Landroid/widget/ImageView;

    if-eqz v11, :cond_1

    .line 2567
    iget-object v11, p0, Lcom/android/incallui/OPCallCardFragment;->mSimIndicator:Landroid/widget/ImageView;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2520
    :cond_1
    :goto_0
    return-void

    .line 2524
    :cond_2
    const/4 v8, -0x1

    .line 2525
    .local v8, "slotId":I
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v11

    check-cast v11, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v11}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2526
    .local v0, "call":Lcom/android/incallui/Call;
    const-string/jumbo v11, "CallCardFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "call = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2527
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2528
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "callerId$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2529
    .local v1, "callerId":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v3

    .line 2530
    .local v3, "childCall":Lcom/android/incallui/Call;
    const-string/jumbo v11, "CallCardFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "childCall = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    if-eqz v3, :cond_3

    .line 2532
    move-object v0, v3

    .line 2537
    .end local v1    # "callerId":Ljava/lang/String;
    .end local v2    # "callerId$iterator":Ljava/util/Iterator;
    .end local v3    # "childCall":Lcom/android/incallui/Call;
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2538
    const-string/jumbo v11, "CallCardFragment"

    const-string/jumbo v12, "isConferenceCall"

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2539
    return-void

    .line 2541
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 2542
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v6

    .line 2543
    .local v6, "ph":Landroid/telecom/PhoneAccountHandle;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v5

    .line 2544
    .local v5, "mgr":Landroid/telecom/TelecomManager;
    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    .line 2545
    invoke-virtual {v5, v6}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v7

    .line 2546
    .local v7, "phoneAccount":Landroid/telecom/PhoneAccount;
    if-eqz v7, :cond_6

    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2547
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSubId()I

    move-result v9

    .line 2548
    .local v9, "subId":I
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v10

    .line 2549
    .local v10, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v8

    .line 2550
    const-string/jumbo v11, "CallCardFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "subId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", slotId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    .end local v5    # "mgr":Landroid/telecom/TelecomManager;
    .end local v6    # "ph":Landroid/telecom/PhoneAccountHandle;
    .end local v7    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v9    # "subId":I
    .end local v10    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :cond_6
    iget-object v11, p0, Lcom/android/incallui/OPCallCardFragment;->mSimIndicator:Landroid/widget/ImageView;

    if-eqz v11, :cond_1

    .line 2555
    if-nez v8, :cond_7

    .line 2556
    iget-object v11, p0, Lcom/android/incallui/OPCallCardFragment;->mSimIndicator:Landroid/widget/ImageView;

    const v12, 0x7f020251

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2557
    iget-object v11, p0, Lcom/android/incallui/OPCallCardFragment;->mSimIndicator:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2558
    :cond_7
    const/4 v11, 0x1

    if-ne v8, v11, :cond_8

    .line 2559
    iget-object v11, p0, Lcom/android/incallui/OPCallCardFragment;->mSimIndicator:Landroid/widget/ImageView;

    const v12, 0x7f020252

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2560
    iget-object v11, p0, Lcom/android/incallui/OPCallCardFragment;->mSimIndicator:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2562
    :cond_8
    iget-object v11, p0, Lcom/android/incallui/OPCallCardFragment;->mSimIndicator:Landroid/widget/ImageView;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateVbButton()V
    .locals 2

    .prologue
    .line 1919
    invoke-direct {p0}, Lcom/android/incallui/OPCallCardFragment;->isVbAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1920
    invoke-direct {p0}, Lcom/android/incallui/OPCallCardFragment;->isVolumeBoostOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1921
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mVbButton:Landroid/widget/ImageButton;

    const v1, 0x7f0202b3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1918
    :goto_0
    return-void

    .line 1923
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mVbButton:Landroid/widget/ImageButton;

    const v1, 0x7f0202b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 1926
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mVbButton:Landroid/widget/ImageButton;

    const v1, 0x7f0202b4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public createPresenter()Lcom/android/incallui/CallCardPresenter;
    .locals 1

    .prologue
    .line 363
    new-instance v0, Lcom/android/incallui/CallCardPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallCardPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->createPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    return-object v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1501
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_2

    .line 1504
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1505
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1507
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0304

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1506
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 1508
    iget-object v3, p0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1506
    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1505
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1515
    :goto_0
    return-void

    .line 1510
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/OPCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1511
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/OPCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1512
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/OPCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1513
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/OPCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0

    .line 1517
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/OPCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1518
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/OPCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1519
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/OPCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1520
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/OPCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1521
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/OPCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1522
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryCallProviderLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/OPCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1524
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1762
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getSpaceBesideCallCard()F
    .locals 3

    .prologue
    const v2, 0x7f0e0025

    .line 718
    iget-boolean v1, p0, Lcom/android/incallui/OPCallCardFragment;->mIsLandscape:Z

    if-eqz v1, :cond_0

    .line 719
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    return v1

    .line 725
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 726
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 731
    .local v0, "callCardHeight":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    return v1

    .line 729
    .end local v0    # "callCardHeight":I
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .restart local v0    # "callCardHeight":I
    goto :goto_0
.end method

.method public getUi()Lcom/android/incallui/CallCardPresenter$CallCardUi;
    .locals 0

    .prologue
    .line 358
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getUi()Lcom/android/incallui/CallCardPresenter$CallCardUi;

    move-result-object v0

    return-object v0
.end method

.method public hasNavBar(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2202
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "buttons_show_on_screen_navkeys"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isCallSubjectVisible()Z
    .locals 1

    .prologue
    .line 1627
    const/4 v0, 0x0

    return v0
.end method

.method public isManageConferenceVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1615
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment;->mManageConferenceCallButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 404
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 409
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardPresenter;->setContext(Landroid/content/Context;)V

    .line 403
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 368
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 370
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mHandler:Landroid/os/Handler;

    .line 371
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/OPCallCardFragment;->mShrinkAnimationDuration:I

    .line 372
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/OPCallCardFragment;->mVideoAnimationDuration:I

    .line 373
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 374
    const v1, 0x7f0b0267

    .line 373
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButtonVerticalOffset:I

    .line 375
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 376
    const v1, 0x7f0b027b

    .line 375
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/OPCallCardFragment;->mFabNormalDiameter:I

    .line 377
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 378
    const v1, 0x7f0b027c

    .line 377
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/OPCallCardFragment;->mFabSmallDiameter:I

    .line 380
    if-eqz p1, :cond_0

    .line 381
    const-string/jumbo v0, "is_dialpad_showing"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/OPCallCardFragment;->mIsDialpadShowing:Z

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 388
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 393
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mContext:Landroid/content/Context;

    .line 367
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 422
    const-string/jumbo v1, "CallCardFragment onCreate"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0278

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 423
    iput v1, p0, Lcom/android/incallui/OPCallCardFragment;->mTranslationOffset:F

    .line 425
    const v1, 0x7f0400be

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 426
    .local v0, "view":Landroid/view/View;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 427
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 2474
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroy()V

    .line 2473
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 398
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 397
    return-void
.end method

.method public onDialpadVisibilityChange(Z)V
    .locals 0
    .param p1, "isShown"    # Z

    .prologue
    .line 1734
    iput-boolean p1, p0, Lcom/android/incallui/OPCallCardFragment;->mIsDialpadShowing:Z

    .line 1735
    invoke-direct {p0}, Lcom/android/incallui/OPCallCardFragment;->updateFabPosition()V

    .line 1733
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1806
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onPause()V

    .line 1807
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/OPCallCardFragment;->mIsOnResume:Z

    .line 1805
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1767
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    .line 1795
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/OPCallCardFragment;->mIsOnResume:Z

    .line 1766
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 415
    const-string/jumbo v0, "is_dialpad_showing"

    iget-boolean v1, p0, Lcom/android/incallui/OPCallCardFragment;->mIsDialpadShowing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 416
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 414
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 2466
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onStart()V

    .line 2467
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 2468
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2469
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/incallui/CallCardPresenter;->init(Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 2465
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 432
    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 435
    const v0, 0x7f0e00c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    .line 436
    const v0, 0x7f0e01bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 437
    const v0, 0x7f0e01bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/oneplus/OPCircleImageView;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPhoto:Lcom/android/incallui/oneplus/OPCircleImageView;

    .line 438
    const v0, 0x7f0e01be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mVoltePrimary:Landroid/view/View;

    .line 439
    const v0, 0x7f0e01bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPhotoContainer:Landroid/view/View;

    .line 441
    const v0, 0x7f0e01c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryNameContainer:Landroid/widget/LinearLayout;

    .line 442
    const v0, 0x7f0e01c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    .line 444
    const v0, 0x7f0e01bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSimIndicator:Landroid/widget/ImageView;

    .line 445
    const v0, 0x7f0e01c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    .line 446
    const v0, 0x7f0e01c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mLocation:Landroid/widget/TextView;

    .line 447
    const v0, 0x7f0e01c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mType:Landroid/widget/TextView;

    .line 448
    const v0, 0x7f0e01c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mCallStatus:Landroid/widget/TextView;

    .line 449
    new-instance v0, Lcom/android/incallui/oneplus/OPSencondLineWrapper;

    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment;->mCallStatus:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/android/incallui/oneplus/OPSencondLineWrapper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->sencondLineWrapper:Lcom/android/incallui/oneplus/OPSencondLineWrapper;

    .line 450
    const v0, 0x7f0e01c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mNoticeContainer:Landroid/widget/LinearLayout;

    .line 451
    const v0, 0x7f0e00c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mCallButtonsContainer:Landroid/view/View;

    .line 455
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 454
    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPulseAnimation:Landroid/view/animation/Animation;

    .line 459
    const v0, 0x7f0e015a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    .line 460
    const v0, 0x7f0e01ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryCallInfo:Landroid/view/View;

    .line 461
    const v0, 0x7f0e01cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/oneplus/OPCircleImageView;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryPhoto:Lcom/android/incallui/oneplus/OPCircleImageView;

    .line 462
    const v0, 0x7f0e01cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryCallProviderInfo:Landroid/view/View;

    .line 479
    const v0, 0x7f0e01ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    .line 480
    const v0, 0x7f0e01eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mCallStateVideoCallIcon:Landroid/widget/ImageView;

    .line 482
    const v0, 0x7f0e01ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    .line 483
    const v0, 0x7f0e01ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mHdAudioIcon:Landroid/widget/ImageView;

    .line 484
    const v0, 0x7f0e01ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mForwardIcon:Landroid/widget/ImageView;

    .line 485
    const v0, 0x7f0e01f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    .line 486
    const v0, 0x7f0e01c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    .line 487
    const v0, 0x7f0e01f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    .line 493
    const v0, 0x7f0e00d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mInCallMessageLabel:Landroid/widget/TextView;

    .line 494
    const v0, 0x7f0e00c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mProgressSpinner:Landroid/view/View;

    .line 497
    const v0, 0x7f0e00c5

    .line 496
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    .line 499
    const v0, 0x7f0e00c6

    .line 498
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButton:Landroid/widget/ImageButton;

    .line 500
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/incallui/OPCallCardFragment$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/OPCallCardFragment$5;-><init>(Lcom/android/incallui/OPCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    new-instance v0, Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 513
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButton:Landroid/widget/ImageButton;

    .line 512
    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/common/widget/FloatingActionButtonController;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageButton;)V

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    .line 515
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryCallInfo:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/OPCallCardFragment$6;

    invoke-direct {v1, p0}, Lcom/android/incallui/OPCallCardFragment$6;-><init>(Lcom/android/incallui/OPCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    const v0, 0x7f0e016e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mManageConferenceCallButton:Landroid/view/View;

    .line 541
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mManageConferenceCallButton:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/OPCallCardFragment$7;

    invoke-direct {v1, p0}, Lcom/android/incallui/OPCallCardFragment$7;-><init>(Lcom/android/incallui/OPCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->updateViews()V

    .line 431
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2478
    const-string/jumbo v0, "CallCardFragment"

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2479
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mOPHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2480
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPhoto:Lcom/android/incallui/oneplus/OPCircleImageView;

    const v1, 0x7f0201c2

    invoke-virtual {v0, v1}, Lcom/android/incallui/oneplus/OPCircleImageView;->setImageResource(I)V

    .line 2481
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->sencondLineWrapper:Lcom/android/incallui/oneplus/OPSencondLineWrapper;

    invoke-virtual {v0}, Lcom/android/incallui/oneplus/OPSencondLineWrapper;->resetWrapper()V

    .line 2482
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2483
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mLocation:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2484
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2485
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mType:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2486
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mCallStatus:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2487
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2488
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2490
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mCallStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2491
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mNoticeContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2492
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSimIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2493
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSimIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2495
    :cond_0
    iput-boolean v3, p0, Lcom/android/incallui/OPCallCardFragment;->isVisibility:Z

    .line 2496
    iput-boolean v3, p0, Lcom/android/incallui/OPCallCardFragment;->isButtonVisibility:Z

    .line 2497
    invoke-virtual {p0, v3}, Lcom/android/incallui/OPCallCardFragment;->setCallButtonsVisible(Z)V

    .line 2499
    invoke-virtual {p0, v2}, Lcom/android/incallui/OPCallCardFragment;->setPrimaryCallInfoAnimation(Z)V

    .line 2500
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->stopLocation()V

    .line 2477
    return-void
.end method

.method public setCallButtonsVisible(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .prologue
    const/16 v0, 0x8

    .line 2352
    const-string/jumbo v1, "CallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCallButtonsVisible isVisible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isButtonVisibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/OPCallCardFragment;->isButtonVisibility:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment;->mCallButtonsContainer:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2354
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment;->mCallButtonsContainer:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/incallui/OPCallCardFragment;->isButtonVisibility:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2351
    :cond_1
    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "videoState"    # I
    .param p3, "sessionModificationState"    # I
    .param p4, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p5, "connectionLabel"    # Ljava/lang/String;
    .param p6, "callStateIcon"    # Landroid/graphics/drawable/Drawable;
    .param p7, "gatewayNumber"    # Ljava/lang/String;
    .param p8, "isWifi"    # Z
    .param p9, "isConference"    # Z
    .param p10, "isWorkCall"    # Z

    .prologue
    .line 1018
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1019
    invoke-virtual {p0, p1, p5}, Lcom/android/incallui/OPCallCardFragment;->setPrimaryCallState(ILjava/lang/String;)V

    .line 1016
    :cond_0
    return-void
.end method

.method public setEndCallButtonAnimation()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2420
    const-string/jumbo v2, "CallCardFragment"

    const-string/jumbo v3, "setEndCallButtonAnimation"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2422
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/incallui/InCallActivity;

    .line 2421
    if-eqz v2, :cond_2

    .line 2423
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerFragment;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2424
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerFragment;

    move-result-object v2

    instance-of v2, v2, Lcom/android/incallui/OPGlowPadAnswerFragment;

    .line 2421
    if-eqz v2, :cond_2

    .line 2425
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerFragment;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/OPGlowPadAnswerFragment;

    iget-boolean v2, v2, Lcom/android/incallui/OPGlowPadAnswerFragment;->isSlideAnswer:Z

    .line 2421
    if-eqz v2, :cond_2

    .line 2426
    const-string/jumbo v2, "CallCardFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEndCallButtonAnimation animationRunning: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/incallui/OPCallCardFragment;->animationRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerFragment;

    move-result-object v2

    instance-of v2, v2, Lcom/android/incallui/OPGlowPadAnswerFragment;

    if-eqz v2, :cond_0

    .line 2428
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerFragment;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/OPGlowPadAnswerFragment;

    iput-boolean v5, v2, Lcom/android/incallui/OPGlowPadAnswerFragment;->isSlideAnswer:Z

    .line 2430
    :cond_0
    iget-boolean v2, p0, Lcom/android/incallui/OPCallCardFragment;->animationRunning:Z

    if-nez v2, :cond_1

    .line 2431
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButton:Landroid/widget/ImageButton;

    const v3, 0x7f020225

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2432
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setScaleX(F)V

    .line 2433
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setScaleY(F)V

    .line 2434
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2435
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    const v3, 0x7f020226

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2436
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 2437
    .local v0, "transX":F
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v0, v4, v5

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2438
    .local v1, "transXAnimator":Landroid/animation/Animator;
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 2439
    new-instance v2, Lcom/android/incallui/OPCallCardFragment$16;

    invoke-direct {v2, p0}, Lcom/android/incallui/OPCallCardFragment$16;-><init>(Lcom/android/incallui/OPCallCardFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2456
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 2419
    .end local v0    # "transX":F
    .end local v1    # "transXAnimator":Landroid/animation/Animator;
    :cond_1
    :goto_0
    return-void

    .line 2459
    :cond_2
    const-string/jumbo v2, "CallCardFragment"

    const-string/jumbo v3, "setEndCallButtonEnabled"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2460
    invoke-virtual {p0, v6, v6}, Lcom/android/incallui/OPCallCardFragment;->setEndCallButtonEnabled(ZZ)V

    goto :goto_0
.end method

.method public setEndCallButtonEnabled(ZZ)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1553
    const-string/jumbo v0, "CallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", animate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1562
    if-eqz p1, :cond_1

    .line 1563
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1564
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1565
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1571
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1572
    invoke-direct {p0}, Lcom/android/incallui/OPCallCardFragment;->updateFabPosition()V

    .line 1551
    :cond_0
    return-void

    .line 1567
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 4
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2000
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0324

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/OPCallCardFragment;->isLocationVisible:Z

    .line 2001
    iget-boolean v0, p0, Lcom/android/incallui/OPCallCardFragment;->isLocationVisible:Z

    if-eqz v0, :cond_1

    .line 2002
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2004
    :cond_1
    const-string/jumbo v0, "CallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isVisible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/OPCallCardFragment;->isLocationVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mDialpadShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/OPCallCardFragment;->mDialpadShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    iget-boolean v0, p0, Lcom/android/incallui/OPCallCardFragment;->isLocationVisible:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/incallui/OPCallCardFragment;->mDialpadShowing:Z

    if-eqz v0, :cond_3

    .line 2006
    return-void

    .line 2000
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 2008
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mLocation:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/incallui/OPCallCardFragment;->isVisibility:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/incallui/OPCallCardFragment;->isLocationVisible:Z

    if-eqz v2, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1998
    return-void

    .line 2008
    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public setPrimarYuloreInfo(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    .prologue
    .line 2059
    const-string/jumbo v0, "CallCardFragment"

    const-string/jumbo v1, "setPrimarYuloreInfo"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    invoke-virtual {p0, p1}, Lcom/android/incallui/OPCallCardFragment;->updatePrimarYuloreInfo(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;)V

    .line 2058
    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZZZ)V
    .locals 9
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p6, "isSipCall"    # Z
    .param p7, "isContactPhotoShown"    # Z
    .param p8, "isWorkCall"    # Z
    .param p9, "isVoiceMail"    # Z
    .param p10, "isEmergency"    # Z

    .prologue
    .line 836
    const-string/jumbo v0, "Setting primary call"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 839
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_2

    move-object v0, p2

    :goto_0
    invoke-static {v1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 840
    .local v8, "isEmergencyNumber":Z
    invoke-direct {p0, v8}, Lcom/android/incallui/OPCallCardFragment;->updateSimIcon(Z)V

    .line 841
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 842
    :cond_0
    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->getInstance()Lcom/android/incallui/oneplus/OPRapidDisplayManager;

    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->isRapidDialLocked()Z

    move-result v0

    .line 841
    if-eqz v0, :cond_3

    .line 843
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 844
    invoke-virtual {p0, p1}, Lcom/android/incallui/OPCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 846
    :cond_1
    return-void

    .end local v8    # "isEmergencyNumber":Z
    :cond_2
    move-object v0, p1

    .line 839
    goto :goto_0

    .line 848
    .restart local v8    # "isEmergencyNumber":Z
    :cond_3
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    move v6, p6

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v8}, Lcom/android/incallui/OPCallCardFragment;->updatePrimaryInfo(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZ)V

    .line 835
    return-void
.end method

.method public setPrimaryAnimation(ZZZ)V
    .locals 6
    .param p1, "isMoveUp"    # Z
    .param p2, "isActive"    # Z
    .param p3, "anim"    # Z

    .prologue
    .line 2183
    const-string/jumbo v2, "CallCardFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPrimaryAnimation isPrimaryAnimationRunning: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/incallui/OPCallCardFragment;->isPrimaryAnimationRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    iget-boolean v2, p0, Lcom/android/incallui/OPCallCardFragment;->isPrimaryAnimationRunning:Z

    if-eqz v2, :cond_1

    .line 2185
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->mOPHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 2186
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2187
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "isMoveUp"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2188
    const-string/jumbo v2, "isActive"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2189
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2190
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->mOPHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x177

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2182
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 2192
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/incallui/OPCallCardFragment;->startPrimaryAnimation(ZZZ)V

    .line 2193
    if-eqz p1, :cond_0

    .line 2194
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/incallui/InCallActivity;

    if-eqz v2, :cond_0

    .line 2195
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->startDialpadFragmentAnimation()V

    goto :goto_0
.end method

.method public setPrimaryCallElapsedTime(ZJ)V
    .locals 6
    .param p1, "show"    # Z
    .param p2, "duration"    # J

    .prologue
    .line 1224
    const-string/jumbo v2, "CallCardFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " show"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",  duration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",  mIsOnResume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/incallui/OPCallCardFragment;->mIsOnResume:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    if-eqz p1, :cond_2

    .line 1227
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1228
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isCdmaPhone(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isCdmaDialing(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1222
    :cond_0
    :goto_0
    return-void

    .line 1229
    :cond_1
    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    .line 1230
    .local v1, "callTimeElapsed":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->sencondLineWrapper:Lcom/android/incallui/oneplus/OPSencondLineWrapper;

    invoke-virtual {v2, v1}, Lcom/android/incallui/oneplus/OPSencondLineWrapper;->ShowElapsedTime(Ljava/lang/String;)V

    goto :goto_0

    .line 1236
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "callTimeElapsed":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1237
    .restart local v0    # "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 1238
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->sencondLineWrapper:Lcom/android/incallui/oneplus/OPSencondLineWrapper;

    invoke-virtual {v2}, Lcom/android/incallui/oneplus/OPSencondLineWrapper;->cancelShowTime()V

    goto :goto_0
.end method

.method public setPrimaryCallInfoAnimation(Z)V
    .locals 5
    .param p1, "active"    # Z

    .prologue
    const/16 v4, 0x67

    .line 2363
    const-string/jumbo v1, "CallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPrimaryCallInfoAnimation active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isPrimaryCallActive active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/OPCallCardFragment;->isPrimaryCallActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    iget-boolean v1, p0, Lcom/android/incallui/OPCallCardFragment;->isPrimaryCallActive:Z

    if-ne p1, v1, :cond_0

    .line 2365
    return-void

    .line 2367
    :cond_0
    iput-boolean p1, p0, Lcom/android/incallui/OPCallCardFragment;->isPrimaryCallActive:Z

    .line 2368
    const-string/jumbo v1, "CallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPrimaryAnimationRunning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/OPCallCardFragment;->isPrimaryAnimationRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    iget-boolean v1, p0, Lcom/android/incallui/OPCallCardFragment;->isPrimaryAnimationRunning:Z

    if-eqz v1, :cond_1

    .line 2370
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment;->mOPHandler:Landroid/os/Handler;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v1, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2371
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment;->mOPHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x177

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2362
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 2373
    :cond_1
    if-eqz p1, :cond_2

    .line 2374
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment;->mOPHandler:Landroid/os/Handler;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v1, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2375
    .restart local v0    # "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment;->mOPHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2377
    .end local v0    # "message":Landroid/os/Message;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/incallui/OPCallCardFragment;->startPrimaryCallInfoAnimation(Z)V

    goto :goto_0
.end method

.method public setPrimaryCallInfoAnimationDelay(Z)V
    .locals 6
    .param p1, "active"    # Z

    .prologue
    .line 2384
    const-string/jumbo v2, "CallCardFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPrimaryCallInfoAnimationDelay active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isPrimaryCallActive active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/incallui/OPCallCardFragment;->isPrimaryCallActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    iget-boolean v2, p0, Lcom/android/incallui/OPCallCardFragment;->isPrimaryCallActive:Z

    if-ne p1, v2, :cond_0

    .line 2386
    return-void

    .line 2388
    :cond_0
    iput-boolean p1, p0, Lcom/android/incallui/OPCallCardFragment;->isPrimaryCallActive:Z

    .line 2389
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->mOPHandler:Landroid/os/Handler;

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v4, 0x69

    invoke-static {v2, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2390
    .local v1, "message":Landroid/os/Message;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    iget-boolean v0, v2, Lcom/android/incallui/InCallPresenter;->isAnswer:Z

    .line 2391
    .local v0, "isAnswer":Z
    const-string/jumbo v2, "CallCardFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAnswer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    if-eqz v0, :cond_1

    .line 2393
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/incallui/InCallPresenter;->isAnswer:Z

    .line 2394
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->mOPHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4b0

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2383
    :goto_0
    return-void

    .line 2396
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->mOPHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public setPrimaryCallState(ILjava/lang/String;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "connectionLabel"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2033
    const-string/jumbo v2, "CallCardFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",  connectionLabel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    const/16 v2, 0xd

    if-ne p1, v2, :cond_3

    .line 2035
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->mCallStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2036
    const/4 v1, 0x0

    .line 2037
    .local v1, "callStateLabel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2038
    if-eqz p2, :cond_2

    .line 2039
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v5

    const v4, 0x7f0d03e1

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2043
    .local v1, "callStateLabel":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    .line 2044
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->mCallStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2032
    .end local v1    # "callStateLabel":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 2041
    .local v1, "callStateLabel":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0325

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "callStateLabel":Ljava/lang/String;
    goto :goto_0

    .line 2047
    .end local v1    # "callStateLabel":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x4

    if-eq p1, v2, :cond_4

    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    .line 2048
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->mCallStatus:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 2049
    :cond_5
    const/4 v2, 0x3

    if-eq p1, v2, :cond_6

    const/16 v2, 0xa

    if-ne p1, v2, :cond_1

    .line 2050
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2051
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isCdmaPhone(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isCdmaDialing(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2052
    :cond_7
    invoke-direct {p0, v5}, Lcom/android/incallui/OPCallCardFragment;->setDangerNoticeVisible(Z)V

    goto :goto_1
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isVisible"    # Z

    .prologue
    .line 770
    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->getRapidDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    return-void

    .line 774
    :cond_0
    if-eqz p1, :cond_1

    .line 776
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPhoto:Lcom/android/incallui/oneplus/OPCircleImageView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/OPCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 768
    :cond_1
    return-void
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z

    .prologue
    const/4 v3, 0x0

    .line 738
    const-string/jumbo v0, "CallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 740
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 742
    :cond_0
    const-string/jumbo v0, "CallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPrimaryName    name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    return-void
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 794
    if-eqz p1, :cond_0

    .line 795
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 797
    :cond_0
    const-string/jumbo v0, "CallCardFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPrimaryPhoneNumber    number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/OPCallCardFragment;->isPhoneNumberVisible:Z

    .line 800
    iget-boolean v0, p0, Lcom/android/incallui/OPCallCardFragment;->mDialpadShowing:Z

    if-eqz v0, :cond_2

    .line 801
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 783
    :goto_1
    return-void

    .line 799
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 803
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/incallui/OPCallCardFragment;->isPhoneNumberVisible:Z

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "providerLabel"    # Ljava/lang/String;
    .param p6, "isConference"    # Z
    .param p7, "isVideoCall"    # Z
    .param p8, "isFullscreen"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 878
    if-eqz p1, :cond_3

    .line 879
    iput-boolean v2, p0, Lcom/android/incallui/OPCallCardFragment;->mHasSecondaryCallInfo:Z

    .line 880
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 881
    .local v0, "hasProvider":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/incallui/OPCallCardFragment;->initializeSecondaryCallInfo(Z)V

    .line 887
    invoke-virtual {p0, v2}, Lcom/android/incallui/OPCallCardFragment;->setSecondaryInfoVisible(Z)V

    .line 892
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    .line 893
    invoke-static {p2}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 892
    .end local p2    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 899
    const/4 v1, 0x0

    .line 900
    .local v1, "nameDirection":I
    if-eqz p3, :cond_1

    .line 901
    const/4 v1, 0x3

    .line 903
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 876
    .end local v0    # "hasProvider":Z
    .end local v1    # "nameDirection":I
    :goto_1
    return-void

    .restart local p2    # "name":Ljava/lang/String;
    :cond_2
    move v0, v2

    .line 880
    goto :goto_0

    .line 905
    :cond_3
    iput-boolean v0, p0, Lcom/android/incallui/OPCallCardFragment;->mHasSecondaryCallInfo:Z

    .line 906
    invoke-virtual {p0, v0}, Lcom/android/incallui/OPCallCardFragment;->setSecondaryInfoVisible(Z)V

    goto :goto_1
.end method

.method public setSecondaryInfoVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 921
    iput-boolean p1, p0, Lcom/android/incallui/OPCallCardFragment;->isSecondVisible:Z

    .line 922
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryCallInfo:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 919
    return-void

    .line 922
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSecondaryPhoto(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p3, "isContact"    # Z
    .param p4, "isVoiceMail"    # Z
    .param p5, "isEmergency"    # Z

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryPhoto:Lcom/android/incallui/oneplus/OPCircleImageView;

    if-eqz v0, :cond_0

    .line 2166
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryPhoto:Lcom/android/incallui/oneplus/OPCircleImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/incallui/OPCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 2164
    :cond_0
    return-void
.end method

.method public setSecondaryYuloreInfo(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    .prologue
    .line 2131
    const-string/jumbo v0, "CallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSecondaryYuloreInfo info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    iget-object v0, p1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2133
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2134
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2137
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryPhoto:Lcom/android/incallui/oneplus/OPCircleImageView;

    if-eqz v0, :cond_1

    .line 2138
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mSecondaryPhoto:Lcom/android/incallui/oneplus/OPCircleImageView;

    iget-object v1, p1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->photo:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/OPCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 2130
    :cond_1
    return-void
.end method

.method public showContactContext(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 601
    return-void
.end method

.method public showHD(Z)V
    .locals 2
    .param p1, "showHD"    # Z

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment;->mVoltePrimary:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2172
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment;->mVoltePrimary:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2170
    :cond_0
    return-void

    .line 2172
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public showHdAudioIndicator(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1584
    invoke-virtual {p0, p1}, Lcom/android/incallui/OPCallCardFragment;->showHD(Z)V

    .line 1582
    return-void
.end method

.method public showManageConferenceCallButton(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1605
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment;->mManageConferenceCallButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1604
    return-void

    .line 1605
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showNoteSentToast()V
    .locals 3

    .prologue
    .line 1730
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d040a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1729
    return-void
.end method

.method public startPrimaryAnimation(ZZZ)V
    .locals 24
    .param p1, "isMoveUp"    # Z
    .param p2, "isActive"    # Z
    .param p3, "anim"    # Z

    .prologue
    .line 2206
    const-string/jumbo v1, "CallCardFragment"

    const-string/jumbo v2, "startPrimaryAnimation"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    const-string/jumbo v1, "CallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isVisibility : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/incallui/OPCallCardFragment;->isVisibility:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/OPCallCardFragment;->mLocation:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 2209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/OPCallCardFragment;->mLocation:Landroid/widget/TextView;

    if-eqz p1, :cond_10

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2211
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/OPCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    .line 2212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/OPCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz p1, :cond_11

    :cond_2
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2214
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/OPCallCardFragment;->mNoticeContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    if-eqz p3, :cond_4

    .line 2215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/OPCallCardFragment;->mNoticeContainer:Landroid/widget/LinearLayout;

    if-nez p1, :cond_12

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/incallui/OPCallCardFragment;->isCanShow:Z

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/incallui/OPCallCardFragment;->isVisibility:Z

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/incallui/OPCallCardFragment;->isDangerNoticeVisible:Z

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2217
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/OPCallCardFragment;->mType:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    if-eqz p3, :cond_6

    .line 2218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/OPCallCardFragment;->mType:Landroid/widget/TextView;

    if-eqz p1, :cond_13

    :cond_5
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2224
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/OPCallCardFragment;->mCallButtonsContainer:Landroid/view/View;

    if-eqz v1, :cond_8

    if-eqz p3, :cond_8

    .line 2225
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_8

    .line 2226
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 2227
    .local v23, "res":Landroid/content/res/Resources;
    const v1, 0x7f0b0293

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 2228
    .local v5, "callButtonsTransY":F
    const-string/jumbo v1, "CallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasNavBar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/incallui/OPCallCardFragment;->hasNavBar(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/incallui/OPCallCardFragment;->hasNavBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2230
    const v1, 0x7f0b0294

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 2232
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/OPCallCardFragment;->mCallButtonsContainer:Landroid/view/View;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/incallui/OPCallCardFragment;->animationTopView(Landroid/view/View;ZZFFF)V

    .line 2241
    .end local v5    # "callButtonsTransY":F
    .end local v23    # "res":Landroid/content/res/Resources;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_f

    .line 2242
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryNameContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_a

    if-eqz p3, :cond_a

    .line 2243
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0299

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 2244
    .local v10, "transYPrimaryName":F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/incallui/OPCallCardFragment;->isPrimaryCallActive:Z

    if-eqz v1, :cond_9

    .line 2245
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b029a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 2247
    :cond_9
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryNameContainer:Landroid/widget/LinearLayout;

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v6, p0

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-direct/range {v6 .. v12}, Lcom/android/incallui/OPCallCardFragment;->animationTopView(Landroid/view/View;ZZFFF)V

    .line 2249
    .end local v10    # "transYPrimaryName":F
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/OPCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_c

    if-eqz p3, :cond_c

    .line 2250
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b029d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    .line 2251
    .local v15, "transYPrimaryNumber":F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/incallui/OPCallCardFragment;->isPrimaryCallActive:Z

    if-eqz v1, :cond_b

    .line 2252
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b029e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    .line 2254
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/OPCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v11, p0

    move/from16 v13, p1

    move/from16 v14, p2

    invoke-direct/range {v11 .. v17}, Lcom/android/incallui/OPCallCardFragment;->animationTopView(Landroid/view/View;ZZFFF)V

    .line 2256
    .end local v15    # "transYPrimaryNumber":F
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/OPCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v1, :cond_d

    if-eqz p3, :cond_d

    .line 2257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/OPCallCardFragment;->mPhotoContainer:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, p0

    move/from16 v18, p1

    move/from16 v19, p2

    invoke-direct/range {v16 .. v22}, Lcom/android/incallui/OPCallCardFragment;->animationTopView(Landroid/view/View;ZZFFF)V

    .line 2259
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/OPCallCardFragment;->mCallStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    if-eqz p3, :cond_f

    .line 2260
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0295

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    .line 2261
    .local v20, "transYPrimary":F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/incallui/OPCallCardFragment;->isPrimaryCallActive:Z

    if-eqz v1, :cond_e

    .line 2262
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0296

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    .line 2264
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/OPCallCardFragment;->mCallStatus:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v16, p0

    move/from16 v18, p1

    move/from16 v19, p2

    invoke-direct/range {v16 .. v22}, Lcom/android/incallui/OPCallCardFragment;->animationTopView(Landroid/view/View;ZZFFF)V

    .line 2205
    .end local v20    # "transYPrimary":F
    :cond_f
    return-void

    .line 2209
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/incallui/OPCallCardFragment;->isVisibility:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/incallui/OPCallCardFragment;->isLocationVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2212
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/incallui/OPCallCardFragment;->isPhoneNumberVisible:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2215
    :cond_12
    const/16 v1, 0x8

    goto/16 :goto_2

    .line 2218
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/incallui/OPCallCardFragment;->isTyepVisible:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto/16 :goto_3
.end method

.method public updatePrimarYuloreInfo(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;)V
    .locals 10
    .param p1, "info"    # Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    .prologue
    const v9, 0x7f0d0324

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2071
    iget-object v5, p0, Lcom/android/incallui/OPCallCardFragment;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->number:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 2072
    .local v0, "isEmergency":Z
    invoke-direct {p0, v0}, Lcom/android/incallui/OPCallCardFragment;->updateSimIcon(Z)V

    .line 2073
    iget-object v5, p1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 2074
    iget-object v5, p1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v5, v8}, Lcom/android/incallui/OPCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 2075
    iget-object v3, p1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->number:Ljava/lang/String;

    .line 2076
    .local v3, "number":Ljava/lang/String;
    iget-object v5, p1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->numberDesc:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "null"

    iget-object v6, p1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->numberDesc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2079
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 2080
    invoke-virtual {p0, v3}, Lcom/android/incallui/OPCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 2081
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallCardPresenter;

    iget-object v6, p1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/incallui/CallCardPresenter;->updateEmergencyLocation(Ljava/lang/String;)V

    .line 2114
    .end local v3    # "number":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_e

    .line 2115
    iget-object v5, p1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_d

    .line 2116
    iget-object v5, p0, Lcom/android/incallui/OPCallCardFragment;->mPhoto:Lcom/android/incallui/oneplus/OPCircleImageView;

    iget-object v6, p1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->photo:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v5, v6, v7}, Lcom/android/incallui/OPCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 2126
    :cond_1
    :goto_2
    iget-boolean v5, p1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->highRisk:Z

    invoke-direct {p0, v5}, Lcom/android/incallui/OPCallCardFragment;->setDangerNoticeVisible(Z)V

    .line 2070
    return-void

    .line 2077
    .restart local v3    # "number":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->numberDesc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2083
    :cond_3
    iget-object v5, p1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->number:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/incallui/OPCallCardFragment;->getPhoneLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2084
    .local v1, "local":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/OPCallCardFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const-string/jumbo v1, ""

    .line 2085
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2086
    invoke-virtual {p0, v1}, Lcom/android/incallui/OPCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 2087
    invoke-virtual {p0, v3}, Lcom/android/incallui/OPCallCardFragment;->setLocation(Ljava/lang/String;)V

    goto :goto_1

    .line 2089
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/incallui/OPCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 2090
    const-string/jumbo v5, ""

    invoke-virtual {p0, v5}, Lcom/android/incallui/OPCallCardFragment;->setLocation(Ljava/lang/String;)V

    goto :goto_1

    .line 2094
    .end local v1    # "local":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    :cond_7
    if-eqz v0, :cond_9

    .line 2095
    iget-object v5, p0, Lcom/android/incallui/OPCallCardFragment;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_8

    .line 2096
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0404

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2097
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2, v8}, Lcom/android/incallui/OPCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 2098
    iget-object v5, p1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/incallui/OPCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 2100
    .end local v2    # "name":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallCardPresenter;

    iget-object v6, p1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/incallui/CallCardPresenter;->updateEmergencyLocation(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2102
    :cond_9
    iget-object v5, p1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v5, v7}, Lcom/android/incallui/OPCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 2103
    iget-object v5, p1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->number:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/incallui/OPCallCardFragment;->getPhoneLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2104
    .restart local v1    # "local":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/incallui/OPCallCardFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_a
    const-string/jumbo v1, ""

    .line 2105
    :cond_b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 2106
    invoke-virtual {p0, v1}, Lcom/android/incallui/OPCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 2107
    iget-object v5, p1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->flag:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/incallui/OPCallCardFragment;->setLocation(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2109
    :cond_c
    iget-object v5, p1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->flag:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/incallui/OPCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 2110
    const-string/jumbo v5, ""

    invoke-virtual {p0, v5}, Lcom/android/incallui/OPCallCardFragment;->setLocation(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2118
    .end local v1    # "local":Ljava/lang/String;
    :cond_d
    iget-object v5, p0, Lcom/android/incallui/OPCallCardFragment;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_1

    .line 2119
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020213

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2120
    .local v4, "photo":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/incallui/OPCallCardFragment;->mPhoto:Lcom/android/incallui/oneplus/OPCircleImageView;

    invoke-direct {p0, v5, v4, v7}, Lcom/android/incallui/OPCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_2

    .line 2124
    .end local v4    # "photo":Landroid/graphics/drawable/Drawable;
    :cond_e
    iget-object v5, p0, Lcom/android/incallui/OPCallCardFragment;->mPhoto:Lcom/android/incallui/oneplus/OPCircleImageView;

    iget-object v6, p1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->photo:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v5, v6, v7}, Lcom/android/incallui/OPCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_2
.end method

.method public updatePrimaryInfo(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p6, "isSipCall"    # Z
    .param p7, "isVoiceMail"    # Z
    .param p8, "isEmergency"    # Z

    .prologue
    .line 2144
    const-string/jumbo v1, "CallCardFragment"

    const-string/jumbo v2, "updatePrimaryInfo"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    invoke-direct {p0, p8}, Lcom/android/incallui/OPCallCardFragment;->updateSimIcon(Z)V

    .line 2146
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/OPCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 2147
    const-string/jumbo v1, ""

    invoke-direct {p0, v1}, Lcom/android/incallui/OPCallCardFragment;->setType(Ljava/lang/String;)V

    .line 2148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2149
    if-eqz p3, :cond_2

    .end local p2    # "name":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/incallui/OPCallCardFragment;->getPhoneLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2150
    .local v0, "local":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0324

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    .line 2151
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/OPCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 2155
    .end local v0    # "local":Ljava/lang/String;
    :goto_1
    if-eqz p8, :cond_4

    .line 2156
    invoke-virtual {p0}, Lcom/android/incallui/OPCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallCardPresenter;->updateEmergencyLocation(Ljava/lang/String;)V

    .line 2160
    :goto_2
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment;->mPhoto:Lcom/android/incallui/oneplus/OPCircleImageView;

    const/4 v2, 0x1

    invoke-direct {p0, v1, p5, v2}, Lcom/android/incallui/OPCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 2143
    return-void

    .restart local p2    # "name":Ljava/lang/String;
    :cond_2
    move-object p2, p1

    .line 2149
    goto :goto_0

    .line 2153
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/incallui/OPCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    goto :goto_1

    .line 2158
    .end local p2    # "name":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, ""

    invoke-virtual {p0, v1}, Lcom/android/incallui/OPCallCardFragment;->setLocation(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public updateVbByAudioMode(I)V
    .locals 0
    .param p1, "newMode"    # I

    .prologue
    .line 1962
    return-void
.end method

.method public updateViews()V
    .locals 17

    .prologue
    .line 2575
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/incallui/OPCallCardFragment;->isVisibility:Z

    .line 2576
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/incallui/OPCallCardFragment;->isButtonVisibility:Z

    .line 2577
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 2578
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2579
    .local v9, "metric":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2580
    iget v3, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2581
    .local v3, "densityDpi":I
    const-string/jumbo v14, "CallCardFragment"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "densityDpi: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2582
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/OPCallCardFragment;->hasNavBar(Landroid/content/Context;)Z

    move-result v4

    .line 2583
    .local v4, "hasNav":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 2584
    .local v2, "configs":Landroid/content/res/Configuration;
    const-string/jumbo v14, "CallCardFragment"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "screenHeightDp: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", hasNav: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2585
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    if-eqz v14, :cond_0

    .line 2586
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 2587
    .local v5, "height":I
    const-string/jumbo v14, "CallCardFragment"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "height: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2588
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 2589
    .local v10, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    check-cast v14, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v14}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b02c4

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v11, v14

    .line 2590
    .local v11, "paramsHeight":I
    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2591
    const-string/jumbo v14, "CallCardFragment"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "paramsHeight: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2592
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v14, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2594
    .end local v5    # "height":I
    .end local v10    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "paramsHeight":I
    :cond_0
    iget v14, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    const v15, 0x31380

    div-int/2addr v15, v3

    if-ge v14, v15, :cond_a

    .line 2595
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/incallui/OPCallCardFragment;->isVisibility:Z

    .line 2596
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v14, :cond_1

    .line 2597
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 2599
    :cond_1
    iget v14, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    const v15, 0x1a5e0

    div-int/2addr v15, v3

    if-ge v14, v15, :cond_6

    .line 2600
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/incallui/OPCallCardFragment;->isButtonVisibility:Z

    .line 2601
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mCallButtonsContainer:Landroid/view/View;

    if-eqz v14, :cond_2

    .line 2602
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mCallButtonsContainer:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 2604
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryNameContainer:Landroid/widget/LinearLayout;

    if-eqz v14, :cond_3

    .line 2605
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    check-cast v14, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v14}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b02a7

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v12, v14

    .line 2606
    .local v12, "top":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2607
    .local v7, "layoutParamsTop":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2608
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2610
    .end local v7    # "layoutParamsTop":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v12    # "top":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    if-eqz v14, :cond_5

    .line 2611
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    check-cast v14, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v14}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b02a3

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v1, v14

    .line 2612
    .local v1, "bottom":I
    if-eqz v4, :cond_4

    .line 2613
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    check-cast v14, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v14}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b02a4

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v1, v14

    .line 2615
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2616
    .local v6, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2617
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v14, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2574
    .end local v1    # "bottom":I
    .end local v2    # "configs":Landroid/content/res/Configuration;
    .end local v3    # "densityDpi":I
    .end local v4    # "hasNav":Z
    .end local v6    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v9    # "metric":Landroid/util/DisplayMetrics;
    :cond_5
    :goto_0
    return-void

    .line 2620
    .restart local v2    # "configs":Landroid/content/res/Configuration;
    .restart local v3    # "densityDpi":I
    .restart local v4    # "hasNav":Z
    .restart local v9    # "metric":Landroid/util/DisplayMetrics;
    :cond_6
    iget v14, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    const v15, 0x25800

    div-int/2addr v15, v3

    if-ge v14, v15, :cond_9

    .line 2621
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/incallui/OPCallCardFragment;->isButtonVisibility:Z

    .line 2622
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mCallButtonsContainer:Landroid/view/View;

    if-eqz v14, :cond_7

    .line 2623
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mCallButtonsContainer:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 2635
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    if-eqz v14, :cond_8

    .line 2636
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    check-cast v14, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v14}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b02a2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v1, v14

    .line 2637
    .restart local v1    # "bottom":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2638
    .restart local v6    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2639
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v14, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2641
    .end local v1    # "bottom":I
    .end local v6    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryNameContainer:Landroid/widget/LinearLayout;

    if-eqz v14, :cond_5

    .line 2642
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    check-cast v14, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v14}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b02a8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v12, v14

    .line 2643
    .restart local v12    # "top":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2644
    .restart local v7    # "layoutParamsTop":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2645
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2626
    .end local v7    # "layoutParamsTop":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v12    # "top":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mCallButtonsContainer:Landroid/view/View;

    if-eqz v14, :cond_7

    .line 2627
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mCallButtonsContainer:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 2628
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    check-cast v14, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v14}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b02a6

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v13, v14

    .line 2629
    .local v13, "topCallButton":I
    const-string/jumbo v14, "CallCardFragment"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "topCallButtonSplit: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mCallButtonsContainer:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2631
    .local v8, "layoutParamsTopCallButton":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v13, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2632
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mCallButtonsContainer:Landroid/view/View;

    invoke-virtual {v14, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 2649
    .end local v8    # "layoutParamsTopCallButton":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v13    # "topCallButton":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v14, :cond_b

    .line 2650
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 2652
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mCallButtonsContainer:Landroid/view/View;

    if-eqz v14, :cond_c

    .line 2653
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mCallButtonsContainer:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 2654
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    check-cast v14, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v14}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b02c5

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v13, v14

    .line 2655
    .restart local v13    # "topCallButton":I
    const-string/jumbo v14, "CallCardFragment"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "topCallButton: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2656
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mCallButtonsContainer:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2657
    .restart local v8    # "layoutParamsTopCallButton":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v13, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2658
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mCallButtonsContainer:Landroid/view/View;

    invoke-virtual {v14, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2660
    .end local v8    # "layoutParamsTopCallButton":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v13    # "topCallButton":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryNameContainer:Landroid/widget/LinearLayout;

    if-eqz v14, :cond_d

    .line 2661
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    check-cast v14, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v14}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b02c2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v12, v14

    .line 2662
    .restart local v12    # "top":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2663
    .restart local v7    # "layoutParamsTop":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2664
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mPrimaryNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2666
    .end local v7    # "layoutParamsTop":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v12    # "top":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    if-eqz v14, :cond_5

    .line 2667
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    check-cast v14, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v14}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b02a1

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v1, v14

    .line 2668
    .restart local v1    # "bottom":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2669
    .restart local v6    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2670
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/OPCallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v14, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public whenShowDialpad(ZZ)V
    .locals 3
    .param p1, "dialpad"    # Z
    .param p2, "anim"    # Z

    .prologue
    .line 2177
    const-string/jumbo v0, "CallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "whenShowDialpad dialpad = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    iput-boolean p1, p0, Lcom/android/incallui/OPCallCardFragment;->mDialpadShowing:Z

    .line 2179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/incallui/OPCallCardFragment;->setPrimaryAnimation(ZZZ)V

    .line 2176
    return-void
.end method
