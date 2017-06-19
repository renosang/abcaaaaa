.class public Lcom/android/incallui/CallButtonFragment;
.super Lcom/android/incallui/BaseFragment;
.source "CallButtonFragment.java"

# interfaces
.implements Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# annotations
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
.field private mAddCallButton:Landroid/widget/ImageButton;

.field private mAddParticipantButton:Landroid/widget/ImageButton;

.field private mAssuredTransferButton:Landroid/widget/ImageButton;

.field private mAudioButton:Landroid/widget/CompoundButton;

.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private mBlindTransferButton:Landroid/widget/ImageButton;

.field private mButtonMaxVisible:I

.field private mButtonVisibilityMap:Landroid/util/SparseIntArray;

.field private mChangeToVideoButton:Landroid/widget/ImageButton;

.field private mChangeToVoiceButton:Landroid/widget/ImageButton;

.field private mConsultativeTransferButton:Landroid/widget/ImageButton;

.field private mCurrentThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

.field private mHoldButton:Landroid/widget/CompoundButton;

.field private mIsEnabled:Z

.field private mManageVideoCallConferenceButton:Landroid/widget/ImageButton;

.field private mMergeButton:Landroid/widget/ImageButton;

.field private mMuteButton:Landroid/widget/CompoundButton;

.field private mOverflowButton:Landroid/widget/ImageButton;

.field private mOverflowPopup:Landroid/widget/PopupMenu;

.field private mPauseVideoButton:Landroid/widget/CompoundButton;

.field private mPrevAudioMode:I

.field private mRecordButton:Landroid/widget/ImageButton;

.field private mShowDialpadButton:Landroid/widget/CompoundButton;

.field private mSwapButton:Landroid/widget/ImageButton;

.field private mSwitchCameraButton:Landroid/widget/CompoundButton;


