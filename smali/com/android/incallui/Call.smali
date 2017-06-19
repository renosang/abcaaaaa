.class public Lcom/android/incallui/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation build Lcom/android/contacts/common/testing/NeededForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/Call$1;,
        Lcom/android/incallui/Call$2;,
        Lcom/android/incallui/Call$LogState;,
        Lcom/android/incallui/Call$State;,
        Lcom/android/incallui/Call$VideoSettings;
    }
.end annotation


# static fields
.field private static final ID_PREFIX:Ljava/lang/String;

.field private static sIdCounter:I


# instance fields
.field private mCallSubject:Ljava/lang/String;

.field private final mChildCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChildNumber:Ljava/lang/String;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mHandle:Landroid/net/Uri;

.field private final mId:Ljava/lang/String;

.field mIsActiveSub:Z

.field private mIsCallSubjectSupported:Z

.field private mIsEmergencyCall:Z

.field private mIsVideoCallCallbackRegistered:Z

.field private mLastForwardedNumber:Ljava/lang/String;

.field private mLogState:Lcom/android/incallui/Call$LogState;

.field private mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mQtiImsInterfaceListener:Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;

.field private mRequestedVideoState:I

.field private mSessionModificationState:I

.field private mState:I

.field private mTelecomCall:Landroid/telecom/Call;

.field private final mTelecomCallCallback:Landroid/telecom/Call$Callback;

.field private mTimeAddedMs:J

.field private mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

.field private final mVideoSettings:Lcom/android/incallui/Call$VideoSettings;

.field private mVideoState:I


