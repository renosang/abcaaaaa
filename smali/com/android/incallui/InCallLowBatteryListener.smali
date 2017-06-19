.class public Lcom/android/incallui/InCallLowBatteryListener;
.super Ljava/lang/Object;
.source "InCallLowBatteryListener.java"

# interfaces
.implements Lcom/android/incallui/CallList$Listener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallUiListener;


# static fields
.field private static sInCallLowBatteryListener:Lcom/android/incallui/InCallLowBatteryListener;


# instance fields
.field private final PROCESS_LOW_BATTERY:Ljava/lang/Boolean;

.field private mAlert:Landroid/app/AlertDialog;

.field private mCallList:Lcom/android/incallui/CallList;

.field private mLowBatteryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/incallui/Call;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;


# direct methods
.method static synthetic -set0(Lcom/android/incallui/InCallLowBatteryListener;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallLowBatteryListener;->mAlert:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/incallui/InCallLowBatteryListener;Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->maybeDisconnectMoCall(Lcom/android/incallui/Call;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mCallList:Lcom/android/incallui/CallList;

    .line 80
    iput-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mAlert:Landroid/app/AlertDialog;

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    .line 82
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->PROCESS_LOW_BATTERY:Ljava/lang/Boolean;

    .line 87
    return-void
.end method

.method private canProcessLowBatteryIndication(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 252
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 253
    :cond_0
    return v1

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 261
    :cond_2
    const-string/jumbo v0, "canProcessLowBatteryIndication no mapping for call in low battery map"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    return v1
.end method

.method private displayLowBatteryAlert(Lcom/android/incallui/Call;)V
    .locals 7
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0d0376

    const v4, 0x7f0d0375

    const v3, 0x7f0d0372

    .line 389
    invoke-virtual {p0}, Lcom/android/incallui/InCallLowBatteryListener;->dismissPendingDialogs()V

    .line 391
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    .line 392
    .local v1, "inCallActivity":Lcom/android/incallui/InCallActivity;
    if-nez v1, :cond_0

    .line 393
    const-string/jumbo v2, "displayLowBatteryAlert inCallActivity is NULL"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    return-void

    .line 397
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 398
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0d0371

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 399
    new-instance v2, Lcom/android/incallui/InCallLowBatteryListener$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallLowBatteryListener$1;-><init>(Lcom/android/incallui/InCallLowBatteryListener;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 407
    invoke-static {p1}, Lcom/android/incallui/VideoUtils;->isIncomingVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 408
    new-instance v2, Lcom/android/incallui/InCallLowBatteryListener$2;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/InCallLowBatteryListener$2;-><init>(Lcom/android/incallui/InCallLowBatteryListener;Lcom/android/incallui/Call;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 417
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 418
    new-instance v2, Lcom/android/incallui/InCallLowBatteryListener$3;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/InCallLowBatteryListener$3;-><init>(Lcom/android/incallui/InCallLowBatteryListener;Lcom/android/incallui/Call;)V

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 485
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/InCallLowBatteryListener;->mAlert:Landroid/app/AlertDialog;

    .line 486
    iget-object v2, p0, Lcom/android/incallui/InCallLowBatteryListener;->mAlert:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/incallui/InCallLowBatteryListener$8;

    invoke-direct {v3, p0, p1}, Lcom/android/incallui/InCallLowBatteryListener$8;-><init>(Lcom/android/incallui/InCallLowBatteryListener;Lcom/android/incallui/Call;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 499
    iget-object v2, p0, Lcom/android/incallui/InCallLowBatteryListener;->mAlert:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 500
    iget-object v2, p0, Lcom/android/incallui/InCallLowBatteryListener;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 501
    iget-object v2, p0, Lcom/android/incallui/InCallLowBatteryListener;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 387
    return-void

    .line 426
    :cond_2
    invoke-static {p1}, Lcom/android/incallui/VideoUtils;->isOutgoingVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 427
    new-instance v2, Lcom/android/incallui/InCallLowBatteryListener$4;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/InCallLowBatteryListener$4;-><init>(Lcom/android/incallui/InCallLowBatteryListener;Lcom/android/incallui/Call;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 443
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 444
    new-instance v2, Lcom/android/incallui/InCallLowBatteryListener$5;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallLowBatteryListener$5;-><init>(Lcom/android/incallui/InCallLowBatteryListener;)V

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 456
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->isActiveUnPausedVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 457
    invoke-static {p1}, Lcom/android/incallui/QtiCallUtils;->hasVoiceCapabilities(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 459
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 460
    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 461
    new-instance v2, Lcom/android/incallui/InCallLowBatteryListener$6;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/InCallLowBatteryListener$6;-><init>(Lcom/android/incallui/InCallLowBatteryListener;Lcom/android/incallui/Call;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 471
    :cond_4
    const v2, 0x7f0d0374

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 472
    const v2, 0x7f0d0373

    invoke-virtual {v0, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 473
    new-instance v2, Lcom/android/incallui/InCallLowBatteryListener$7;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/InCallLowBatteryListener$7;-><init>(Lcom/android/incallui/InCallLowBatteryListener;Lcom/android/incallui/Call;)V

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/InCallLowBatteryListener;
    .locals 2

    .prologue
    const-class v1, Lcom/android/incallui/InCallLowBatteryListener;

    monitor-enter v1

    .line 123
    :try_start_0
    sget-object v0, Lcom/android/incallui/InCallLowBatteryListener;->sInCallLowBatteryListener:Lcom/android/incallui/InCallLowBatteryListener;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/android/incallui/InCallLowBatteryListener;

    invoke-direct {v0}, Lcom/android/incallui/InCallLowBatteryListener;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallLowBatteryListener;->sInCallLowBatteryListener:Lcom/android/incallui/InCallLowBatteryListener;

    .line 126
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallLowBatteryListener;->sInCallLowBatteryListener:Lcom/android/incallui/InCallLowBatteryListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isActiveUnPausedVideoCall(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 239
    invoke-static {p1}, Lcom/android/incallui/VideoUtils;->isActiveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isLowBattery(Landroid/telecom/Call$Details;)Z
    .locals 4
    .param p1, "details"    # Landroid/telecom/Call$Details;

    .prologue
    const/4 v0, 0x0

    .line 231
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 232
    .local v0, "extras":Landroid/os/Bundle;
    :cond_0
    if-eqz v0, :cond_1

    .line 233
    const-string/jumbo v2, "LowBattery"

    const/4 v3, 0x0

    .line 232
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 234
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isLowBattery : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    return v1

    .line 233
    :cond_1
    const/4 v1, 0x0

    .local v1, "isLowBattery":Z
    goto :goto_0
.end method

.method private isLowBatteryDialogShowing()Z
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLowBatteryVideoCall(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 243
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/incallui/VideoUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallLowBatteryListener;->isLowBattery(Landroid/telecom/Call$Details;)Z

    move-result v0

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeAddToLowBatteryMap(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 267
    return-void

    .line 270
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->isLowBatteryVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v1, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/incallui/VideoUtils;->isIncomingVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_1
    return-void

    .line 274
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private maybeDisconnectMoCall(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 350
    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->isLowBatteryVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/android/incallui/InCallLowBatteryListener;->dismissPendingDialogs()V

    .line 358
    const-string/jumbo v0, "disconnect MO call this is waiting for user input"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 349
    :cond_0
    return-void

    .line 351
    :cond_1
    return-void
.end method

.method private maybeProcessLowBatteryIndication(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->isLowBatteryVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    return-void

    .line 368
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->canProcessLowBatteryIndication(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->displayLowBatteryAlert(Lcom/android/incallui/Call;)V

    .line 371
    iget-object v1, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->PROCESS_LOW_BATTERY:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :cond_1
    return-void

    .line 371
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onConfigurationChanging(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 284
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/incallui/PrimaryCallTracker;->isPrimaryCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConfigurationChanging call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-direct {p0}, Lcom/android/incallui/InCallLowBatteryListener;->isLowBatteryDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/android/incallui/InCallLowBatteryListener;->dismissPendingDialogs()V

    .line 294
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/incallui/InCallLowBatteryListener;->PROCESS_LOW_BATTERY:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_0
    return-void

    .line 285
    :cond_1
    return-void
.end method


# virtual methods
.method public dismissPendingDialogs()V
    .locals 1

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/android/incallui/InCallLowBatteryListener;->isLowBatteryDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mAlert:Landroid/app/AlertDialog;

    .line 515
    :cond_0
    return-void
.end method

.method public onAnswerIncomingCall(Lcom/android/incallui/Call;I)Z
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoState"    # I

    .prologue
    const/4 v1, 0x0

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnswerIncomingCall = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " videoState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/incallui/PrimaryCallTracker;->isPrimaryCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->isLowBatteryVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    .line 210
    return v1

    .line 204
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 207
    goto :goto_0

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 214
    const-string/jumbo v0, "onAnswerIncomingCall no call in low battery map"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    return v1

    .line 221
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/InCallLowBatteryListener;->isLowBatteryDialogShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 224
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/incallui/InCallLowBatteryListener;->PROCESS_LOW_BATTERY:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->maybeProcessLowBatteryIndication(Lcom/android/incallui/Call;)V

    .line 227
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 0
    .param p1, "list"    # Lcom/android/incallui/CallList;

    .prologue
    .line 145
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDetailsChanged call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " details = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0}, Lcom/android/incallui/PrimaryCallTracker;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    .line 313
    const-string/jumbo v0, "onDetailsChanged: no primary call.Clear the map/dismiss low battery alert"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-virtual {p0}, Lcom/android/incallui/InCallLowBatteryListener;->dismissPendingDialogs()V

    .line 316
    return-void

    .line 319
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/incallui/PrimaryCallTracker;->isPrimaryCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    invoke-static {p1}, Lcom/android/incallui/VideoUtils;->isIncomingVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    return-void

    .line 320
    :cond_1
    const-string/jumbo v0, " onDetailsChanged: call is null/Details not for primary call"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    return-void

    .line 331
    :cond_2
    invoke-static {p1}, Lcom/android/incallui/VideoUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 335
    invoke-virtual {p0}, Lcom/android/incallui/InCallLowBatteryListener;->dismissPendingDialogs()V

    .line 336
    return-void

    .line 340
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->maybeAddToLowBatteryMap(Lcom/android/incallui/Call;)V

    .line 341
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->maybeProcessLowBatteryIndication(Lcom/android/incallui/Call;)V

    .line 305
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDisconnect call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    if-nez p1, :cond_0

    .line 167
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->maybeAddToLowBatteryMap(Lcom/android/incallui/Call;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/incallui/InCallLowBatteryListener;->dismissPendingDialogs()V

    .line 134
    return-void
.end method

.method public onUiShowing(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/incallui/InCallLowBatteryListener;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v1}, Lcom/android/incallui/PrimaryCallTracker;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 181
    .local v0, "call":Lcom/android/incallui/Call;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUiShowing showing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " call = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 186
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isChangingConfigurations()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallLowBatteryListener;->onConfigurationChanging(Lcom/android/incallui/Call;)V

    .line 190
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallLowBatteryListener;->maybeProcessLowBatteryIndication(Lcom/android/incallui/Call;)V

    .line 179
    return-void

    .line 183
    :cond_1
    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/incallui/InCallLowBatteryListener;->dismissPendingDialogs()V

    .line 154
    return-void
.end method

.method public setUp(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    new-instance v0, Lcom/android/incallui/PrimaryCallTracker;

    invoke-direct {v0}, Lcom/android/incallui/PrimaryCallTracker;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    .line 95
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mCallList:Lcom/android/incallui/CallList;

    .line 96
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    .line 97
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallLowBatteryListener;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 98
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallLowBatteryListener;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 99
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 100
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)V

    .line 93
    return-void
.end method

.method public tearDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    .line 109
    iput-object v2, p0, Lcom/android/incallui/InCallLowBatteryListener;->mCallList:Lcom/android/incallui/CallList;

    .line 111
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallLowBatteryListener;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 112
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallLowBatteryListener;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 113
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 114
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)Z

    .line 115
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 116
    iput-object v2, p0, Lcom/android/incallui/InCallLowBatteryListener;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    .line 106
    return-void
.end method