# direct methods
.method static synthetic -wrap0(Lcom/android/incallui/CallButtonFragment;I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 104
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mButtonVisibilityMap:Landroid/util/SparseIntArray;

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/CallButtonFragment;->mPrevAudioMode:I

    .line 69
    return-void
.end method

.method private addFocused(Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "drawable"    # Landroid/graphics/drawable/StateListDrawable;

    .prologue
    .line 390
    const/4 v2, 0x1

    new-array v0, v2, [I

    const v2, 0x101009c

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 391
    .local v0, "focused":[I
    const v2, 0x7f0200a9

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 392
    .local v1, "focusedDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 389
    return-void
.end method

.method private addSelected(Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "drawable"    # Landroid/graphics/drawable/StateListDrawable;
    .param p3, "palette"    # Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    .prologue
    const/4 v3, 0x0

    .line 397
    const/4 v2, 0x1

    new-array v0, v2, [I

    const v2, 0x10100a1

    aput v2, v0, v3

    .line 398
    .local v0, "selected":[I
    const v2, 0x7f02008b

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 399
    .local v1, "selectedDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iget v3, p3, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 400
    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 396
    return-void
.end method

.method private addSelectedAndFocused(Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "drawable"    # Landroid/graphics/drawable/StateListDrawable;

    .prologue
    .line 383
    const v2, 0x10100a1

    const v3, 0x101009c

    filled-new-array {v2, v3}, [I

    move-result-object v0

    .line 384
    .local v0, "selectedAndFocused":[I
    const v2, 0x7f02008c

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 385
    .local v1, "selectedAndFocusedDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 382
    return-void
.end method

.method private addToOverflowMenu(ILandroid/view/View;Landroid/widget/PopupMenu;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "button"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    const/4 v2, 0x0

    .line 522
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 523
    invoke-virtual {p3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v2, p1, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 524
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mButtonVisibilityMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 521
    return-void
.end method

.method private addUnselected(Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "drawable"    # Landroid/graphics/drawable/StateListDrawable;
    .param p3, "palette"    # Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    .prologue
    const/4 v3, 0x0

    .line 406
    const v1, 0x7f0200a8

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 407
    .local v0, "unselectedDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    iget v2, p3, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 408
    new-array v1, v3, [I

    invoke-virtual {p2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 404
    return-void
.end method

.method private backgroundDrawable(Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)Landroid/graphics/drawable/RippleDrawable;
    .locals 5
    .param p1, "palette"    # Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 372
    .local v0, "res":Landroid/content/res/Resources;
    const v3, 0x7f0a0378

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 374
    .local v1, "rippleColor":Landroid/content/res/ColorStateList;
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 375
    .local v2, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-direct {p0, v0, v2}, Lcom/android/incallui/CallButtonFragment;->addFocused(Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;)V

    .line 376
    invoke-direct {p0, v0, v2, p1}, Lcom/android/incallui/CallButtonFragment;->addUnselected(Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V

    .line 378
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v3
.end method

.method private compoundBackgroundDrawable(Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)Landroid/graphics/drawable/RippleDrawable;
    .locals 5
    .param p1, "palette"    # Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 354
    .local v0, "res":Landroid/content/res/Resources;
    const v3, 0x7f0a0378

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 356
    .local v1, "rippleColor":Landroid/content/res/ColorStateList;
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 357
    .local v2, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-direct {p0, v0, v2}, Lcom/android/incallui/CallButtonFragment;->addSelectedAndFocused(Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;)V

    .line 358
    invoke-direct {p0, v0, v2}, Lcom/android/incallui/CallButtonFragment;->addFocused(Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;)V

    .line 359
    invoke-direct {p0, v0, v2, p1}, Lcom/android/incallui/CallButtonFragment;->addSelected(Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V

    .line 360
    invoke-direct {p0, v0, v2, p1}, Lcom/android/incallui/CallButtonFragment;->addUnselected(Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V

    .line 362
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v3
.end method

.method private getButtonById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 449
    if-nez p1, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    return-object v0

    .line 451
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    return-object v0

    .line 453
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 454
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    return-object v0

    .line 455
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 456
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    return-object v0

    .line 457
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 458
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    return-object v0

    .line 459
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 460
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVideoButton:Landroid/widget/ImageButton;

    return-object v0

    .line 461
    :cond_5
    const/4 v0, 0x7

    if-ne p1, v0, :cond_6

    .line 462
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVoiceButton:Landroid/widget/ImageButton;

    return-object v0

    .line 463
    :cond_6
    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    .line 464
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    return-object v0

    .line 465
    :cond_7
    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    .line 466
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    return-object v0

    .line 467
    :cond_8
    const/16 v0, 0x9

    if-ne p1, v0, :cond_9

    .line 468
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    return-object v0

    .line 469
    :cond_9
    const/16 v0, 0xa

    if-ne p1, v0, :cond_a

    .line 470
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    return-object v0

    .line 471
    :cond_a
    const/16 v0, 0xb

    if-ne p1, v0, :cond_b

    .line 472
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mManageVideoCallConferenceButton:Landroid/widget/ImageButton;

    return-object v0

    .line 473
    :cond_b
    const/16 v0, 0xc

    if-ne p1, v0, :cond_c

    .line 474
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mBlindTransferButton:Landroid/widget/ImageButton;

    return-object v0

    .line 475
    :cond_c
    const/16 v0, 0xd

    if-ne p1, v0, :cond_d

    .line 476
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAssuredTransferButton:Landroid/widget/ImageButton;

    return-object v0

    .line 477
    :cond_d
    const/16 v0, 0xe

    if-ne p1, v0, :cond_e

    .line 478
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mConsultativeTransferButton:Landroid/widget/ImageButton;

    return-object v0

    .line 479
    :cond_e
    const/16 v0, 0xf

    if-ne p1, v0, :cond_f

    .line 480
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/ImageButton;

    return-object v0

    .line 482
    :cond_f
    const-string/jumbo v0, "Invalid button id"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPopupMenu()Landroid/widget/PopupMenu;
    .locals 4

    .prologue
    .line 528
    new-instance v0, Landroid/widget/PopupMenu;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f08039b

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 529
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowButton:Landroid/widget/ImageButton;

    .line 528
    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method

.method private isAudio(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

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
    .line 861
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

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

.method private onAudioButtonClicked()V
    .locals 2

    .prologue
    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAudioButtonClicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 646
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->showAudioModePopup()V

    .line 644
    :goto_0
    return-void

    .line 651
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->toggleSpeakerphone()V

    goto :goto_0
.end method

.method private onManageVideoCallConferenceClicked()V
    .locals 2

    .prologue
    .line 656
    const-string/jumbo v0, "onManageVideoCallConferenceClicked"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->showConferenceCallManager(Z)V

    .line 655
    return-void
.end method

.method private showAudioModePopup()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 811
    const-string/jumbo v7, "showAudioPopup()..."

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 813
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 814
    const v10, 0x7f08039b

    .line 813
    invoke-direct {v1, v7, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 815
    .local v1, "contextWrapper":Landroid/view/ContextThemeWrapper;
    new-instance v7, Landroid/widget/PopupMenu;

    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-direct {v7, v1, v10}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 816
    iget-object v7, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    .line 817
    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v10}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v10

    .line 816
    const v11, 0x7f110003

    invoke-virtual {v7, v11, v10}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 818
    iget-object v7, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 819
    iget-object v7, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 821
    iget-object v7, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 828
    .local v3, "menu":Landroid/view/Menu;
    const v7, 0x7f0e0237

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 829
    .local v4, "speakerItem":Landroid/view/MenuItem;
    const/16 v7, 0x8

    invoke-direct {p0, v7}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v7

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 835
    const v7, 0x7f0e0238

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 836
    .local v2, "earpieceItem":Landroid/view/MenuItem;
    const v7, 0x7f0e0239

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 838
    .local v6, "wiredHeadsetItem":Landroid/view/MenuItem;
    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v5

    .line 839
    .local v5, "usingHeadset":Z
    if-eqz v5, :cond_0

    move v7, v8

    :goto_0
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 840
    if-eqz v5, :cond_1

    :goto_1
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 841
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 842
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 847
    const v7, 0x7f0e023a

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 848
    .local v0, "bluetoothItem":Landroid/view/MenuItem;
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v7

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 852
    iget-object v7, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V

    .line 857
    iput-boolean v9, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopupVisible:Z

    .line 810
    return-void

    .end local v0    # "bluetoothItem":Landroid/view/MenuItem;
    :cond_0
    move v7, v9

    .line 839
    goto :goto_0

    :cond_1
    move v8, v9

    .line 840
    goto :goto_1
.end method

.method private updateAudioButtonContentDescription(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 782
    const/4 v0, 0x0

    .line 786
    .local v0, "stringId":I
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 787
    const v0, 0x7f0d037c

    .line 805
    :goto_0
    if-eqz v0, :cond_0

    .line 806
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 781
    :cond_0
    return-void

    .line 789
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 791
    :pswitch_1
    const v0, 0x7f0d037d

    .line 792
    goto :goto_0

    .line 794
    :pswitch_2
    const v0, 0x7f0d037f

    .line 795
    goto :goto_0

    .line 797
    :pswitch_3
    const v0, 0x7f0d037e

    .line 798
    goto :goto_0

    .line 800
    :pswitch_4
    const v0, 0x7f0d037c

    .line 801
    goto :goto_0

    .line 789
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
    .locals 12
    .param p1, "supportedModes"    # I

    .prologue
    .line 683
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v2

    .line 684
    .local v2, "bluetoothSupported":Z
    const/16 v10, 0x8

    invoke-direct {p0, v10}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v9

    .line 686
    .local v9, "speakerSupported":Z
    const/4 v1, 0x0

    .line 687
    .local v1, "audioButtonEnabled":Z
    const/4 v0, 0x0

    .line 688
    .local v0, "audioButtonChecked":Z
    const/4 v6, 0x0

    .line 690
    .local v6, "showMoreIndicator":Z
    const/4 v4, 0x0

    .line 691
    .local v4, "showBluetoothIcon":Z
    const/4 v7, 0x0

    .line 692
    .local v7, "showSpeakerphoneIcon":Z
    const/4 v5, 0x0

    .line 694
    .local v5, "showHandsetIcon":Z
    const/4 v8, 0x0

    .line 696
    .local v8, "showToggleIndicator":Z
    if-eqz v2, :cond_2

    .line 697
    const-string/jumbo v10, "updateAudioButtons - popup menu mode"

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    const/4 v1, 0x1

    .line 700
    const/4 v0, 0x1

    .line 701
    const/4 v6, 0x1

    .line 704
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 705
    const/4 v4, 0x1

    .line 717
    :goto_0
    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 747
    .end local v0    # "audioButtonChecked":Z
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "audioButtonEnabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "audioButtonChecked: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "showMoreIndicator: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 750
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "showBluetoothIcon: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 751
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "showSpeakerphoneIcon: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "showHandsetIcon: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 755
    iget-object v11, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_4

    iget-boolean v10, p0, Lcom/android/incallui/CallButtonFragment;->mIsEnabled:Z

    :goto_2
    invoke-virtual {v11, v10}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 756
    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v10, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 758
    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 759
    .local v3, "layers":Landroid/graphics/drawable/LayerDrawable;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\'layers\' drawable: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    const v10, 0x7f0e021e

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 762
    if-eqz v8, :cond_5

    const/16 v10, 0xff

    .line 761
    :goto_3
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 764
    const v10, 0x7f0e021f

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 765
    if-eqz v6, :cond_6

    const/16 v10, 0xff

    .line 764
    :goto_4
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 767
    const v10, 0x7f0e0220

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 768
    if-eqz v4, :cond_7

    const/16 v10, 0xff

    .line 767
    :goto_5
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 770
    const v10, 0x7f0e0221

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 771
    if-eqz v5, :cond_8

    const/16 v10, 0xff

    .line 770
    :goto_6
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 773
    const v10, 0x7f0e0222

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 774
    if-eqz v7, :cond_9

    const/16 v10, 0xff

    .line 773
    :goto_7
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 682
    return-void

    .line 706
    .end local v3    # "layers":Landroid/graphics/drawable/LayerDrawable;
    .restart local v0    # "audioButtonChecked":Z
    :cond_0
    const/16 v10, 0x8

    invoke-direct {p0, v10}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 707
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 709
    :cond_1
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 718
    :cond_2
    if-eqz v9, :cond_3

    .line 719
    const-string/jumbo v10, "updateAudioButtons - speaker toggle mode"

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 721
    const/4 v1, 0x1

    .line 725
    const/16 v10, 0x8

    invoke-direct {p0, v10}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v0

    .line 726
    .local v0, "audioButtonChecked":Z
    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v10, v0}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 729
    const/4 v8, 0x1

    .line 730
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 732
    .local v0, "audioButtonChecked":Z
    :cond_3
    const-string/jumbo v10, "updateAudioButtons - disabled..."

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 736
    const/4 v1, 0x0

    .line 737
    const/4 v0, 0x0

    .line 738
    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 741
    const/4 v8, 0x1

    .line 742
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 755
    .end local v0    # "audioButtonChecked":Z
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 762
    .restart local v3    # "layers":Landroid/graphics/drawable/LayerDrawable;
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 765
    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    .line 768
    :cond_7
    const/4 v10, 0x0

    goto :goto_5

    .line 771
    :cond_8
    const/4 v10, 0x0

    goto :goto_6

    .line 774
    :cond_9
    const/4 v10, 0x0

    goto :goto_7
.end method

.method private updateRecordMenu()V
    .locals 3

    .prologue
    .line 287
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v2, 0xf

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 288
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isCallRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    const v1, 0x7f0d03fd

    .line 289
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 286
    :cond_0
    return-void

    .line 290
    :cond_1
    const v1, 0x7f0d03fc

    goto :goto_0
.end method


# virtual methods
.method public createPresenter()Lcom/android/incallui/CallButtonPresenter;
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallButtonPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->createPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    return-object v0
.end method

.method public displayDialpad(ZZ)V
    .locals 4
    .param p1, "value"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_0

    .line 871
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, p1, p2}, Lcom/android/incallui/InCallActivity;->showDialpadFragment(ZZ)Z

    move-result v0

    .line 872
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 873
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 874
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 875
    if-eqz p1, :cond_1

    const v1, 0x7f0d03cc

    .line 874
    :goto_0
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 869
    .end local v0    # "changed":Z
    :cond_0
    return-void

    .line 876
    .restart local v0    # "changed":Z
    :cond_1
    const v1, 0x7f0d03cd

    goto :goto_0
.end method

.method public enableAddParticipant(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 508
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddParticipantButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 507
    return-void

    .line 508
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 891
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getDialpadVisibility()Z
    .locals 1

    .prologue
    .line 898
    const/4 v0, 0x1

    return v0
.end method

.method public getUi()Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    .locals 0

    .prologue
    .line 146
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getUi()Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    .line 206
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 226
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

    .line 228
    const v1, 0x7f0e00b0

    if-ne v0, v1, :cond_1

    .line 229
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->onAudioButtonClicked()V

    .line 281
    :cond_0
    :goto_0
    invoke-virtual {p1, v3, v5}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 224
    return-void

    .line 230
    :cond_1
    const v1, 0x7f0e00b9

    if-ne v0, v1, :cond_2

    .line 231
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->addCallClicked()V

    goto :goto_0

    .line 232
    :cond_2
    const v1, 0x7f0e00b1

    if-ne v0, v1, :cond_4

    .line 233
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    iget-object v4, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    .line 234
    :cond_4
    const v1, 0x7f0e00ba

    if-ne v0, v1, :cond_5

    .line 235
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->mergeClicked()V

    .line 236
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 237
    :cond_5
    const v1, 0x7f0e00b3

    if-ne v0, v1, :cond_7

    .line 238
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    iget-object v4, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->holdClicked(Z)V

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_2

    .line 239
    :cond_7
    const v1, 0x7f0e00b4

    if-ne v0, v1, :cond_8

    .line 240
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->swapClicked()V

    goto :goto_0

    .line 241
    :cond_8
    const v1, 0x7f0e00b2

    if-ne v0, v1, :cond_a

    .line 242
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    iget-object v4, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    goto :goto_0

    :cond_9
    move v2, v3

    goto :goto_3

    .line 243
    :cond_a
    const v1, 0x7f0e00bb

    if-ne v0, v1, :cond_b

    .line 244
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->addParticipantClicked()V

    goto/16 :goto_0

    .line 245
    :cond_b
    const v1, 0x7f0e00b5

    if-ne v0, v1, :cond_c

    .line 246
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->changeToVideoClicked()V

    goto/16 :goto_0

    .line 247
    :cond_c
    const v1, 0x7f0e00b8

    if-ne v0, v1, :cond_d

    .line 248
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->changeToVoiceClicked()V

    goto/16 :goto_0

    .line 249
    :cond_d
    const v1, 0x7f0e00b6

    if-ne v0, v1, :cond_e

    .line 250
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    .line 251
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v2

    .line 250
    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->switchCameraClicked(Z)V

    goto/16 :goto_0

    .line 252
    :cond_e
    const v1, 0x7f0e00b7

    if-ne v0, v1, :cond_10

    .line 253
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    .line 254
    iget-object v4, p0, Lcom/android/incallui/CallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 253
    :goto_4
    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->pauseVideoClicked(Z)V

    goto/16 :goto_0

    :cond_f
    move v2, v3

    .line 254
    goto :goto_4

    .line 255
    :cond_10
    const v1, 0x7f0e00bc

    if-ne v0, v1, :cond_11

    .line 256
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1, v3}, Lcom/android/incallui/CallButtonPresenter;->callTransferClicked(I)V

    goto/16 :goto_0

    .line 257
    :cond_11
    const v1, 0x7f0e00bd

    if-ne v0, v1, :cond_12

    .line 258
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1, v5}, Lcom/android/incallui/CallButtonPresenter;->callTransferClicked(I)V

    goto/16 :goto_0

    .line 259
    :cond_12
    const v1, 0x7f0e00be

    if-ne v0, v1, :cond_13

    .line 260
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->callTransferClicked(I)V

    goto/16 :goto_0

    .line 261
    :cond_13
    const v1, 0x7f0e00c0

    if-ne v0, v1, :cond_14

    .line 262
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowPopup:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->updateRecordMenu()V

    .line 264
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    .line 266
    :cond_14
    const v1, 0x7f0e00c1

    if-ne v0, v1, :cond_15

    .line 267
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->onManageVideoCallConferenceClicked()V

    goto/16 :goto_0

    .line 268
    :cond_15
    const v1, 0x7f0e00bf

    if-ne v0, v1, :cond_17

    .line 269
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isCallRecording()Z

    move-result v1

    if-nez v1, :cond_16

    .line 270
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->startInCallRecorder()V

    .line 271
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/ImageButton;

    const v2, 0x7f02008e

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 273
    :cond_16
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->stopInCallRecorder()V

    .line 274
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/ImageButton;

    const v2, 0x7f02008d

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 277
    :cond_17
    const-string/jumbo v1, "onClick: unexpected"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mButtonVisibilityMap:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/CallButtonFragment;->mButtonMaxVisible:I

    .line 150
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 163
    const v1, 0x7f04002c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 165
    .local v0, "parent":Landroid/view/View;
    const v1, 0x7f0e00b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    .line 166
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v1, 0x7f0e00b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    .line 168
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v1, 0x7f0e00b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    .line 170
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v1, 0x7f0e00b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    .line 172
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v1, 0x7f0e00b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    .line 174
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    const v1, 0x7f0e00b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVideoButton:Landroid/widget/ImageButton;

    .line 176
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const v1, 0x7f0e00b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVoiceButton:Landroid/widget/ImageButton;

    .line 178
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const v1, 0x7f0e00b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    .line 180
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v1, 0x7f0e00b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    .line 182
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v1, 0x7f0e00ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    .line 184
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    const v1, 0x7f0e00b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    .line 186
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const v1, 0x7f0e00bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mBlindTransferButton:Landroid/widget/ImageButton;

    .line 188
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mBlindTransferButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const v1, 0x7f0e00bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAssuredTransferButton:Landroid/widget/ImageButton;

    .line 190
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAssuredTransferButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    const v1, 0x7f0e00be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mConsultativeTransferButton:Landroid/widget/ImageButton;

    .line 192
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mConsultativeTransferButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v1, 0x7f0e00bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddParticipantButton:Landroid/widget/ImageButton;

    .line 194
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddParticipantButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    const v1, 0x7f0e00c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowButton:Landroid/widget/ImageButton;

    .line 196
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v1, 0x7f0e00c1

    .line 197
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mManageVideoCallConferenceButton:Landroid/widget/ImageButton;

    .line 199
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mManageVideoCallConferenceButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const v1, 0x7f0e00bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/ImageButton;

    .line 201
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    return-object v0
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 635
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

    .line 636
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopupVisible:Z

    .line 637
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    .line 634
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 604
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

    .line 605
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

    .line 606
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

    .line 608
    const/4 v0, 0x5

    .line 609
    .local v0, "mode":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 611
    .local v1, "resId":I
    const v2, 0x7f0e0237

    if-ne v1, v2, :cond_0

    .line 612
    const/16 v0, 0x8

    .line 624
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2, v0}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    .line 626
    const/4 v2, 0x1

    return v2

    .line 613
    :cond_0
    const v2, 0x7f0e0238

    if-eq v1, v2, :cond_1

    const v2, 0x7f0e0239

    if-ne v1, v2, :cond_2

    .line 616
    :cond_1
    const/4 v0, 0x5

    .line 613
    goto :goto_0

    .line 617
    :cond_2
    const v2, 0x7f0e023a

    if-ne v1, v2, :cond_3

    .line 618
    const/4 v0, 0x2

    goto :goto_0

    .line 620
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

    .line 621
    const-string/jumbo v3, " (MenuItem = \'"

    .line 620
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 621
    const-string/jumbo v3, "\')"

    .line 620
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
    .line 215
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->refreshMuteState()V

    .line 218
    :cond_0
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    .line 220
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->updateColors()V

    .line 214
    return-void
.end method

.method public refreshAudioModePopup()V
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopupVisible:Z

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 674
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->showAudioModePopup()V

    .line 669
    :cond_0
    return-void
.end method

.method public setAudio(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    .line 588
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->refreshAudioModePopup()V

    .line 590
    iget v0, p0, Lcom/android/incallui/CallButtonFragment;->mPrevAudioMode:I

    if-eq v0, p1, :cond_0

    .line 591
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtonContentDescription(I)V

    .line 592
    iput p1, p0, Lcom/android/incallui/CallButtonFragment;->mPrevAudioMode:I

    .line 586
    :cond_0
    return-void
.end method

.method public setCameraSwitched(Z)V
    .locals 1
    .param p1, "isBackFacingCamera"    # Z

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 498
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 413
    iput-boolean p1, p0, Lcom/android/incallui/CallButtonFragment;->mIsEnabled:Z

    .line 415
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 416
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 417
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 418
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 419
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 420
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 421
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 422
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 423
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 424
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 425
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 426
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mBlindTransferButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 427
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAssuredTransferButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 428
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mConsultativeTransferButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 429
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 430
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mManageVideoCallConferenceButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 431
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAddParticipantButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 432
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 412
    return-void
.end method

.method public setHold(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 491
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 492
    if-eqz p1, :cond_1

    const v0, 0x7f0d03ca

    .line 491
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 488
    :cond_0
    return-void

    .line 493
    :cond_1
    const v0, 0x7f0d03c9

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 515
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 516
    if-eqz p1, :cond_1

    const v0, 0x7f0d03cf

    .line 515
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 512
    :cond_0
    return-void

    .line 517
    :cond_1
    const v0, 0x7f0d03ce

    goto :goto_0
.end method

.method public setRecorderSupport(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 895
    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0
    .param p1, "modeMask"    # I

    .prologue
    .line 598
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    .line 599
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->refreshAudioModePopup()V

    .line 597
    return-void
.end method

.method public setVideoPaused(Z)V
    .locals 1
    .param p1, "isPaused"    # Z

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 503
    return-void
.end method

.method public showButton(IZ)V
    .locals 2
    .param p1, "buttonId"    # I
    .param p2, "show"    # Z

    .prologue
    .line 437
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mButtonVisibilityMap:Landroid/util/SparseIntArray;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 436
    return-void

    .line 437
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public updateButtonStates()V
    .locals 10

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 539
    const/4 v3, 0x0

    .line 540
    .local v3, "prevVisibleButton":Landroid/view/View;
    const/4 v4, -0x1

    .line 541
    .local v4, "prevVisibleId":I
    const/4 v2, 0x0

    .line 542
    .local v2, "menu":Landroid/widget/PopupMenu;
    const/4 v6, 0x0

    .line 543
    .local v6, "visibleCount":I
    const/4 v1, 0x0

    .end local v2    # "menu":Landroid/widget/PopupMenu;
    .end local v3    # "prevVisibleButton":Landroid/view/View;
    .local v1, "i":I
    :goto_0
    const/16 v9, 0x10

    if-ge v1, v9, :cond_5

    .line 544
    iget-object v9, p0, Lcom/android/incallui/CallButtonFragment;->mButtonVisibilityMap:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 545
    .local v5, "visibility":I
    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonFragment;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    .line 546
    .local v0, "button":Landroid/view/View;
    const/4 v9, 0x1

    if-ne v5, v9, :cond_4

    .line 547
    add-int/lit8 v6, v6, 0x1

    .line 548
    iget v9, p0, Lcom/android/incallui/CallButtonFragment;->mButtonMaxVisible:I

    if-gt v6, v9, :cond_1

    .line 549
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 550
    move-object v3, v0

    .line 551
    .local v3, "prevVisibleButton":Landroid/view/View;
    move v4, v1

    .line 543
    .end local v3    # "prevVisibleButton":Landroid/view/View;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
    :cond_1
    if-nez v2, :cond_2

    .line 554
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->getPopupMenu()Landroid/widget/PopupMenu;

    move-result-object v2

    .line 559
    :cond_2
    if-eqz v3, :cond_3

    .line 560
    invoke-direct {p0, v4, v3, v2}, Lcom/android/incallui/CallButtonFragment;->addToOverflowMenu(ILandroid/view/View;Landroid/widget/PopupMenu;)V

    .line 561
    const/4 v3, 0x0

    .line 562
    .local v3, "prevVisibleButton":Landroid/view/View;
    const/4 v4, -0x1

    .line 564
    .end local v3    # "prevVisibleButton":Landroid/view/View;
    :cond_3
    invoke-direct {p0, v1, v0, v2}, Lcom/android/incallui/CallButtonFragment;->addToOverflowMenu(ILandroid/view/View;Landroid/widget/PopupMenu;)V

    goto :goto_1

    .line 566
    :cond_4
    const/4 v9, 0x2

    if-ne v5, v9, :cond_0

    .line 567
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 571
    .end local v0    # "button":Landroid/view/View;
    .end local v5    # "visibility":I
    :cond_5
    iget-object v9, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_7

    :goto_2
    invoke-virtual {v9, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 572
    if-eqz v2, :cond_6

    .line 573
    iput-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowPopup:Landroid/widget/PopupMenu;

    .line 574
    iget-object v7, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowPopup:Landroid/widget/PopupMenu;

    new-instance v8, Lcom/android/incallui/CallButtonFragment$1;

    invoke-direct {v8, p0}, Lcom/android/incallui/CallButtonFragment$1;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 538
    :cond_6
    return-void

    :cond_7
    move v7, v8

    .line 571
    goto :goto_2
.end method

.method public updateColors()V
    .locals 13

    .prologue
    .line 295
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallPresenter;->getThemeColors()Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v8

    .line 297
    .local v8, "themeColors":Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    iget-object v9, p0, Lcom/android/incallui/CallButtonFragment;->mCurrentThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/incallui/CallButtonFragment;->mCurrentThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    invoke-virtual {v9, v8}, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 298
    return-void

    .line 301
    :cond_0
    const/4 v9, 0x6

    new-array v4, v9, [Landroid/widget/CompoundButton;

    .line 302
    iget-object v9, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v10, 0x0

    aput-object v9, v4, v10

    .line 303
    iget-object v9, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    const/4 v10, 0x1

    aput-object v9, v4, v10

    .line 304
    iget-object v9, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    const/4 v10, 0x2

    aput-object v9, v4, v10

    .line 305
    iget-object v9, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    const/4 v10, 0x3

    aput-object v9, v4, v10

    .line 306
    iget-object v9, p0, Lcom/android/incallui/CallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    const/4 v10, 0x4

    aput-object v9, v4, v10

    .line 307
    iget-object v9, p0, Lcom/android/incallui/CallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    const/4 v10, 0x5

    aput-object v9, v4, v10

    .line 310
    .local v4, "compoundButtons":[Landroid/widget/CompoundButton;
    const/4 v9, 0x0

    array-length v10, v4

    :goto_0
    if-ge v9, v10, :cond_2

    aget-object v2, v4, v9

    .line 314
    .local v2, "button":Landroid/widget/CompoundButton;
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    .line 315
    .local v5, "isChecked":Z
    if-eqz v5, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateColors: button:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " is in checked state"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 317
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/LayerDrawable;

    .line 318
    .local v6, "layers":Landroid/graphics/drawable/LayerDrawable;
    invoke-direct {p0, v8}, Lcom/android/incallui/CallButtonFragment;->compoundBackgroundDrawable(Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v0

    .line 319
    .local v0, "btnCompoundDrawable":Landroid/graphics/drawable/RippleDrawable;
    const v11, 0x7f0e021e

    invoke-virtual {v6, v11, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 320
    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 321
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 310
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 324
    .end local v0    # "btnCompoundDrawable":Landroid/graphics/drawable/RippleDrawable;
    .end local v2    # "button":Landroid/widget/CompoundButton;
    .end local v5    # "isChecked":Z
    .end local v6    # "layers":Landroid/graphics/drawable/LayerDrawable;
    :cond_2
    const/16 v9, 0x9

    new-array v7, v9, [Landroid/widget/ImageButton;

    .line 325
    iget-object v9, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    const/4 v10, 0x0

    aput-object v9, v7, v10

    .line 326
    iget-object v9, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVideoButton:Landroid/widget/ImageButton;

    const/4 v10, 0x1

    aput-object v9, v7, v10

    .line 327
    iget-object v9, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVoiceButton:Landroid/widget/ImageButton;

    const/4 v10, 0x2

    aput-object v9, v7, v10

    .line 328
    iget-object v9, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    const/4 v10, 0x3

    aput-object v9, v7, v10

    .line 329
    iget-object v9, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    const/4 v10, 0x4

    aput-object v9, v7, v10

    .line 330
    iget-object v9, p0, Lcom/android/incallui/CallButtonFragment;->mBlindTransferButton:Landroid/widget/ImageButton;

    const/4 v10, 0x5

    aput-object v9, v7, v10

    .line 331
    iget-object v9, p0, Lcom/android/incallui/CallButtonFragment;->mAssuredTransferButton:Landroid/widget/ImageButton;

    const/4 v10, 0x6

    aput-object v9, v7, v10

    .line 332
    iget-object v9, p0, Lcom/android/incallui/CallButtonFragment;->mConsultativeTransferButton:Landroid/widget/ImageButton;

    const/4 v10, 0x7

    aput-object v9, v7, v10

    .line 333
    iget-object v9, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowButton:Landroid/widget/ImageButton;

    const/16 v10, 0x8

    aput-object v9, v7, v10

    .line 336
    .local v7, "normalButtons":[Landroid/widget/ImageButton;
    const/4 v9, 0x0

    array-length v10, v7

    :goto_1
    if-ge v9, v10, :cond_3

    aget-object v3, v7, v9

    .line 337
    .local v3, "button":Landroid/widget/ImageButton;
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/LayerDrawable;

    .line 338
    .restart local v6    # "layers":Landroid/graphics/drawable/LayerDrawable;
    invoke-direct {p0, v8}, Lcom/android/incallui/CallButtonFragment;->backgroundDrawable(Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v1

    .line 339
    .local v1, "btnDrawable":Landroid/graphics/drawable/RippleDrawable;
    const v11, 0x7f0e021d

    invoke-virtual {v6, v11, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 340
    invoke-virtual {v3}, Landroid/widget/ImageButton;->requestLayout()V

    .line 336
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 343
    .end local v1    # "btnDrawable":Landroid/graphics/drawable/RippleDrawable;
    .end local v3    # "button":Landroid/widget/ImageButton;
    .end local v6    # "layers":Landroid/graphics/drawable/LayerDrawable;
    :cond_3
    iput-object v8, p0, Lcom/android/incallui/CallButtonFragment;->mCurrentThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    .line 294
    return-void
.end method
