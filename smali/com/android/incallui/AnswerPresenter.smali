.class public Lcom/android/incallui/AnswerPresenter;
.super Lcom/android/incallui/Presenter;
.source "AnswerPresenter.java"

# interfaces
.implements Lcom/android/incallui/CallList$CallUpdateListener;
.implements Lcom/android/incallui/InCallPresenter$InCallUiListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/CallList$Listener;
.implements Lcom/android/incallui/CallList$ActiveSubChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AnswerPresenter$1;,
        Lcom/android/incallui/AnswerPresenter$AnswerUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/AnswerPresenter$AnswerUi;",
        ">;",
        "Lcom/android/incallui/CallList$CallUpdateListener;",
        "Lcom/android/incallui/InCallPresenter$InCallUiListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/CallList$Listener;",
        "Lcom/android/incallui/CallList$ActiveSubChangeListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private imsInterfaceListener:Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;

.field private mCall:[Lcom/android/incallui/Call;

.field private mCallId:[Ljava/lang/String;

.field private final mCalls:Lcom/android/incallui/CallList;

.field private mHasTextMessages:Z

.field private mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 52
    sget v0, Lcom/android/incallui/InCallServiceImpl;->sPhoneCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    .line 53
    sget v0, Lcom/android/incallui/InCallServiceImpl;->sPhoneCount:I

    new-array v0, v0, [Lcom/android/incallui/Call;

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    .line 54
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    .line 55
    iput-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    .line 58
    iput v1, p0, Lcom/android/incallui/AnswerPresenter;->mVideoState:I

    .line 62
    new-instance v0, Lcom/android/incallui/AnswerPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/AnswerPresenter$1;-><init>(Lcom/android/incallui/AnswerPresenter;)V

    .line 61
    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->imsInterfaceListener:Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;

    .line 45
    return-void
.end method

.method private checkSubId(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 126
    invoke-static {p1}, Lcom/android/incallui/QtiCallUtils;->getSubId(I)I

    move-result v0

    .line 127
    .local v0, "subId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private configureAnswerTargetsForSms(Lcom/android/incallui/Call;Ljava/util/List;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/incallui/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 415
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-nez v1, :cond_0

    .line 416
    return-void

    .line 418
    :cond_0
    if-eqz p2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    .line 419
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dialer/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 420
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    .line 419
    if-eqz v1, :cond_2

    .line 421
    iget-boolean v0, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    .line 424
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, v0}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->updateMessageView(Z)V

    .line 428
    invoke-static {p1}, Lcom/android/incallui/VideoUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 429
    if-eqz v0, :cond_3

    .line 430
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    .line 431
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    .line 430
    invoke-static {v2, v3, v0}, Lcom/android/incallui/QtiCallUtils;->getIncomingCallAnswerOptions(Landroid/content/Context;IZ)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    .line 432
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, p2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->configureMessageDialog(Ljava/util/List;)V

    .line 414
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 418
    goto :goto_0

    .line 419
    :cond_2
    const/4 v0, 0x0

    .local v0, "withSms":Z
    goto :goto_1

    .line 434
    .end local v0    # "withSms":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    .line 435
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    .line 434
    invoke-static {v2, v3, v0}, Lcom/android/incallui/QtiCallUtils;->getIncomingCallAnswerOptions(Landroid/content/Context;IZ)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    goto :goto_2

    .line 437
    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/AnswerPresenter;->isCallDeflectSupported()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 442
    if-eqz v0, :cond_5

    .line 443
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    const/16 v2, 0x3f0

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    .line 444
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, p2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->configureMessageDialog(Ljava/util/List;)V

    goto :goto_2

    .line 446
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    const/16 v2, 0x3ef

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    goto :goto_2

    .line 449
    :cond_6
    if-eqz v0, :cond_7

    .line 450
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    .line 451
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, p2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->configureMessageDialog(Ljava/util/List;)V

    goto :goto_2

    .line 453
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    goto :goto_2
.end method

.method private getActivePhoneId()I
    .locals 6

    .prologue
    .line 313
    const/4 v1, -0x1

    .line 314
    .local v1, "phoneId":I
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isDsdaEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 315
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveSubId()I

    move-result v2

    .line 316
    .local v2, "subId":I
    invoke-static {v2}, Lcom/android/incallui/QtiCallUtils;->getPhoneId(I)I

    move-result v1

    .line 325
    .end local v2    # "subId":I
    :cond_0
    return v1

    .line 318
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 319
    sget-object v3, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCall[i] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", i= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    .line 321
    move v1, v0

    .line 318
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isCallDeflectSupported()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 463
    const/4 v1, 0x0

    .line 466
    .local v1, "value":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 467
    const-string/jumbo v4, "qti.ims.call_deflect"

    .line 465
    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 472
    :goto_0
    if-ne v1, v3, :cond_0

    move v2, v3

    :goto_1
    return v2

    .line 468
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCallDeflectSupported exception "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 472
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isVideoUpgradePending(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v0

    .line 195
    const/4 v1, 0x3

    .line 194
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processIncomingCall(Lcom/android/incallui/Call;)V
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 216
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSubId()I

    move-result v1

    .line 217
    .local v1, "subId":I
    invoke-static {v1}, Lcom/android/incallui/QtiCallUtils;->getPhoneId(I)I

    move-result v0

    .line 218
    .local v0, "phoneId":I
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 219
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    aput-object p1, v3, v0

    .line 221
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    .line 223
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 225
    sget-object v3, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Showing incoming for call id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", subId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    iput v3, p0, Lcom/android/incallui/AnswerPresenter;->mVideoState:I

    .line 228
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 229
    .local v2, "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v2}, Lcom/android/incallui/AnswerPresenter;->configureAnswerTargetsForSms(Lcom/android/incallui/Call;Ljava/util/List;)V

    .line 215
    .end local v2    # "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private processVideoUpgradeRequestCall(Lcom/android/incallui/Call;)V
    .locals 7
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 251
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " processVideoUpgradeRequestCall call="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSubId()I

    move-result v3

    .line 253
    .local v3, "subId":I
    invoke-static {v3}, Lcom/android/incallui/QtiCallUtils;->getPhoneId(I)I

    move-result v2

    .line 254
    .local v2, "phoneId":I
    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 255
    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    aput-object p1, v5, v2

    .line 258
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 260
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    .line 261
    .local v0, "currentVideoState":I
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getRequestedVideoState()I

    move-result v1

    .line 263
    .local v1, "modifyToVideoState":I
    if-ne v0, v1, :cond_0

    .line 264
    const-string/jumbo v5, "processVideoUpgradeRequestCall: Video states are same. Return."

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    return-void

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    .line 270
    .local v4, "ui":Lcom/android/incallui/AnswerPresenter$AnswerUi;
    if-nez v4, :cond_1

    .line 271
    const-string/jumbo v5, "Ui is null. Can\'t process upgrade request"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    return-void

    .line 274
    :cond_1
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    .line 275
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v5}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0, v1}, Lcom/android/incallui/QtiCallUtils;->getSessionModificationOptions(Landroid/content/Context;II)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    .line 250
    return-void
.end method

.method private showAnswerUi(Z)Z
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 234
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 235
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->showAnswerFragment(Z)V

    .line 238
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, p1}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->onShowAnswerUi(Z)V

    .line 241
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 243
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 244
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, p1}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->onShowAnswerUi(Z)V

    .line 246
    :cond_2
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onActiveSubChanged(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 489
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 490
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {p1}, Lcom/android/incallui/QtiCallUtils;->getPhoneId(I)I

    move-result v1

    .line 491
    .local v1, "phoneId":I
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-ne v3, v4, :cond_1

    .line 492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Show incoming for call id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 494
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    .line 495
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    .line 494
    invoke-virtual {v3, v4}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 496
    .local v2, "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v0, v2}, Lcom/android/incallui/AnswerPresenter;->configureAnswerTargetsForSms(Lcom/android/incallui/Call;Ljava/util/List;)V

    .line 488
    .end local v2    # "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3, p1}, Lcom/android/incallui/CallList;->hasAnyLiveCall(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Hide incoming for call id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    goto :goto_0

    .line 502
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No incoming call present for sub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAnswer(ILandroid/content/Context;)V
    .locals 3
    .param p1, "videoState"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/android/incallui/AnswerPresenter;->getActivePhoneId()I

    move-result v0

    .line 330
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnswer  mCallId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 332
    :cond_0
    return-void

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v1

    .line 336
    const/4 v2, 0x3

    .line 335
    if-ne v1, v2, :cond_2

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnswer (upgradeCall) mCallId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " videoState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/incallui/InCallPresenter;->acceptUpgradeRequest(ILandroid/content/Context;)V

    .line 328
    :goto_0
    return-void

    .line 340
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnswer (answerCall) mCallId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " videoState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/android/incallui/InCallPresenter;->answerIncomingCall(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onCallChanged(Lcom/android/incallui/Call;)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v7, 0x0

    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCallStateChange() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_4

    .line 288
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerPresenter;->isVideoUpgradePending(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 289
    .local v1, "isUpgradePending":Z
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSubId()I

    move-result v3

    .line 290
    .local v3, "subId":I
    invoke-static {v3}, Lcom/android/incallui/QtiCallUtils;->getPhoneId(I)I

    move-result v2

    .line 291
    .local v2, "phoneId":I
    if-nez v1, :cond_0

    .line 293
    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    iget-object v6, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 296
    :cond_0
    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 297
    .local v0, "incall":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    if-eqz v1, :cond_3

    .line 298
    :cond_1
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    .line 303
    :goto_0
    iput-boolean v7, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    .line 285
    .end local v0    # "incall":Lcom/android/incallui/Call;
    .end local v1    # "isUpgradePending":Z
    .end local v2    # "phoneId":I
    .end local v3    # "subId":I
    :cond_2
    :goto_1
    return-void

    .line 300
    .restart local v0    # "incall":Lcom/android/incallui/Call;
    .restart local v1    # "isUpgradePending":Z
    .restart local v2    # "phoneId":I
    .restart local v3    # "subId":I
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    goto :goto_0

    .line 304
    .end local v0    # "incall":Lcom/android/incallui/Call;
    .end local v1    # "isUpgradePending":Z
    .end local v2    # "phoneId":I
    .end local v3    # "subId":I
    :cond_4
    iget-boolean v5, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/incallui/AnswerPresenter;->mVideoState:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 305
    :cond_5
    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 306
    .local v4, "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v5

    iput v5, p0, Lcom/android/incallui/AnswerPresenter;->mVideoState:I

    .line 307
    invoke-direct {p0, p1, v4}, Lcom/android/incallui/AnswerPresenter;->configureAnswerTargetsForSms(Lcom/android/incallui/Call;Ljava/util/List;)V

    goto :goto_1
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 0
    .param p1, "list"    # Lcom/android/incallui/CallList;

    .prologue
    .line 154
    return-void
.end method

.method public onChildNumberChange()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public onDecline(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 350
    invoke-direct {p0}, Lcom/android/incallui/AnswerPresenter;->getActivePhoneId()I

    move-result v0

    .line 351
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDecline mCallId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 353
    :cond_0
    return-void

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v1

    .line 356
    const/4 v2, 0x3

    .line 355
    if-ne v1, v2, :cond_2

    .line 357
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/InCallPresenter;->declineUpgradeRequest(Landroid/content/Context;)V

    .line 349
    :goto_0
    return-void

    .line 359
    :cond_2
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onDeflect(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 374
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 375
    return-void

    .line 377
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDeflect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 379
    invoke-static {v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getCallDeflectNumber(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "deflectCallNumber":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 383
    const-string/jumbo v3, "getCallDeflectNumber is null or Empty."

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    const v3, 0x7f0d0355

    invoke-static {p1, v3}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;I)V

    .line 373
    :goto_0
    return-void

    .line 386
    :cond_1
    const/4 v2, 0x0

    .line 388
    .local v2, "phoneId":I
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sending deflect request with Phone id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 389
    const-string/jumbo v4, " to "

    .line 388
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    invoke-static {}, Lorg/codeaurora/ims/QtiImsExtManager;->getInstance()Lorg/codeaurora/ims/QtiImsExtManager;

    move-result-object v3

    .line 391
    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->imsInterfaceListener:Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;

    .line 390
    invoke-virtual {v3, v2, v0, v4}, Lorg/codeaurora/ims/QtiImsExtManager;->sendCallDeflectRequest(ILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Lorg/codeaurora/ims/QtiImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v1

    .line 393
    .local v1, "e":Lorg/codeaurora/ims/QtiImsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendCallDeflectRequest exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 395
    const v4, 0x7f0d0356

    .line 394
    invoke-static {v3, v4}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 160
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSubId()I

    move-result v1

    .line 161
    .local v1, "subId":I
    invoke-static {v1}, Lcom/android/incallui/QtiCallUtils;->getPhoneId(I)I

    move-result v0

    .line 162
    .local v0, "phoneId":I
    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 165
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public onDismissDialog()V
    .locals 1

    .prologue
    .line 411
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    .line 410
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 150
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 132
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getSubId()I

    move-result v2

    .line 133
    .local v2, "subId":I
    invoke-static {v2}, Lcom/android/incallui/QtiCallUtils;->getPhoneId(I)I

    move-result v1

    .line 134
    .local v1, "phoneId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onIncomingCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 136
    .local v0, "modifyCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 137
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    .line 138
    const-string/jumbo v3, "declining upgrade request id: "

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 140
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->declineUpgradeRequest()V

    .line 142
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "call.getId(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mCallId[phoneId]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 145
    invoke-direct {p0, p3}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall(Lcom/android/incallui/Call;)V

    .line 131
    :cond_1
    return-void
.end method

.method public onLastForwardedNumberChange()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public onSessionModificationStateChange(I)V
    .locals 5
    .param p1, "sessionModificationState"    # I

    .prologue
    const/4 v2, 0x0

    .line 170
    const/4 v3, 0x3

    .line 169
    if-ne p1, v3, :cond_1

    const/4 v1, 0x1

    .line 172
    .local v1, "isUpgradePending":Z
    :goto_0
    if-nez v1, :cond_3

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v3, Lcom/android/incallui/InCallServiceImpl;->sPhoneCount:I

    if-ge v0, v3, :cond_2

    .line 175
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 176
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 174
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "isUpgradePending":Z
    :cond_1
    move v1, v2

    .line 169
    goto :goto_0

    .line 179
    .restart local v0    # "i":I
    .restart local v1    # "isUpgradePending":Z
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    .line 168
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public onText()V
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v0}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/TelecomUtil;->silenceRinger(Landroid/content/Context;)V

    .line 366
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v0}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showMessageDialog()V

    .line 363
    :cond_0
    return-void
.end method

.method public onUiShowing(Z)V
    .locals 8
    .param p1, "showing"    # Z

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 74
    if-eqz p1, :cond_5

    .line 75
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    .line 76
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3, p0}, Lcom/android/incallui/CallList;->addActiveSubChangeListener(Lcom/android/incallui/CallList$ActiveSubChangeListener;)V

    .line 80
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v3, Lcom/android/incallui/InCallServiceImpl;->sPhoneCount:I

    if-ge v1, v3, :cond_3

    .line 81
    invoke-static {v1}, Lcom/android/incallui/QtiCallUtils;->getSubId(I)I

    move-result v2

    .line 82
    .local v2, "subId":I
    invoke-direct {p0, v1}, Lcom/android/incallui/AnswerPresenter;->checkSubId(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3, v6, v5, v2}, Lcom/android/incallui/CallList;->getCallWithState(III)Lcom/android/incallui/Call;

    move-result-object v0

    .line 84
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 85
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3, v7, v5, v2}, Lcom/android/incallui/CallList;->getCallWithState(III)Lcom/android/incallui/Call;

    move-result-object v0

    .line 87
    :cond_0
    if-eqz v0, :cond_1

    .line 88
    invoke-direct {p0, v0}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall(Lcom/android/incallui/Call;)V

    .line 80
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_2
    sget-object v3, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "No valid sub"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 94
    .end local v2    # "subId":I
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 95
    .restart local v0    # "call":Lcom/android/incallui/Call;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVideoUpgradeRequestCall call ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    if-eqz v0, :cond_4

    .line 97
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    .line 98
    invoke-direct {p0, v0}, Lcom/android/incallui/AnswerPresenter;->processVideoUpgradeRequestCall(Lcom/android/incallui/Call;)V

    .line 73
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_4
    return-void

    .line 101
    .end local v1    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    .line 104
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    sget v3, Lcom/android/incallui/InCallServiceImpl;->sPhoneCount:I

    if-ge v1, v3, :cond_4

    .line 105
    invoke-static {v1}, Lcom/android/incallui/QtiCallUtils;->getSubId(I)I

    move-result v2

    .line 106
    .restart local v2    # "subId":I
    invoke-direct {p0, v1}, Lcom/android/incallui/AnswerPresenter;->checkSubId(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 107
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3, v6, v5, v2}, Lcom/android/incallui/CallList;->getCallWithState(III)Lcom/android/incallui/Call;

    move-result-object v0

    .line 108
    .restart local v0    # "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_6

    .line 109
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3, v7, v5, v2}, Lcom/android/incallui/CallList;->getCallWithState(III)Lcom/android/incallui/Call;

    move-result-object v0

    .line 111
    :cond_6
    if-nez v0, :cond_7

    .line 112
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/incallui/CallList;->getCallWithState(III)Lcom/android/incallui/Call;

    move-result-object v0

    .line 114
    :cond_7
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_8

    if-nez v0, :cond_8

    .line 115
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 116
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCalls:Lcom/android/incallui/CallList;

    invoke-virtual {v3, p0}, Lcom/android/incallui/CallList;->removeActiveSubChangeListener(Lcom/android/incallui/CallList$ActiveSubChangeListener;)V

    .line 104
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 119
    :cond_9
    sget-object v3, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "No valid sub"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUpgradeToVideo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " call="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    .line 202
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerPresenter;->isVideoUpgradePending(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 203
    .local v1, "isUpgradePending":Z
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    .line 204
    .local v0, "inCallPresenter":Lcom/android/incallui/InCallPresenter;
    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v3, :cond_1

    .line 206
    const-string/jumbo v2, "declining upgrade request"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->declineUpgradeRequest(Landroid/content/Context;)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    if-eqz v1, :cond_0

    .line 210
    const-string/jumbo v2, "process upgrade request as no MT call"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerPresenter;->processVideoUpgradeRequestCall(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/android/incallui/AnswerPresenter;->getActivePhoneId()I

    move-result v0

    .line 402
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendTextToDefaultActivity()...phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 404
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->onDismissDialog()V

    .line 400
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 508
    const-string/jumbo v1, "reset "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    .line 510
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:[Ljava/lang/String;

    aput-object v2, v1, v0

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 514
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:[Lcom/android/incallui/Call;

    aput-object v2, v1, v0

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 507
    :cond_1
    return-void
.end method