# direct methods
.method static synthetic -wrap0(Lcom/android/incallui/Call;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/Call;->update()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/incallui/Call;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/Call;->ID_PREFIX:Ljava/lang/String;

    .line 303
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/Call;->sIdCounter:I

    .line 64
    return-void
.end method

.method constructor <init>(I)V
    .locals 3
    .param p1, "state"    # I
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    new-instance v0, Lcom/android/incallui/Call$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/Call$1;-><init>(Lcom/android/incallui/Call;)V

    .line 305
    iput-object v0, p0, Lcom/android/incallui/Call;->mTelecomCallCallback:Landroid/telecom/Call$Callback;

    .line 373
    iput-boolean v1, p0, Lcom/android/incallui/Call;->mIsActiveSub:Z

    .line 379
    iput v1, p0, Lcom/android/incallui/Call;->mState:I

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    .line 383
    new-instance v0, Lcom/android/incallui/Call$VideoSettings;

    invoke-direct {v0}, Lcom/android/incallui/Call$VideoSettings;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/Call;->mVideoSettings:Lcom/android/incallui/Call$VideoSettings;

    .line 389
    iput v1, p0, Lcom/android/incallui/Call;->mRequestedVideoState:I

    .line 406
    new-instance v0, Lcom/android/incallui/Call$LogState;

    invoke-direct {v0}, Lcom/android/incallui/Call$LogState;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/Call;->mLogState:Lcom/android/incallui/Call$LogState;

    .line 978
    new-instance v0, Lcom/android/incallui/Call$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/Call$2;-><init>(Lcom/android/incallui/Call;)V

    .line 977
    iput-object v0, p0, Lcom/android/incallui/Call;->mQtiImsInterfaceListener:Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/incallui/Call;->ID_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/incallui/Call;->sIdCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/incallui/Call;->sIdCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    .line 415
    invoke-virtual {p0, p1}, Lcom/android/incallui/Call;->setState(I)V

    .line 412
    return-void
.end method

.method public constructor <init>(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "telecomCall"    # Landroid/telecom/Call;

    .prologue
    const/4 v1, 0x0

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    new-instance v0, Lcom/android/incallui/Call$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/Call$1;-><init>(Lcom/android/incallui/Call;)V

    .line 305
    iput-object v0, p0, Lcom/android/incallui/Call;->mTelecomCallCallback:Landroid/telecom/Call$Callback;

    .line 373
    iput-boolean v1, p0, Lcom/android/incallui/Call;->mIsActiveSub:Z

    .line 379
    iput v1, p0, Lcom/android/incallui/Call;->mState:I

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    .line 383
    new-instance v0, Lcom/android/incallui/Call$VideoSettings;

    invoke-direct {v0}, Lcom/android/incallui/Call$VideoSettings;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/Call;->mVideoSettings:Lcom/android/incallui/Call$VideoSettings;

    .line 389
    iput v1, p0, Lcom/android/incallui/Call;->mRequestedVideoState:I

    .line 406
    new-instance v0, Lcom/android/incallui/Call$LogState;

    invoke-direct {v0}, Lcom/android/incallui/Call$LogState;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/Call;->mLogState:Lcom/android/incallui/Call$LogState;

    .line 978
    new-instance v0, Lcom/android/incallui/Call$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/Call$2;-><init>(Lcom/android/incallui/Call;)V

    .line 977
    iput-object v0, p0, Lcom/android/incallui/Call;->mQtiImsInterfaceListener:Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;

    .line 419
    iput-object p1, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/incallui/Call;->ID_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/incallui/Call;->sIdCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/incallui/Call;->sIdCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    .line 422
    invoke-direct {p0}, Lcom/android/incallui/Call;->updateFromTelecomCall()V

    .line 424
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecomCallCallback:Landroid/telecom/Call$Callback;

    invoke-virtual {v0, v1}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    .line 426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/Call;->mTimeAddedMs:J

    .line 418
    return-void
.end method

.method public static areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call1"    # Lcom/android/incallui/Call;
    .param p1, "call2"    # Lcom/android/incallui/Call;

    .prologue
    .line 946
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 947
    const/4 v0, 0x1

    return v0

    .line 948
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 949
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 953
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static areSameNumber(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call1"    # Lcom/android/incallui/Call;
    .param p1, "call2"    # Lcom/android/incallui/Call;

    .prologue
    .line 957
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 958
    const/4 v0, 0x1

    return v0

    .line 959
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 960
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 964
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private maybeCancelVideoUpgrade(I)V
    .locals 3
    .param p1, "newVideoState"    # I

    .prologue
    .line 591
    iget v1, p0, Lcom/android/incallui/Call;->mVideoState:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 593
    .local v0, "isVideoStateChanged":Z
    :goto_0
    iget v1, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 596
    const-string/jumbo v1, "maybeCancelVideoUpgrade : cancelling upgrade notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 599
    :cond_0
    iput p1, p0, Lcom/android/incallui/Call;->mVideoState:I

    .line 590
    return-void

    .line 591
    .end local v0    # "isVideoStateChanged":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isVideoStateChanged":Z
    goto :goto_0
.end method

.method private static translateState(I)I
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 602
    packed-switch p0, :pswitch_data_0

    .line 621
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 605
    :pswitch_1
    const/16 v0, 0xd

    return v0

    .line 607
    :pswitch_2
    const/16 v0, 0xc

    return v0

    .line 609
    :pswitch_3
    const/4 v0, 0x6

    return v0

    .line 611
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 613
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 615
    :pswitch_6
    const/16 v0, 0x8

    return v0

    .line 617
    :pswitch_7
    const/16 v0, 0xa

    return v0

    .line 619
    :pswitch_8
    const/16 v0, 0x9

    return v0

    .line 602
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method private update()V
    .locals 3

    .prologue
    .line 442
    const-string/jumbo v1, "Update"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 444
    .local v0, "oldState":I
    invoke-direct {p0}, Lcom/android/incallui/Call;->updateFromTelecomCall()V

    .line 445
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 446
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->onDisconnect(Lcom/android/incallui/Call;)V

    .line 450
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 441
    return-void

    .line 448
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method private updateEmergencyCallState()V
    .locals 2

    .prologue
    .line 931
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v0

    .line 933
    .local v0, "handle":Landroid/net/Uri;
    if-nez v0, :cond_0

    const-string/jumbo v1, ""

    .line 932
    :goto_0
    invoke-static {v1}, Lcom/android/incallui/QtiCallUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/Call;->mIsEmergencyCall:Z

    .line 930
    return-void

    .line 933
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateFromTelecomCall()V
    .locals 10

    .prologue
    .line 454
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateFromTelecomCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v8}, Landroid/telecom/Call;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    iget-object v7, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v7}, Landroid/telecom/Call;->getState()I

    move-result v7

    invoke-static {v7}, Lcom/android/incallui/Call;->translateState(I)I

    move-result v6

    .line 456
    .local v6, "translatedState":I
    iget v7, p0, Lcom/android/incallui/Call;->mState:I

    const/16 v8, 0xe

    if-eq v7, v8, :cond_0

    .line 457
    invoke-virtual {p0, v6}, Lcom/android/incallui/Call;->setState(I)V

    .line 458
    iget-object v7, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v7}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Call$Details;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/incallui/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    .line 459
    iget-object v7, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v7}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/incallui/Call;->maybeCancelVideoUpgrade(I)V

    .line 462
    :cond_0
    iget-object v7, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v7}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 463
    iget-object v7, p0, Lcom/android/incallui/Call;->mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

    if-nez v7, :cond_1

    .line 464
    new-instance v7, Lcom/android/incallui/InCallVideoCallCallback;

    invoke-direct {v7, p0}, Lcom/android/incallui/InCallVideoCallCallback;-><init>(Lcom/android/incallui/Call;)V

    iput-object v7, p0, Lcom/android/incallui/Call;->mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

    .line 466
    :cond_1
    iget-object v7, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v7}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/Call;->mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

    invoke-virtual {v7, v8}, Landroid/telecom/InCallService$VideoCall;->registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V

    .line 467
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/incallui/Call;->mIsVideoCallCallbackRegistered:Z

    .line 470
    :cond_2
    iget-object v7, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 471
    iget-object v7, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v7}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 472
    .local v4, "numChildCalls":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_3

    .line 473
    iget-object v8, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    .line 474
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    .line 475
    iget-object v7, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v7}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/Call;

    .line 474
    invoke-virtual {v9, v7}, Lcom/android/incallui/CallList;->getCallByTelecomCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    .line 473
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    :cond_3
    iget-object v7, p0, Lcom/android/incallui/Call;->mLogState:Lcom/android/incallui/Call$LogState;

    iget-object v8, p0, Lcom/android/incallui/Call;->mLogState:Lcom/android/incallui/Call$LogState;

    iget v8, v8, Lcom/android/incallui/Call$LogState;->conferencedCalls:I

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Lcom/android/incallui/Call$LogState;->conferencedCalls:I

    .line 482
    iget-object v7, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v7}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/incallui/Call;->updateFromCallExtras(Landroid/os/Bundle;)V

    .line 486
    iget-object v7, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v7}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v2

    .line 487
    .local v2, "newHandle":Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/incallui/Call;->mHandle:Landroid/net/Uri;

    invoke-static {v7, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 488
    iput-object v2, p0, Lcom/android/incallui/Call;->mHandle:Landroid/net/Uri;

    .line 489
    invoke-direct {p0}, Lcom/android/incallui/Call;->updateEmergencyCallState()V

    .line 494
    :cond_4
    iget-object v7, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v7}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 495
    .local v3, "newPhoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v7, p0, Lcom/android/incallui/Call;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v7, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 496
    iput-object v3, p0, Lcom/android/incallui/Call;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 498
    iget-object v7, p0, Lcom/android/incallui/Call;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-eqz v7, :cond_5

    .line 499
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 501
    .local v1, "mgr":Landroid/telecom/TelecomManager;
    iget-object v7, p0, Lcom/android/incallui/Call;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v1, v7}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->getPhoneAccount(Landroid/telecom/TelecomManager;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v5

    .line 502
    .local v5, "phoneAccount":Landroid/telecom/PhoneAccount;
    if-eqz v5, :cond_5

    .line 504
    const/16 v7, 0x40

    .line 503
    invoke-virtual {v5, v7}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/incallui/Call;->mIsCallSubjectSupported:Z

    .line 453
    .end local v1    # "mgr":Landroid/telecom/TelecomManager;
    .end local v5    # "phoneAccount":Landroid/telecom/PhoneAccount;
    :cond_5
    return-void
.end method


# virtual methods
.method protected areCallExtrasCorrupted(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "callExtras"    # Landroid/os/Bundle;

    .prologue
    .line 525
    :try_start_0
    const-string/jumbo v1, "android.telecom.extra.CHILD_ADDRESS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    const/4 v1, 0x0

    return v1

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "CallExtras is corrupted, ignoring exception"

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 529
    const/4 v1, 0x1

    return v1
.end method

.method public can(I)Z
    .locals 9
    .param p1, "capabilities"    # I

    .prologue
    const/4 v7, 0x0

    .line 745
    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->getRapidDisplay()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 746
    return v7

    .line 750
    :cond_0
    iget-object v8, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v8}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v6

    .line 752
    .local v6, "supportedCapabilities":I
    and-int/lit8 v8, p1, 0x4

    if-eqz v8, :cond_5

    .line 753
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->isDsdaEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 755
    iget-object v8, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v8}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v2

    .line 756
    .local v2, "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    const/4 v3, 0x0

    .line 757
    .local v3, "hasConferenceableCall":Z
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 758
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSubId()I

    move-result v5

    .line 759
    .local v5, "subId":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    .line 760
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    .line 761
    .local v4, "phHandle":Landroid/telecom/PhoneAccountHandle;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v5, :cond_1

    .line 762
    const/4 v3, 0x1

    .line 767
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "call$iterator":Ljava/util/Iterator;
    .end local v4    # "phHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v5    # "subId":I
    :cond_2
    if-nez v3, :cond_4

    .line 768
    and-int/lit8 v8, v6, 0x4

    if-nez v8, :cond_4

    .line 771
    return v7

    .line 775
    .end local v2    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .end local v3    # "hasConferenceableCall":Z
    :cond_3
    iget-object v8, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v8}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 776
    and-int/lit8 v8, v6, 0x4

    if-nez v8, :cond_4

    .line 779
    return v7

    .line 781
    :cond_4
    and-int/lit8 p1, p1, -0x5

    .line 783
    :cond_5
    iget-object v8, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v8}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v8

    and-int/2addr v8, p1

    if-ne p1, v8, :cond_6

    const/4 v7, 0x1

    :cond_6
    return v7
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 804
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public getCallSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/incallui/Call;->mCallSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getCannedSmsResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getCannedTextResponses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildCallIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    return-object v0
.end method

