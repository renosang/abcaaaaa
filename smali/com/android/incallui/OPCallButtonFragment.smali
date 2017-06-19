.class public Lcom/android/incallui/OPCallButtonFragment;
.super Lcom/android/incallui/BaseFragment;
.source "OPCallButtonFragment.java"

# interfaces
.implements Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/OPCallButtonFragment$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/CallButtonPresenter;",
        "Lcom/android/incallui/CallButtonPresenter$CallButtonUi;",
        ">;",
        "Lcom/android/incallui/CallButtonPresenter$CallButtonUi;",
        "Landroid/widget/PopupMenu$OnMenuItemClickListener;",
        "Landroid/widget/PopupMenu$OnDismissListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field isSupportRecorder:Z

.field public isVisibility:Z

.field private mAddCallButton:Landroid/widget/ImageButton;

.field private mAddParticipantButton:Landroid/widget/ImageButton;

.field private mAudioButton:Landroid/widget/CompoundButton;

.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private mButtonMaxVisible:I

.field private mButtonVisibilityMap:Landroid/util/SparseIntArray;

.field private mChangeToVideoButton:Landroid/widget/ImageButton;

.field private mHoldButton:Landroid/widget/CompoundButton;

.field private mIsEnabled:Z

.field private mManageVideoCallConferenceButton:Landroid/widget/ImageButton;

.field private mMergeButton:Landroid/widget/ImageButton;

.field private mMuteButton:Landroid/widget/CompoundButton;

.field private mOverflowButton:Landroid/widget/ImageButton;

.field private mOverflowPopup:Landroid/widget/PopupMenu;

.field private mPauseVideoButton:Landroid/widget/CompoundButton;

.field private mPrevAudioMode:I

.field private mRecordWaiting:Landroid/view/View;

.field private mRecordingButton:Landroid/widget/CompoundButton;

.field private mRecordingSelected:Z

.field private mShowDialpadButton:Landroid/widget/CompoundButton;

.field private mSwapButton:Landroid/widget/ImageButton;

.field private mSwitchCameraButton:Landroid/widget/CompoundButton;

.field private mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;


