.class public Lcom/android/incallui/CallButtonPresenter;
.super Lcom/android/incallui/Presenter;
.source "CallButtonPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$CanAddCallListener;
.implements Lcom/android/incallui/CallList$ActiveSubChangeListener;
.implements Lcom/android/incallui/InCallCameraManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/CallButtonPresenter$CallButtonUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/AudioModeProvider$AudioModeListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
        "Lcom/android/incallui/InCallPresenter$CanAddCallListener;",
        "Lcom/android/incallui/CallList$ActiveSubChangeListener;",
        "Lcom/android/incallui/InCallCameraManager$Listener;"
    }
.end annotation


# instance fields
.field private mAutomaticallyMuted:Z

.field private mCall:Lcom/android/incallui/Call;

.field private mPreviousMuteState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 59
    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    .line 67
    return-void
.end method

.method private hasVideoCallCapabilities(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/16 v2, 0x200

    const/16 v1, 0x17

    .line 519
    invoke-static {v1}, Lcom/android/contacts/common/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 520
    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    .line 520
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 524
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    return v0
.end method

.method private isDowngradeToAudioSupported(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 535
    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSipCall(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 623
    if-nez p1, :cond_0

    .line 624
    const/4 v0, 0x0

    return v0

    .line 626
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateButtonsState(Lcom/android/incallui/Call;)V
    .locals 23
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 432
    const-string/jumbo v21, "updateButtonsState"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v19

    check-cast v19, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .line 435
    .local v19, "ui":Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/VideoUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v9

    .line 442
    .local v9, "isVideo":Z
    const/16 v21, 0x8

    .line 441
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v17

    .line 443
    .local v17, "showSwap":Z
    if-nez v17, :cond_5

    .line 444
    const/16 v21, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v21

    .line 443
    if-eqz v21, :cond_5

    .line 445
    const/16 v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v13

    .line 446
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    const/4 v6, 0x1

    .line 447
    .local v6, "isCallOnHold":Z
    :goto_1
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 448
    invoke-interface/range {v19 .. v19}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/dialer/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v21

    .line 447
    if-eqz v21, :cond_8

    .line 448
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v21

    if-nez v21, :cond_7

    const/4 v10, 0x1

    .line 450
    .local v10, "showAddCall":Z
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isCdmaPhone(Lcom/android/incallui/Call;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 451
    if-eqz v10, :cond_0

    invoke-interface/range {v19 .. v19}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isCdmaDialing(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_9

    :cond_0
    const/4 v10, 0x0

    .line 455
    :cond_1
    :goto_3
    const/16 v21, 0x4

    .line 454
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v14

    .line 456
    .local v14, "showMerge":Z
    invoke-interface/range {v19 .. v19}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/incallui/QtiCallUtils;->useExt(Landroid/content/Context;)Z

    move-result v20

    .line 458
    .local v20, "useExt":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    const/4 v5, 0x1

    .line 459
    .local v5, "isCallActive":Z
    :goto_4
    if-nez v9, :cond_2

    if-eqz v20, :cond_b

    .line 460
    :cond_2
    if-eqz v20, :cond_d

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/QtiCallUtils;->hasVoiceOrVideoCapabilities(Lcom/android/incallui/Call;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 461
    if-nez v5, :cond_c

    move/from16 v18, v6

    .line 463
    :goto_5
    if-eqz v9, :cond_e

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/CallButtonPresenter;->isDowngradeToAudioSupported(Lcom/android/incallui/Call;)Z

    move-result v12

    .line 464
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    .line 466
    .local v3, "callState":I
    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v3, v0, :cond_f

    .line 467
    const/16 v21, 0x8

    move/from16 v0, v21

    if-ne v3, v0, :cond_10

    const/16 v16, 0x1

    .line 469
    .local v16, "showRecord":Z
    :goto_7
    const/16 v21, 0x40

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v15

    .line 470
    .local v15, "showMute":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->isEmergencyCall()Z

    move-result v21

    if-eqz v21, :cond_11

    const/4 v4, 0x0

    .line 471
    .local v4, "callTransferCapabilities":I
    :goto_8
    const/high16 v21, 0x2000000

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v11

    .line 472
    .local v11, "showAddParticipant":Z
    invoke-interface/range {v19 .. v19}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 473
    const v22, 0x7f09002a

    .line 472
    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 474
    if-eqz v11, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v11

    .line 478
    .end local v11    # "showAddParticipant":Z
    :cond_3
    :goto_9
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/incallui/InCallPresenter;->isRecordStateWaiting()Z

    move-result v7

    .line 479
    .local v7, "isRecordStateWaited":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/CallButtonPresenter;->isSipCall(Lcom/android/incallui/Call;)Z

    move-result v8

    .line 480
    .local v8, "isSipCall":Z
    if-nez v8, :cond_13

    invoke-static {}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isSupportCallRecorder()Z

    move-result v21

    :goto_a
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setRecorderSupport(Z)V

    .line 481
    if-nez v8, :cond_4

    invoke-static {}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isSupportCallRecorder()Z

    move-result v21

    if-eqz v21, :cond_4

    if-eqz v7, :cond_14

    :cond_4
    const/16 v21, 0x0

    :goto_b
    const/16 v22, 0xb

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 482
    if-nez v8, :cond_15

    invoke-static {}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isSupportCallRecorder()Z

    move-result v21

    if-eqz v21, :cond_15

    .end local v7    # "isRecordStateWaited":Z
    :goto_c
    const/16 v21, 0xc

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1, v7}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 483
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "showSwap: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "showHold: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "showAddCall: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 486
    const/16 v21, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 487
    const/16 v21, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1, v13}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 488
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setHold(Z)V

    .line 489
    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 490
    const/16 v21, 0x7

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1, v10}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 491
    const/16 v21, 0x5

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 493
    const/16 v21, 0x6

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 494
    const/16 v21, 0x9

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 495
    invoke-interface/range {v19 .. v19}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getDialpadVisibility()Z

    move-result v21

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 496
    const/16 v21, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1, v14}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showButton(IZ)V

    .line 497
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableAddParticipant(Z)V

    .line 515
    invoke-interface/range {v19 .. v19}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->updateButtonStates()V

    .line 431
    return-void

    .line 443
    .end local v3    # "callState":I
    .end local v4    # "callTransferCapabilities":I
    .end local v5    # "isCallActive":Z
    .end local v6    # "isCallOnHold":Z
    .end local v8    # "isSipCall":Z
    .end local v10    # "showAddCall":Z
    .end local v14    # "showMerge":Z
    .end local v15    # "showMute":Z
    .end local v16    # "showRecord":Z
    .end local v20    # "useExt":Z
    :cond_5
    const/4 v13, 0x0

    .local v13, "showHold":Z
    goto/16 :goto_0

    .line 446
    .end local v13    # "showHold":Z
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "isCallOnHold":Z
    goto/16 :goto_1

    .line 448
    :cond_7
    const/4 v10, 0x0

    .restart local v10    # "showAddCall":Z
    goto/16 :goto_2

    .line 447
    .end local v10    # "showAddCall":Z
    :cond_8
    const/4 v10, 0x0

    .restart local v10    # "showAddCall":Z
    goto/16 :goto_2

    .line 451
    :cond_9
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 458
    .restart local v14    # "showMerge":Z
    .restart local v20    # "useExt":Z
    :cond_a
    const/4 v5, 0x0

    .restart local v5    # "isCallActive":Z
    goto/16 :goto_4

    .line 459
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/CallButtonPresenter;->hasVideoCallCapabilities(Lcom/android/incallui/Call;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v18, 0x1

    .local v18, "showUpgradeToVideo":Z
    goto/16 :goto_5

    .line 461
    .end local v18    # "showUpgradeToVideo":Z
    :cond_c
    const/16 v18, 0x1

    .restart local v18    # "showUpgradeToVideo":Z
    goto/16 :goto_5

    .line 460
    .end local v18    # "showUpgradeToVideo":Z
    :cond_d
    const/16 v18, 0x0

    .restart local v18    # "showUpgradeToVideo":Z
    goto/16 :goto_5

    .line 463
    .end local v18    # "showUpgradeToVideo":Z
    :cond_e
    const/4 v12, 0x0

    .local v12, "showDowngradeToAudio":Z
    goto/16 :goto_6

    .line 466
    .end local v12    # "showDowngradeToAudio":Z
    .restart local v3    # "callState":I
    :cond_f
    const/16 v16, 0x1

    .restart local v16    # "showRecord":Z
    goto/16 :goto_7

    .line 467
    .end local v16    # "showRecord":Z
    :cond_10
    const/16 v16, 0x0

    .restart local v16    # "showRecord":Z
    goto/16 :goto_7

    .line 470
    .restart local v15    # "showMute":Z
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getTransferCapabilities()I

    move-result v4

    .restart local v4    # "callTransferCapabilities":I
    goto/16 :goto_8

    .line 474
    .restart local v11    # "showAddParticipant":Z
    :cond_12
    const/4 v11, 0x0

    .local v11, "showAddParticipant":Z
    goto/16 :goto_9

    .line 480
    .end local v11    # "showAddParticipant":Z
    .restart local v7    # "isRecordStateWaited":Z
    .restart local v8    # "isSipCall":Z
    :cond_13
    const/16 v21, 0x0

    goto/16 :goto_a

    .line 481
    :cond_14
    const/16 v21, 0x1

    goto/16 :goto_b

    .line 482
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_c
.end method

.method private updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x0

    .line 408
    const-string/jumbo v3, "Updating call UI for call: "

    invoke-static {p0, v3, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .line 411
    .local v1, "ui":Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    if-nez v1, :cond_0

    .line 412
    return-void

    .line 416
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    move v0, v2

    .line 417
    .local v0, "isEnabled":Z
    invoke-interface {v1, v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setEnabled(Z)V

    .line 419
    if-nez p2, :cond_3

    .line 420
    return-void

    .line 416
    .end local v0    # "isEnabled":Z
    :cond_2
    if-eqz p2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .line 423
    .restart local v0    # "isEnabled":Z
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/incallui/CallButtonPresenter;->updateButtonsState(Lcom/android/incallui/Call;)V

    .line 407
    return-void
.end method


# virtual methods
.method public addCallClicked()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    .line 287
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    .line 292
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/TelecomAdapter;->addCall()V

    .line 284
    return-void
.end method

.method public addParticipantClicked()V
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 277
    const v1, 0x7f090029

    .line 276
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->sendAddMultiParticipantsIntent()V

    .line 279
    return-void

    .line 281
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->sendAddParticipantIntent()V

    .line 275
    return-void
.end method

.method public addUpdateListener(Landroid/content/Context;Lcom/android/incallui/oneplus/record/OPUpdater;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "update"    # Lcom/android/incallui/oneplus/record/OPUpdater;

    .prologue
    .line 619
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallPresenter;->addUpdateListener(Landroid/content/Context;Lcom/android/incallui/oneplus/record/OPUpdater;)V

    .line 618
    return-void
.end method

.method public callTransferClicked(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 386
    const/4 v1, 0x0

    .line 387
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v3}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 388
    .local v0, "mContext":Landroid/content/Context;
    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    .line 394
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getCallDeflectNumber(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "number":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 396
    const v3, 0x7f0d034d

    invoke-static {v0, v3}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;I)V

    .line 397
    return-void

    .line 401
    .end local v1    # "number":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3, p1, v1}, Lcom/android/incallui/Call;->sendCallTransferRequest(ILjava/lang/String;)Z

    move-result v2

    .line 402
    .local v2, "status":Z
    if-nez v2, :cond_1

    .line 403
    const v3, 0x7f0d034e

    invoke-static {v0, v3}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;I)V

    .line 385
    :cond_1
    return-void
.end method

.method public changeToVideoClicked()V
    .locals 7

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 312
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/incallui/QtiCallUtils;->useExt(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 313
    iget-object v5, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v5, v0}, Lcom/android/incallui/QtiCallUtils;->displayModifyCallOptions(Lcom/android/incallui/Call;Landroid/content/Context;)V

    .line 314
    return-void

    .line 317
    :cond_0
    iget-object v5, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v3

    .line 318
    .local v3, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-nez v3, :cond_1

    .line 319
    return-void

    .line 321
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    .line 322
    .local v2, "currVideoState":I
    invoke-static {v2}, Lcom/android/incallui/VideoUtils;->getUnPausedVideoState(I)I

    move-result v1

    .line 323
    .local v1, "currUnpausedVideoState":I
    or-int/lit8 v1, v1, 0x3

    .line 325
    new-instance v4, Landroid/telecom/VideoProfile;

    invoke-direct {v4, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 326
    .local v4, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v3, v4}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 327
    iget-object v5, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 310
    return-void
.end method

.method public changeToVoiceClicked()V
    .locals 3

    .prologue
    .line 296
    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    .line 297
    .local v0, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-nez v0, :cond_0

    .line 298
    return-void

    .line 301
    :cond_0
    new-instance v1, Landroid/telecom/VideoProfile;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 302
    .local v1, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 295
    return-void
.end method

.method public getAudioMode()I
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method public getSupportedAudio()I
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getSupportedModes()I

    move-result v0

    return v0
.end method

.method public holdClicked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 232
    return-void

    .line 234
    :cond_0
    if-eqz p1, :cond_1

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Putting the call on hold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    .line 230
    :goto_0
    return-void

    .line 238
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Removing the call from hold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public mergeClicked()V
    .locals 5

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 254
    const v3, 0x7f090029

    .line 253
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 255
    const/4 v1, 0x0

    .line 256
    .local v1, "participantsCount":I
    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 264
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Number of participantsCount is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    const/4 v2, 0x6

    if-lt v1, v2, :cond_2

    .line 266
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 267
    const v3, 0x7f0d041e

    const/4 v4, 0x0

    .line 266
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 268
    return-void

    .line 259
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 260
    .local v0, "backgroundCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 271
    .end local v0    # "backgroundCall":Lcom/android/incallui/Call;
    .end local v1    # "participantsCount":I
    :cond_2
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/android/incallui/InCallAudioManager;->getInstance()Lcom/android/incallui/InCallAudioManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallAudioManager;->onMergeClicked()V

    .line 252
    return-void
.end method

.method public muteClicked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "turning on mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    .line 225
    return-void
.end method

.method public onActiveCameraSelectionChanged(Z)V
    .locals 2
    .param p1, "isUsingFrontFacingCamera"    # Z

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-nez v0, :cond_0

    .line 596
    return-void

    .line 598
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setCameraSwitched(Z)V

    .line 594
    return-void

    .line 598
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onActiveSubChanged(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 602
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    .line 603
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    .line 602
    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    .line 605
    .local v0, "state":Lcom/android/incallui/InCallPresenter$InCallState;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p0, v4, v0, v2}, Lcom/android/incallui/CallButtonPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 606
    const-string/jumbo v2, "onActiveSubChanged"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .line 608
    .local v1, "ui":Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    if-eqz v1, :cond_0

    .line 609
    invoke-interface {v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->updateColors()V

    .line 601
    :cond_0
    return-void
.end method

.method public onAudioMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setAudio(I)V

    .line 164
    :cond_0
    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 1
    .param p1, "canAddCall"    # Z

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->updateButtonsState(Lcom/android/incallui/Call;)V

    .line 157
    :cond_0
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->updateButtonsState(Lcom/android/incallui/Call;)V

    .line 144
    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 153
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/CallButtonPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 152
    return-void
.end method

.method public onMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setMute(Z)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 560
    const-string/jumbo v0, "incall_key_automatically_muted"

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 559
    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    .line 562
    const-string/jumbo v0, "incall_key_previous_mute_state"

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 561
    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    .line 563
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 558
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 552
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 553
    const-string/jumbo v0, "incall_key_automatically_muted"

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 554
    const-string/jumbo v0, "incall_key_previous_mute_state"

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 551
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .line 107
    .local v0, "ui":Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_1

    .line 108
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    .line 131
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, p2, v1}, Lcom/android/incallui/CallButtonPresenter;->updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    .line 104
    return-void

    .line 109
    :cond_1
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_2

    .line 110
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    .line 116
    if-eqz v0, :cond_0

    .line 117
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    .line 118
    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v1, v2}, Lcom/android/incallui/CallerInfoUtils;->isVoiceMailNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-interface {v0, v3, v3}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(ZZ)V

    goto :goto_0

    .line 123
    :cond_2
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_4

    .line 124
    if-eqz v0, :cond_3

    .line 125
    const/4 v1, 0x0

    invoke-interface {v0, v1, v3}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(ZZ)V

    .line 127
    :cond_3
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    goto :goto_0

    .line 129
    :cond_4
    iput-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    goto :goto_0
.end method

.method public onSupportedAudioMode(I)V
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setSupportedAudio(I)V

    .line 171
    :cond_0
    return-void
.end method

.method public onUiReady(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V
    .locals 4
    .param p1, "ui"    # Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 74
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 77
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    .line 78
    .local v0, "inCallPresenter":Lcom/android/incallui/InCallPresenter;
    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 79
    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 80
    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 81
    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V

    .line 82
    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallCameraManager;->addCameraSelectionListener(Lcom/android/incallui/InCallCameraManager$Listener;)V

    .line 83
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->addActiveSubChangeListener(Lcom/android/incallui/CallList$ActiveSubChangeListener;)V

    .line 86
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    .line 87
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    .line 86
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/incallui/CallButtonPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 71
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/incallui/Ui;

    .prologue
    .line 71
    check-cast p1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .end local p1    # "ui":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->onUiReady(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 94
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 95
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 96
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 97
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 98
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallCameraManager;->removeCameraSelectionListener(Lcom/android/incallui/InCallCameraManager$Listener;)V

    .line 99
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V

    .line 100
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->removeActiveSubChangeListener(Lcom/android/incallui/CallList$ActiveSubChangeListener;)V

    .line 91
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/incallui/Ui;

    .prologue
    .line 91
    check-cast p1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .end local p1    # "ui":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->onUiUnready(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V

    return-void
.end method

.method public pauseVideoClicked(Z)V
    .locals 6
    .param p1, "pause"    # Z

    .prologue
    const/4 v5, 0x0

    .line 362
    iget-object v4, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    .line 363
    .local v2, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-nez v2, :cond_0

    .line 364
    return-void

    .line 367
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/VideoUtils;->getUnPausedVideoState(I)I

    move-result v1

    .line 368
    .local v1, "currUnpausedVideoState":I
    if-eqz p1, :cond_1

    .line 369
    invoke-virtual {v2, v5}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 370
    new-instance v3, Landroid/telecom/VideoProfile;

    and-int/lit8 v4, v1, -0x2

    invoke-direct {v3, v4}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 372
    .local v3, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 382
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v4, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setVideoPaused(Z)V

    .line 361
    return-void

    .line 374
    .end local v3    # "videoProfile":Landroid/telecom/VideoProfile;
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    .line 376
    .local v0, "cameraManager":Lcom/android/incallui/InCallCameraManager;
    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 377
    new-instance v3, Landroid/telecom/VideoProfile;

    or-int/lit8 v4, v1, 0x1

    invoke-direct {v3, v4}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 379
    .restart local v3    # "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 380
    iget-object v4, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0
.end method

.method public refreshMuteState()V
    .locals 2

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    if-eqz v0, :cond_1

    .line 541
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    if-eq v0, v1, :cond_1

    .line 542
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-nez v0, :cond_0

    .line 543
    return-void

    .line 545
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    .line 547
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    .line 538
    return-void
.end method

.method public setAudioMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sending new Audio Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    .line 192
    return-void
.end method

.method public showDialpadClicked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Show dialpad "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(ZZ)V

    .line 305
    return-void
.end method

.method public startOrPauseRecording(Z)V
    .locals 1
    .param p1, "onlyStart"    # Z

    .prologue
    .line 615
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->startOrPauseRecording(Z)V

    .line 614
    return-void
.end method

.method public swapClicked()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 245
    return-void

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Swapping the call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->swap(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public switchCameraClicked(Z)V
    .locals 5
    .param p1, "useFrontFacingCamera"    # Z

    .prologue
    .line 336
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v2

    .line 337
    .local v2, "cameraManager":Lcom/android/incallui/InCallCameraManager;
    invoke-virtual {v2, p1}, Lcom/android/incallui/InCallCameraManager;->setUseFrontFacingCamera(Z)V

    .line 339
    iget-object v4, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v3

    .line 340
    .local v3, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-nez v3, :cond_0

    .line 341
    return-void

    .line 344
    :cond_0
    invoke-virtual {v2}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "cameraId":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 346
    invoke-virtual {v2}, Lcom/android/incallui/InCallCameraManager;->isUsingFrontFacingCamera()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 347
    const/4 v0, 0x0

    .line 349
    .local v0, "cameraDir":I
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/incallui/Call$VideoSettings;->setCameraDir(I)V

    .line 350
    invoke-virtual {v3, v1}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v3}, Landroid/telecom/InCallService$VideoCall;->requestCameraCapabilities()V

    .line 335
    .end local v0    # "cameraDir":I
    :cond_1
    return-void

    .line 348
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "cameraDir":I
    goto :goto_0
.end method

.method public toggleSpeakerphone()V
    .locals 3

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 210
    const-string/jumbo v1, "toggling speakerphone not allowed when bluetooth supported."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setSupportedAudio(I)V

    .line 212
    return-void

    .line 215
    :cond_0
    const/16 v0, 0x8

    .line 218
    .local v0, "newMode":I
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 219
    const/4 v0, 0x5

    .line 222
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    .line 205
    return-void
.end method