.method public getChildNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/incallui/Call;->mChildNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 682
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    .line 683
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCnapNamePresentation()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 677
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallerDisplayNamePresentation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getConnectTimeMillis()J
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getConnectTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 2

    .prologue
    .line 725
    iget v0, p0, Lcom/android/incallui/Call;->mState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/Call;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0

    .line 729
    :cond_1
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 691
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getGatewayInfo()Landroid/telecom/GatewayInfo;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 800
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 643
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getLastForwardedNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/incallui/Call;->mLastForwardedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getLogState()Lcom/android/incallui/Call$LogState;
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/incallui/Call;->mLogState:Lcom/android/incallui/Call$LogState;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-static {v0}, Lcom/android/incallui/util/TelecomCallUtil;->getNumber(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberPresentation()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 673
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getHandlePresentation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 867
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v0

    .line 868
    .local v0, "parentCall":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->getCallByTelecomCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 869
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->getCallByTelecomCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 871
    :cond_0
    return-object v2
.end method

.method public getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    .locals 3
    .param p1, "ph"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    const/4 v2, 0x0

    .line 809
    if-nez p1, :cond_0

    .line 810
    return-object v2

    .line 813
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 814
    .local v0, "telecomM":Landroid/telecom/TelecomManager;
    if-nez v0, :cond_1

    .line 815
    return-object v2

    .line 818
    :cond_1
    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v1

    return-object v1
.end method

.method public getPhoneAccountLabel()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 822
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 823
    .local v1, "ph":Landroid/telecom/PhoneAccountHandle;
    if-nez v1, :cond_0

    .line 824
    return-object v2

    .line 826
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/Call;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 827
    .local v0, "pa":Landroid/telecom/PhoneAccount;
    if-nez v0, :cond_1

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method public getRequestedVideoState()I
    .locals 1

    .prologue
    .line 942
    iget v0, p0, Lcom/android/incallui/Call;->mRequestedVideoState:I

    return v0
.end method

.method public getSessionModificationState()I
    .locals 1

    .prologue
    .line 973
    iget v0, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 652
    const/16 v0, 0xb

    return v0

    .line 654
    :cond_0
    iget v0, p0, Lcom/android/incallui/Call;->mState:I

    return v0
.end method

.method public getSubId()I
    .locals 4

    .prologue
    .line 837
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 838
    .local v1, "ph":Landroid/telecom/PhoneAccountHandle;
    if-eqz v1, :cond_1

    .line 840
    :try_start_0
    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 841
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sub id is not a number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 846
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v2

    return v2

    .line 848
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public getTelecomCall()Landroid/telecom/Call;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    return-object v0
.end method

.method public getTransferCapabilities()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 988
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 989
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    :goto_0
    return v1

    .line 990
    :cond_0
    const-string/jumbo v2, "transferType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public getTrueState()I
    .locals 1

    .prologue
    .line 659
    iget v0, p0, Lcom/android/incallui/Call;->mState:I

    return v0
.end method

.method public getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 858
    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/Call;->mIsVideoCallCallbackRegistered:Z

    if-eqz v1, :cond_0

    .line 859
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    .line 858
    :cond_0
    return-object v0
.end method

.method public getVideoSettings()Lcom/android/incallui/Call$VideoSettings;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/incallui/Call;->mVideoSettings:Lcom/android/incallui/Call$VideoSettings;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v0

    return v0
.end method

.method public getWifiQuality()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1062
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1063
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    :goto_0
    return v1

    .line 1064
    :cond_0
    const-string/jumbo v2, "VoWiFiCallQuality"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public hasProperty(I)Z
    .locals 1
    .param p1, "property"    # I

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v0

    return v0
.end method

.method public isCallSubjectSupported()Z
    .locals 1

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/android/incallui/Call;->mIsCallSubjectSupported:Z

    return v0
.end method

.method public isConferenceCall()Z
    .locals 1

    .prologue
    .line 796
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v0

    return v0
.end method

.method public isEmergencyCall()Z
    .locals 1

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/android/incallui/Call;->mIsEmergencyCall:Z

    return v0
.end method

.method public isIncomingConfCall()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1050
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 1051
    .local v0, "callState":I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    .line 1052
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1053
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    .line 1055
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isIncomingConfCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1056
    return v2

    .line 1054
    :cond_1
    const-string/jumbo v3, "incomingConference"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .local v2, "incomingConf":Z
    goto :goto_0

    .line 1058
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "incomingConf":Z
    :cond_2
    return v4
.end method

.method public isVideoCall(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 879
    invoke-static {p1}, Lcom/android/contacts/common/CallUtil;->isVideoEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/VideoUtils;->isVideoCall(I)Z

    move-result v0

    .line 879
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logCallInitiationType()V
    .locals 4

    .prologue
    .line 1015
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1016
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getLogState()Lcom/android/incallui/Call$LogState;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/incallui/Call$LogState;->callInitiationMethod:I

    .line 1014
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1018
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getLogState()Lcom/android/incallui/Call$LogState;

    move-result-object v0

    .line 1019
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "com.android.dialer.EXTRA_CALL_INITIATION_TYPE"

    .line 1020
    const/16 v3, 0xc

    .line 1019
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1018
    iput v1, v0, Lcom/android/incallui/Call$LogState;->callInitiationMethod:I

    goto :goto_0
.end method

.method public sendCallTransferRequest(ILjava/lang/String;)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 994
    const/4 v1, 0x0

    .line 996
    .local v1, "phoneId":I
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendCallTransferRequest: Phoneid-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " type-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 997
    const-string/jumbo v3, " number: "

    .line 996
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 998
    invoke-static {}, Lorg/codeaurora/ims/QtiImsExtManager;->getInstance()Lorg/codeaurora/ims/QtiImsExtManager;

    move-result-object v2

    .line 999
    iget-object v3, p0, Lcom/android/incallui/Call;->mQtiImsInterfaceListener:Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;

    .line 998
    invoke-virtual {v2, v1, p1, p2, v3}, Lorg/codeaurora/ims/QtiImsExtManager;->sendCallTransferRequest(IILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Lorg/codeaurora/ims/QtiImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
    const/4 v2, 0x1

    return v2

    .line 1000
    :catch_0
    move-exception v0

    .line 1001
    .local v0, "e":Lorg/codeaurora/ims/QtiImsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendCallDeflectRequest exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1002
    const/4 v2, 0x0

    return v2
.end method

.method public setDisconnectCause(Landroid/telecom/DisconnectCause;)V
    .locals 2
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/incallui/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 734
    iget-object v0, p0, Lcom/android/incallui/Call;->mLogState:Lcom/android/incallui/Call$LogState;

    iget-object v1, p0, Lcom/android/incallui/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    iput-object v1, v0, Lcom/android/incallui/Call$LogState;->disconnectCause:Landroid/telecom/DisconnectCause;

    .line 732
    return-void
.end method

.method public setRequestedVideoState(I)V
    .locals 2
    .param p1, "videoState"    # I

    .prologue
    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRequestedVideoState - video state= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 895
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 896
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    .line 897
    const-string/jumbo v0, "setRequestedVideoState - Clearing session modification state"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 898
    return-void

    .line 901
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    .line 902
    iput p1, p0, Lcom/android/incallui/Call;->mRequestedVideoState:I

    .line 903
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->onUpgradeToVideo(Lcom/android/incallui/Call;)V

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRequestedVideoState - mSessionModificationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 906
    iget v1, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    .line 905
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 906
    const-string/jumbo v1, " video state= "

    .line 905
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 907
    invoke-direct {p0}, Lcom/android/incallui/Call;->update()V

    .line 893
    return-void
.end method

.method public setSessionModificationState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 917
    iget v1, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 918
    .local v0, "hasChanged":Z
    :goto_0
    iput p1, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    .line 919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSessionModificationState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mSessionModificationState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 920
    iget v2, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    .line 919
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 921
    if-eqz v0, :cond_0

    .line 922
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/android/incallui/CallList;->onSessionModificationStateChange(Lcom/android/incallui/Call;I)V

    .line 916
    :cond_0
    return-void

    .line 917
    .end local v0    # "hasChanged":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "hasChanged":Z
    goto :goto_0
.end method

.method public setState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 663
    iput p1, p0, Lcom/android/incallui/Call;->mState:I

    .line 664
    iget v2, p0, Lcom/android/incallui/Call;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 665
    iget-object v0, p0, Lcom/android/incallui/Call;->mLogState:Lcom/android/incallui/Call$LogState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/incallui/Call$LogState;->isIncoming:Z

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    iget v2, p0, Lcom/android/incallui/Call;->mState:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 667
    iget-object v2, p0, Lcom/android/incallui/Call;->mLogState:Lcom/android/incallui/Call$LogState;

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-nez v3, :cond_2

    :goto_1
    iput-wide v0, v2, Lcom/android/incallui/Call$LogState;->duration:J

    goto :goto_0

    .line 668
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    goto :goto_1
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1046
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-nez v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1032
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "[%s, %s, %s, children:%s, parent:%s, conferenceable:%s, videoState:%s, mSessionModificationState:%d, VideoSettings:%s, mIsActivSub:%b]"

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    .line 1034
    iget-object v3, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1035
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 1036
    iget-object v3, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v3}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/Call$Details;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 1037
    iget-object v3, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 1038
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 1039
    iget-object v3, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v3}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 1040
    iget-object v3, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v3}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 1041
    iget v3, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    .line 1042
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/android/incallui/Call;->mIsActiveSub:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v2, v4

    .line 1032
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateFromCallExtras(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "callExtras"    # Landroid/os/Bundle;

    .prologue
    .line 534
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/Call;->areCallExtrasCorrupted(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 539
    :cond_0
    return-void

    .line 542
    :cond_1
    const-string/jumbo v4, "android.telecom.extra.CHILD_ADDRESS"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 543
    const-string/jumbo v4, "android.telecom.extra.CHILD_ADDRESS"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, "childNumber":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/incallui/Call;->mChildNumber:Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 545
    iput-object v1, p0, Lcom/android/incallui/Call;->mChildNumber:Ljava/lang/String;

    .line 546
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/incallui/CallList;->onChildNumberChange(Lcom/android/incallui/Call;)V

    .line 553
    .end local v1    # "childNumber":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "android.telecom.extra.LAST_FORWARDED_NUMBER"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 555
    const-string/jumbo v4, "android.telecom.extra.LAST_FORWARDED_NUMBER"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 557
    .local v3, "lastForwardedNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    .line 558
    const/4 v2, 0x0

    .line 559
    .local v2, "lastForwardedNumber":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 561
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 560
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "lastForwardedNumber":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 564
    :cond_3
    iget-object v4, p0, Lcom/android/incallui/Call;->mLastForwardedNumber:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 565
    iput-object v2, p0, Lcom/android/incallui/Call;->mLastForwardedNumber:Ljava/lang/String;

    .line 566
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/incallui/CallList;->onLastForwardedNumberChange(Lcom/android/incallui/Call;)V

    .line 573
    .end local v3    # "lastForwardedNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string/jumbo v4, "android.telecom.extra.CALL_SUBJECT"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 574
    const-string/jumbo v4, "android.telecom.extra.CALL_SUBJECT"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "callSubject":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/incallui/Call;->mCallSubject:Ljava/lang/String;

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 576
    iput-object v0, p0, Lcom/android/incallui/Call;->mCallSubject:Ljava/lang/String;

    .line 579
    .end local v0    # "callSubject":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "active_sub"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 580
    const-string/jumbo v4, "active_sub"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/incallui/Call;->mIsActiveSub:Z

    .line 533
    :cond_6
    return-void
.end method