# direct methods
.method static synthetic -wrap0(Lcom/android/incallui/OPCallButtonFragment;I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/OPCallButtonFragment;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/incallui/OPCallButtonFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/OPCallButtonFragment;->dealWithRecordErrorChange()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/incallui/OPCallButtonFragment;I)V
    .locals 0
    .param p1, "recordState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/OPCallButtonFragment;->dealWithRecordStateChange(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/incallui/OPCallButtonFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/OPCallButtonFragment;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 92
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mButtonVisibilityMap:Landroid/util/SparseIntArray;

    .line 113
    iput v2, p0, Lcom/android/incallui/OPCallButtonFragment;->mPrevAudioMode:I

    .line 125
    iput-boolean v2, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordingSelected:Z

    .line 126
    invoke-static {}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isSupportCallRecorder()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/OPCallButtonFragment;->isSupportRecorder:Z

    .line 950
    new-instance v0, Lcom/android/incallui/OPCallButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/OPCallButtonFragment$1;-><init>(Lcom/android/incallui/OPCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;

    .line 1067
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/OPCallButtonFragment;->isVisibility:Z

    .line 59
    return-void
.end method

.method private addToOverflowMenu(ILandroid/view/View;Landroid/widget/PopupMenu;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "button"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    const/4 v2, 0x0

    .line 545
    if-nez p2, :cond_0

    return-void

    .line 546
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 547
    invoke-virtual {p3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v2, p1, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 548
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mButtonVisibilityMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 544
    return-void
.end method

.method private dealWithRecordErrorChange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1030
    const v0, 0x7f0201a0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/incallui/OPCallButtonFragment;->updateRecordView(IZZZ)V

    .line 1029
    return-void
.end method

.method private dealWithRecordStateChange(I)V
    .locals 5
    .param p1, "recordState"    # I

    .prologue
    .line 971
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dealWithRecordStateChange recordState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/OPCallButtonFragment;->log(Ljava/lang/String;)V

    .line 972
    const/4 v2, 0x0

    .line 973
    .local v2, "resid":I
    const/4 v0, 0x1

    .line 974
    .local v0, "isSelected":Z
    const/4 v1, 0x0

    .line 975
    .local v1, "isWaiting":Z
    packed-switch p1, :pswitch_data_0

    .line 993
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dealWithRecordStateChange error state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/OPCallButtonFragment;->log(Ljava/lang/String;)V

    .line 994
    const v2, 0x7f02019e

    .line 995
    const/4 v0, 0x0

    .line 998
    :goto_0
    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/android/incallui/OPCallButtonFragment;->updateRecordView(IZZZ)V

    .line 970
    return-void

    .line 977
    :pswitch_0
    const v2, 0x7f02019e

    .line 978
    const/4 v0, 0x0

    .line 979
    goto :goto_0

    .line 981
    :pswitch_1
    const v2, 0x7f0201a2

    .line 982
    const/4 v0, 0x1

    .line 983
    goto :goto_0

    .line 985
    :pswitch_2
    const v2, 0x7f02019e

    .line 986
    const/4 v0, 0x1

    .line 987
    goto :goto_0

    .line 989
    :pswitch_3
    const/4 v0, 0x1

    .line 990
    const/4 v1, 0x1

    .line 991
    goto :goto_0

    .line 975
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private dealWithRecorderSupport()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1057
    iget-object v4, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordingButton:Landroid/widget/CompoundButton;

    iget-boolean v0, p0, Lcom/android/incallui/OPCallButtonFragment;->isSupportRecorder:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 1058
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordWaiting:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/incallui/OPCallButtonFragment;->isSupportRecorder:Z

    if-eqz v4, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1059
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordWaiting:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    const/16 v2, 0xc

    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/OPCallButtonFragment;->showButton(IZ)V

    .line 1060
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordingButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    const/16 v0, 0xb

    invoke-virtual {p0, v0, v3}, Lcom/android/incallui/OPCallButtonFragment;->showButton(IZ)V

    .line 1056
    return-void

    :cond_1
    move v0, v2

    .line 1057
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1059
    goto :goto_1

    :cond_3
    move v3, v1

    .line 1060
    goto :goto_2
.end method

.method private getButtonById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 464
    if-nez p1, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    return-object v0

    .line 466
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    return-object v0

    .line 468
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    return-object v0

    .line 470
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 471
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    return-object v0

    .line 472
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 473
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    return-object v0

    .line 474
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 475
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mChangeToVideoButton:Landroid/widget/ImageButton;

    return-object v0

    .line 478
    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 479
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    return-object v0

    .line 480
    :cond_6
    const/4 v0, 0x7

    if-ne p1, v0, :cond_7

    .line 481
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    return-object v0

    .line 482
    :cond_7
    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    .line 483
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    return-object v0

    .line 484
    :cond_8
    const/16 v0, 0x9

    if-ne p1, v0, :cond_9

    .line 485
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    return-object v0

    .line 486
    :cond_9
    const/16 v0, 0xa

    if-ne p1, v0, :cond_a

    .line 487
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mManageVideoCallConferenceButton:Landroid/widget/ImageButton;

    return-object v0

    .line 497
    :cond_a
    const/16 v0, 0xb

    if-ne p1, v0, :cond_b

    .line 498
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordingButton:Landroid/widget/CompoundButton;

    return-object v0

    .line 499
    :cond_b
    const/16 v0, 0xc

    if-ne p1, v0, :cond_c

    .line 500
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordWaiting:Landroid/view/View;

    return-object v0

    .line 503
    :cond_c
    const-string/jumbo v0, "Invalid button id"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPopupMenu()Landroid/widget/PopupMenu;
    .locals 4

    .prologue
    .line 552
    new-instance v0, Landroid/widget/PopupMenu;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f08039b

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 553
    iget-object v2, p0, Lcom/android/incallui/OPCallButtonFragment;->mOverflowButton:Landroid/widget/ImageButton;

    .line 552
    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method

.method private isAudio(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupported(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1064
    const-string/jumbo v0, "OPCallButtonFragment"

    invoke-static {v0, p1}, Lcom/android/incallui/oneplus/record/OPRecordLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    return-void
.end method

.method private onAudioButtonClicked()V
    .locals 2

    .prologue
    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAudioButtonClicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 677
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 679
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/incallui/OPCallButtonFragment;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    invoke-direct {p0}, Lcom/android/incallui/OPCallButtonFragment;->showAudioModePopup()V

    .line 675
    :goto_0
    return-void

    .line 682
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->toggleSpeakerphone()V

    goto :goto_0
.end method

.method private onManageVideoCallConferenceClicked()V
    .locals 2

    .prologue
    .line 687
    const-string/jumbo v0, "onManageVideoCallConferenceClicked"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->showConferenceCallManager(Z)V

    .line 686
    return-void
.end method

.method private showAudioModePopup()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 847
    const-string/jumbo v7, "showAudioPopup()..."

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 850
    const v10, 0x7f08039b

    .line 849
    invoke-direct {v1, v7, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 851
    .local v1, "contextWrapper":Landroid/view/ContextThemeWrapper;
    new-instance v7, Landroid/widget/PopupMenu;

    iget-object v10, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-direct {v7, v1, v10}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 852
    iget-object v7, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    .line 853
    iget-object v10, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v10}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v10

    .line 852
    const v11, 0x7f110003

    invoke-virtual {v7, v11, v10}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 854
    iget-object v7, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 855
    iget-object v7, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 857
    iget-object v7, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 864
    .local v3, "menu":Landroid/view/Menu;
    const v7, 0x7f0e0237

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 865
    .local v4, "speakerItem":Landroid/view/MenuItem;
    const/16 v7, 0x8

    invoke-direct {p0, v7}, Lcom/android/incallui/OPCallButtonFragment;->isSupported(I)Z

    move-result v7

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 871
    const v7, 0x7f0e0238

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 872
    .local v2, "earpieceItem":Landroid/view/MenuItem;
    const v7, 0x7f0e0239

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 874
    .local v6, "wiredHeadsetItem":Landroid/view/MenuItem;
    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/android/incallui/OPCallButtonFragment;->isSupported(I)Z

    move-result v5

    .line 875
    .local v5, "usingHeadset":Z
    if-eqz v5, :cond_0

    move v7, v8

    :goto_0
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 876
    if-eqz v5, :cond_1

    :goto_1
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 877
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 878
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 883
    const v7, 0x7f0e023a

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 884
    .local v0, "bluetoothItem":Landroid/view/MenuItem;
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/android/incallui/OPCallButtonFragment;->isSupported(I)Z

    move-result v7

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 888
    iget-object v7, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V

    .line 893
    iput-boolean v9, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioModePopupVisible:Z

    .line 846
    return-void

    .end local v0    # "bluetoothItem":Landroid/view/MenuItem;
    :cond_0
    move v7, v9

    .line 875
    goto :goto_0

    :cond_1
    move v8, v9

    .line 876
    goto :goto_1
.end method

.method private updateAudioButtonContentDescription(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 818
    const/4 v0, 0x0

    .line 822
    .local v0, "stringId":I
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/incallui/OPCallButtonFragment;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 823
    const v0, 0x7f0d037c

    .line 841
    :goto_0
    if-eqz v0, :cond_0

    .line 842
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 817
    :cond_0
    return-void

    .line 825
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 827
    :pswitch_1
    const v0, 0x7f0d037d

    .line 828
    goto :goto_0

    .line 830
    :pswitch_2
    const v0, 0x7f0d037f

    .line 831
    goto :goto_0

    .line 833
    :pswitch_3
    const v0, 0x7f0d037e

    .line 834
    goto :goto_0

    .line 836
    :pswitch_4
    const v0, 0x7f0d037c

    .line 837
    goto :goto_0

    .line 825
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updateAudioButtons(I)V
    .locals 13
    .param p1, "supportedModes"    # I

    .prologue
    .line 714
    const/4 v11, 0x2

    invoke-direct {p0, v11}, Lcom/android/incallui/OPCallButtonFragment;->isSupported(I)Z

    move-result v2

    .line 715
    .local v2, "bluetoothSupported":Z
    const/16 v11, 0x8

    invoke-direct {p0, v11}, Lcom/android/incallui/OPCallButtonFragment;->isSupported(I)Z

    move-result v10

    .line 717
    .local v10, "speakerSupported":Z
    const/4 v1, 0x0

    .line 718
    .local v1, "audioButtonEnabled":Z
    const/4 v0, 0x0

    .line 719
    .local v0, "audioButtonChecked":Z
    const/4 v6, 0x0

    .line 721
    .local v6, "showMoreIndicator":Z
    const/4 v4, 0x0

    .line 722
    .local v4, "showBluetoothIcon":Z
    const/4 v8, 0x0

    .line 723
    .local v8, "showSpeakerphoneIcon":Z
    const/4 v5, 0x0

    .line 724
    .local v5, "showHandsetIcon":Z
    const/4 v7, 0x0

    .line 726
    .local v7, "showSpeakerIcon":Z
    const/4 v9, 0x0

    .line 728
    .local v9, "showToggleIndicator":Z
    if-eqz v2, :cond_2

    .line 729
    const-string/jumbo v11, "updateAudioButtons - popup menu mode"

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 731
    const/4 v1, 0x1

    .line 732
    const/4 v0, 0x1

    .line 733
    const/4 v6, 0x1

    .line 736
    const/4 v11, 0x2

    invoke-direct {p0, v11}, Lcom/android/incallui/OPCallButtonFragment;->isAudio(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 737
    const/4 v4, 0x1

    .line 750
    :goto_0
    iget-object v11, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 780
    .end local v0    # "audioButtonChecked":Z
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "audioButtonEnabled: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 781
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "audioButtonChecked: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 782
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "showMoreIndicator: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 783
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "showBluetoothIcon: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 784
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "showSpeakerphoneIcon: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "showHandsetIcon: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 788
    iget-object v12, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_4

    iget-boolean v11, p0, Lcom/android/incallui/OPCallButtonFragment;->mIsEnabled:Z

    :goto_2
    invoke-virtual {v12, v11}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 789
    iget-object v11, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v11, v0}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 791
    iget-object v11, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v11}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 792
    .local v3, "layers":Landroid/graphics/drawable/LayerDrawable;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\'layers\' drawable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 797
    const v11, 0x7f0e021f

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 798
    if-eqz v6, :cond_5

    const/16 v11, 0xff

    .line 797
    :goto_3
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 800
    const v11, 0x7f0e0220

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 801
    if-eqz v4, :cond_6

    const/16 v11, 0xff

    .line 800
    :goto_4
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 803
    const v11, 0x7f0e0221

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 804
    if-eqz v5, :cond_7

    const/16 v11, 0xff

    .line 803
    :goto_5
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 806
    const v11, 0x7f0e0222

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 807
    if-eqz v8, :cond_8

    const/16 v11, 0xff

    .line 806
    :goto_6
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 809
    const v11, 0x7f0e0225

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 810
    if-eqz v7, :cond_9

    const/16 v11, 0xff

    .line 809
    :goto_7
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 713
    return-void

    .line 738
    .end local v3    # "layers":Landroid/graphics/drawable/LayerDrawable;
    .restart local v0    # "audioButtonChecked":Z
    :cond_0
    const/16 v11, 0x8

    invoke-direct {p0, v11}, Lcom/android/incallui/OPCallButtonFragment;->isAudio(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 740
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 742
    :cond_1
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 751
    :cond_2
    if-eqz v10, :cond_3

    .line 752
    const-string/jumbo v11, "updateAudioButtons - speaker toggle mode"

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 754
    const/4 v1, 0x1

    .line 758
    const/16 v11, 0x8

    invoke-direct {p0, v11}, Lcom/android/incallui/OPCallButtonFragment;->isAudio(I)Z

    move-result v0

    .line 759
    .local v0, "audioButtonChecked":Z
    iget-object v11, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v11, v0}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 762
    const/4 v9, 0x1

    .line 763
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 765
    .local v0, "audioButtonChecked":Z
    :cond_3
    const-string/jumbo v11, "updateAudioButtons - disabled..."

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 769
    const/4 v1, 0x0

    .line 770
    const/4 v0, 0x0

    .line 771
    iget-object v11, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 774
    const/4 v9, 0x1

    .line 775
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 788
    .end local v0    # "audioButtonChecked":Z
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 798
    .restart local v3    # "layers":Landroid/graphics/drawable/LayerDrawable;
    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    .line 801
    :cond_6
    const/4 v11, 0x0

    goto :goto_4

    .line 804
    :cond_7
    const/4 v11, 0x0

    goto :goto_5

    .line 807
    :cond_8
    const/4 v11, 0x0

    goto :goto_6

    .line 810
    :cond_9
    const/4 v11, 0x0

    goto :goto_7
.end method

.method private updateRecordMenu()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method private updateRecordView(IZZZ)V
    .locals 5
    .param p1, "resId"    # I
    .param p2, "isSelected"    # Z
    .param p3, "isEnabled"    # Z
    .param p4, "isWaiting"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRecordView "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " isSelected:  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "   isEnabled: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/OPCallButtonFragment;->log(Ljava/lang/String;)V

    .line 1003
    iget-boolean v0, p0, Lcom/android/incallui/OPCallButtonFragment;->isSupportRecorder:Z

    if-nez v0, :cond_0

    .line 1004
    invoke-direct {p0}, Lcom/android/incallui/OPCallButtonFragment;->dealWithRecorderSupport()V

    .line 1005
    return-void

    .line 1007
    :cond_0
    if-eqz p4, :cond_2

    .line 1008
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordingButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordWaiting:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordingButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 1010
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordWaiting:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1025
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordWaiting:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    const/16 v3, 0xc

    invoke-virtual {p0, v3, v0}, Lcom/android/incallui/OPCallButtonFragment;->showButton(IZ)V

    .line 1026
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordingButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    :goto_2
    const/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/OPCallButtonFragment;->showButton(IZ)V

    .line 1001
    return-void

    .line 1013
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordWaiting:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1014
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordWaiting:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1016
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordingButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 1017
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordingButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setBackgroundResource(I)V

    .line 1018
    if-eqz p2, :cond_4

    .line 1019
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordingButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 1021
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordingButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 1022
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordingButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 1025
    goto :goto_1

    :cond_6
    move v1, v2

    .line 1026
    goto :goto_2
.end method


# virtual methods
.method public createPresenter()Lcom/android/incallui/CallButtonPresenter;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallButtonPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->createPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    return-object v0
.end method

.method public displayDialpad(ZZ)V
    .locals 4
    .param p1, "value"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 906
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_0

    .line 907
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, p1, p2}, Lcom/android/incallui/InCallActivity;->showDialpadFragment(ZZ)Z

    move-result v0

    .line 908
    .local v0, "changed":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    if-eqz v0, :cond_0

    .line 910
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 911
    iget-object v2, p0, Lcom/android/incallui/OPCallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 912
    if-eqz p1, :cond_1

    const v1, 0x7f0d03cc

    .line 911
    :goto_0
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 905
    .end local v0    # "changed":Z
    :cond_0
    return-void

    .line 913
    .restart local v0    # "changed":Z
    :cond_1
    const v1, 0x7f0d03cd

    goto :goto_0
.end method

.method public enableAddParticipant(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 530
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mAddParticipantButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 529
    return-void

    .line 530
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 928
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getDialpadVisibility()Z
    .locals 2

    .prologue
    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/OPCallButtonFragment;->isVisibility:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1072
    iget-boolean v0, p0, Lcom/android/incallui/OPCallButtonFragment;->isVisibility:Z

    return v0
.end method

.method public getUi()Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    .locals 0

    .prologue
    .line 137
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getUi()Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    move-result-object v0

    return-object v0
.end method

.method public initViews(Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 163
    const v0, 0x7f0e01aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordingButton:Landroid/widget/CompoundButton;

    .line 164
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordingButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v0, 0x7f0e01ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordWaiting:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordWaiting:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-static {}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isSupportCallRecorder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordWaiting:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordingButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 175
    :cond_0
    const v0, 0x7f0e00b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    .line 176
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const v0, 0x7f0e00b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    .line 178
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const v0, 0x7f0e00b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    .line 180
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v0, 0x7f0e00b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    .line 182
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v0, 0x7f0e00b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    .line 184
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v0, 0x7f0e00b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mChangeToVideoButton:Landroid/widget/ImageButton;

    .line 187
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mChangeToVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const v0, 0x7f0e00b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    .line 190
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    const v0, 0x7f0e00b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    .line 192
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v0, 0x7f0e00ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    .line 194
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    const v0, 0x7f0e00b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    .line 196
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const v0, 0x7f0e00bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mAddParticipantButton:Landroid/widget/ImageButton;

    .line 198
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mAddParticipantButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const v0, 0x7f0e00c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mOverflowButton:Landroid/widget/ImageButton;

    .line 200
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const v0, 0x7f0e00c1

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mManageVideoCallConferenceButton:Landroid/widget/ImageButton;

    .line 203
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mManageVideoCallConferenceButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->updateViews()V

    .line 162
    return-void
.end method

.method public isDialpadVisible()Z
    .locals 1

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 921
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    return v0

    .line 923
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/OPCallButtonFragment;->updateAudioButtons(I)V

    .line 209
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 229
    .local v0, "id":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClick(View "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ")..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    const v1, 0x7f0e00b0

    if-ne v0, v1, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/android/incallui/OPCallButtonFragment;->onAudioButtonClicked()V

    .line 293
    :cond_0
    :goto_0
    const/4 v1, 0x2

    .line 291
    invoke-virtual {p1, v3, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 227
    return-void

    .line 233
    :cond_1
    const v1, 0x7f0e00b9

    if-ne v0, v1, :cond_2

    .line 234
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->addCallClicked()V

    goto :goto_0

    .line 235
    :cond_2
    const v1, 0x7f0e00b1

    if-ne v0, v1, :cond_4

    .line 236
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    iget-object v4, p0, Lcom/android/incallui/OPCallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    .line 237
    :cond_4
    const v1, 0x7f0e00ba

    if-ne v0, v1, :cond_5

    .line 238
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->mergeClicked()V

    .line 239
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 240
    :cond_5
    const v1, 0x7f0e00b3

    if-ne v0, v1, :cond_7

    .line 241
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    iget-object v4, p0, Lcom/android/incallui/OPCallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->holdClicked(Z)V

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_2

    .line 242
    :cond_7
    const v1, 0x7f0e00b4

    if-ne v0, v1, :cond_8

    .line 243
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->swapClicked()V

    goto :goto_0

    .line 244
    :cond_8
    const v1, 0x7f0e00b2

    if-ne v0, v1, :cond_a

    .line 245
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    iget-object v4, p0, Lcom/android/incallui/OPCallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    goto :goto_0

    :cond_9
    move v2, v3

    goto :goto_3

    .line 246
    :cond_a
    const v1, 0x7f0e00bb

    if-ne v0, v1, :cond_b

    .line 247
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->addParticipantClicked()V

    goto/16 :goto_0

    .line 248
    :cond_b
    const v1, 0x7f0e00b5

    if-ne v0, v1, :cond_c

    .line 249
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->changeToVideoClicked()V

    goto/16 :goto_0

    .line 252
    :cond_c
    const v1, 0x7f0e00b6

    if-ne v0, v1, :cond_d

    .line 253
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    .line 254
    iget-object v2, p0, Lcom/android/incallui/OPCallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v2

    .line 253
    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->switchCameraClicked(Z)V

    goto/16 :goto_0

    .line 255
    :cond_d
    const v1, 0x7f0e00b7

    if-ne v0, v1, :cond_f

    .line 256
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    .line 257
    iget-object v4, p0, Lcom/android/incallui/OPCallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 256
    :goto_4
    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->pauseVideoClicked(Z)V

    goto/16 :goto_0

    :cond_e
    move v2, v3

    .line 257
    goto :goto_4

    .line 264
    :cond_f
    const v1, 0x7f0e00c0

    if-ne v0, v1, :cond_10

    .line 265
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mOverflowPopup:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/android/incallui/OPCallButtonFragment;->updateRecordMenu()V

    .line 267
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mOverflowPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    .line 269
    :cond_10
    const v1, 0x7f0e00c1

    if-ne v0, v1, :cond_11

    .line 270
    invoke-direct {p0}, Lcom/android/incallui/OPCallButtonFragment;->onManageVideoCallConferenceClicked()V

    goto/16 :goto_0

    .line 280
    :cond_11
    const v1, 0x7f0e01ab

    if-ne v0, v1, :cond_12

    .line 281
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->startOrPauseRecording(Z)V

    goto/16 :goto_0

    .line 282
    :cond_12
    const v1, 0x7f0e01aa

    if-ne v0, v1, :cond_13

    .line 283
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->startOrPauseRecording(Z)V

    goto/16 :goto_0

    .line 287
    :cond_13
    const-string/jumbo v1, "onClick: unexpected"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mButtonVisibilityMap:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mButtonMaxVisible:I

    .line 141
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    const v1, 0x7f0400bd

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 156
    .local v0, "parent":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/incallui/OPCallButtonFragment;->initViews(Landroid/view/View;)V

    .line 158
    return-object v0
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "- onDismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioModePopupVisible:Z

    .line 668
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/OPCallButtonFragment;->updateAudioButtons(I)V

    .line 665
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "- onMenuItemClick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  title: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    const/4 v0, 0x5

    .line 640
    .local v0, "mode":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 642
    .local v1, "resId":I
    const v2, 0x7f0e0237

    if-ne v1, v2, :cond_0

    .line 643
    const/16 v0, 0x8

    .line 655
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2, v0}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    .line 657
    const/4 v2, 0x1

    return v2

    .line 644
    :cond_0
    const v2, 0x7f0e0238

    if-eq v1, v2, :cond_1

    const v2, 0x7f0e0239

    if-ne v1, v2, :cond_2

    .line 647
    :cond_1
    const/4 v0, 0x5

    .line 644
    goto :goto_0

    .line 648
    :cond_2
    const v2, 0x7f0e023a

    if-ne v1, v2, :cond_3

    .line 649
    const/4 v0, 0x2

    goto :goto_0

    .line 651
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMenuItemClick:  unexpected View ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 652
    const-string/jumbo v3, " (MenuItem = \'"

    .line 651
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 652
    const-string/jumbo v3, "\')"

    .line 651
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->refreshMuteState()V

    .line 221
    :cond_0
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    .line 217
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 934
    const-string/jumbo v0, " onStart"

    invoke-direct {p0, v0}, Lcom/android/incallui/OPCallButtonFragment;->log(Ljava/lang/String;)V

    .line 935
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onStart()V

    .line 936
    invoke-static {}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isSupportCallRecorder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/OPCallButtonFragment;->mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/CallButtonPresenter;->addUpdateListener(Landroid/content/Context;Lcom/android/incallui/oneplus/record/OPUpdater;)V

    .line 933
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 943
    const-string/jumbo v0, " onStop"

    invoke-direct {p0, v0}, Lcom/android/incallui/OPCallButtonFragment;->log(Ljava/lang/String;)V

    .line 944
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onStop()V

    .line 945
    invoke-static {}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isSupportCallRecorder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/CallButtonPresenter;->addUpdateListener(Landroid/content/Context;Lcom/android/incallui/oneplus/record/OPUpdater;)V

    .line 942
    :cond_0
    return-void
.end method

.method public refreshAudioModePopup()V
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioModePopupVisible:Z

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 705
    invoke-direct {p0}, Lcom/android/incallui/OPCallButtonFragment;->showAudioModePopup()V

    .line 700
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1034
    const-string/jumbo v0, "OPCallButtonFragment"

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    invoke-static {}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isSupportCallRecorder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordingButton:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 1040
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordWaiting:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1041
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 1042
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1043
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1044
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1033
    return-void

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordingButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setAudio(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/OPCallButtonFragment;->updateAudioButtons(I)V

    .line 619
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->refreshAudioModePopup()V

    .line 621
    iget v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mPrevAudioMode:I

    if-eq v0, p1, :cond_0

    .line 622
    invoke-direct {p0, p1}, Lcom/android/incallui/OPCallButtonFragment;->updateAudioButtonContentDescription(I)V

    .line 623
    iput p1, p0, Lcom/android/incallui/OPCallButtonFragment;->mPrevAudioMode:I

    .line 617
    :cond_0
    return-void
.end method

.method public setCameraSwitched(Z)V
    .locals 1
    .param p1, "isBackFacingCamera"    # Z

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 520
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 423
    iput-boolean p1, p0, Lcom/android/incallui/OPCallButtonFragment;->mIsEnabled:Z

    .line 425
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 426
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 427
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 428
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 429
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 430
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mChangeToVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 431
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 432
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 433
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 434
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 435
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 436
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mManageVideoCallConferenceButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 437
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mAddParticipantButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 440
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mRecordingButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 441
    if-eqz p1, :cond_0

    .line 442
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    .line 443
    .local v0, "muteState":Z
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 444
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 422
    .end local v0    # "muteState":Z
    :cond_0
    return-void
.end method

.method public setHold(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isSelected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 513
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 514
    if-eqz p1, :cond_1

    const v0, 0x7f0d03ca

    .line 513
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 509
    :cond_0
    return-void

    .line 515
    :cond_1
    const v0, 0x7f0d03c9

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isSelected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 538
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 539
    if-eqz p1, :cond_1

    const v0, 0x7f0d03cf

    .line 538
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 534
    :cond_0
    return-void

    .line 540
    :cond_1
    const v0, 0x7f0d03ce

    goto :goto_0
.end method

.method public setRecorderSupport(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 1049
    iput-boolean p1, p0, Lcom/android/incallui/OPCallButtonFragment;->isSupportRecorder:Z

    .line 1050
    invoke-direct {p0}, Lcom/android/incallui/OPCallButtonFragment;->dealWithRecorderSupport()V

    .line 1051
    iget-boolean v0, p0, Lcom/android/incallui/OPCallButtonFragment;->isSupportRecorder:Z

    if-nez v0, :cond_0

    .line 1052
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/CallButtonPresenter;->addUpdateListener(Landroid/content/Context;Lcom/android/incallui/oneplus/record/OPUpdater;)V

    .line 1048
    :cond_0
    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0
    .param p1, "modeMask"    # I

    .prologue
    .line 629
    invoke-direct {p0, p1}, Lcom/android/incallui/OPCallButtonFragment;->updateAudioButtons(I)V

    .line 630
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->refreshAudioModePopup()V

    .line 628
    return-void
.end method

.method public setVideoPaused(Z)V
    .locals 1
    .param p1, "isPaused"    # Z

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 525
    return-void
.end method

.method public showButton(IZ)V
    .locals 2
    .param p1, "buttonId"    # I
    .param p2, "show"    # Z

    .prologue
    .line 452
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mButtonVisibilityMap:Landroid/util/SparseIntArray;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 451
    return-void

    .line 452
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public updateButtonStates()V
    .locals 10

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 563
    const/4 v3, 0x0

    .line 564
    .local v3, "prevVisibleButton":Landroid/view/View;
    const/4 v4, -0x1

    .line 565
    .local v4, "prevVisibleId":I
    const/4 v2, 0x0

    .line 566
    .local v2, "menu":Landroid/widget/PopupMenu;
    const/4 v6, 0x0

    .line 567
    .local v6, "visibleCount":I
    const/4 v1, 0x0

    .end local v2    # "menu":Landroid/widget/PopupMenu;
    .end local v3    # "prevVisibleButton":Landroid/view/View;
    .local v1, "i":I
    :goto_0
    const/16 v9, 0xd

    if-ge v1, v9, :cond_6

    .line 568
    iget-object v9, p0, Lcom/android/incallui/OPCallButtonFragment;->mButtonVisibilityMap:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 569
    .local v5, "visibility":I
    invoke-direct {p0, v1}, Lcom/android/incallui/OPCallButtonFragment;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    .line 570
    .local v0, "button":Landroid/view/View;
    if-nez v0, :cond_1

    .line 567
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 571
    :cond_1
    const/4 v9, 0x1

    if-ne v5, v9, :cond_5

    .line 572
    add-int/lit8 v6, v6, 0x1

    .line 573
    iget v9, p0, Lcom/android/incallui/OPCallButtonFragment;->mButtonMaxVisible:I

    if-gt v6, v9, :cond_2

    .line 574
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 575
    move-object v3, v0

    .line 576
    .local v3, "prevVisibleButton":Landroid/view/View;
    move v4, v1

    goto :goto_1

    .line 578
    .end local v3    # "prevVisibleButton":Landroid/view/View;
    :cond_2
    if-nez v2, :cond_3

    .line 579
    invoke-direct {p0}, Lcom/android/incallui/OPCallButtonFragment;->getPopupMenu()Landroid/widget/PopupMenu;

    move-result-object v2

    .line 584
    :cond_3
    if-eqz v3, :cond_4

    .line 585
    invoke-direct {p0, v4, v3, v2}, Lcom/android/incallui/OPCallButtonFragment;->addToOverflowMenu(ILandroid/view/View;Landroid/widget/PopupMenu;)V

    .line 586
    const/4 v3, 0x0

    .line 587
    .local v3, "prevVisibleButton":Landroid/view/View;
    const/4 v4, -0x1

    .line 589
    .end local v3    # "prevVisibleButton":Landroid/view/View;
    :cond_4
    invoke-direct {p0, v1, v0, v2}, Lcom/android/incallui/OPCallButtonFragment;->addToOverflowMenu(ILandroid/view/View;Landroid/widget/PopupMenu;)V

    goto :goto_1

    .line 591
    :cond_5
    const/4 v9, 0x2

    if-ne v5, v9, :cond_0

    .line 592
    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 597
    .end local v0    # "button":Landroid/view/View;
    .end local v5    # "visibility":I
    :cond_6
    iget-object v9, p0, Lcom/android/incallui/OPCallButtonFragment;->mOverflowButton:Landroid/widget/ImageButton;

    if-eqz v9, :cond_7

    .line 598
    iget-object v9, p0, Lcom/android/incallui/OPCallButtonFragment;->mOverflowButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_9

    :goto_2
    invoke-virtual {v9, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 600
    :cond_7
    if-eqz v2, :cond_8

    .line 601
    iput-object v2, p0, Lcom/android/incallui/OPCallButtonFragment;->mOverflowPopup:Landroid/widget/PopupMenu;

    .line 602
    iget-object v7, p0, Lcom/android/incallui/OPCallButtonFragment;->mOverflowPopup:Landroid/widget/PopupMenu;

    new-instance v8, Lcom/android/incallui/OPCallButtonFragment$2;

    invoke-direct {v8, p0}, Lcom/android/incallui/OPCallButtonFragment$2;-><init>(Lcom/android/incallui/OPCallButtonFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 562
    :cond_8
    return-void

    :cond_9
    move v7, v8

    .line 598
    goto :goto_2
.end method

.method public updateColors()V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method public updateViews()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1076
    iput-boolean v4, p0, Lcom/android/incallui/OPCallButtonFragment;->isVisibility:Z

    .line 1077
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1078
    invoke-virtual {p0}, Lcom/android/incallui/OPCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1079
    .local v0, "configs":Landroid/content/res/Configuration;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screenHeightDp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1080
    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    const/16 v2, 0x1c2

    if-ge v1, v2, :cond_1

    .line 1081
    iput-boolean v3, p0, Lcom/android/incallui/OPCallButtonFragment;->isVisibility:Z

    .line 1082
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_0

    .line 1083
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 1075
    .end local v0    # "configs":Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return-void

    .line 1086
    .restart local v0    # "configs":Landroid/content/res/Configuration;
    :cond_1
    iput-boolean v4, p0, Lcom/android/incallui/OPCallButtonFragment;->isVisibility:Z

    .line 1087
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_0

    .line 1088
    iget-object v1, p0, Lcom/android/incallui/OPCallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_0
.end method
