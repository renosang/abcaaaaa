.class public Lcom/android/incallui/OrientationModeHandler;
.super Ljava/lang/Object;
.source "OrientationModeHandler.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallUiListener;


# static fields
.field private static sOrientationModeHandler:Lcom/android/incallui/OrientationModeHandler;


# instance fields
.field private mOrientationMode:I

.field private mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/OrientationModeHandler;->mOrientationMode:I

    .line 65
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/OrientationModeHandler;
    .locals 2

    .prologue
    const-class v1, Lcom/android/incallui/OrientationModeHandler;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lcom/android/incallui/OrientationModeHandler;->sOrientationModeHandler:Lcom/android/incallui/OrientationModeHandler;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/incallui/OrientationModeHandler;

    invoke-direct {v0}, Lcom/android/incallui/OrientationModeHandler;-><init>()V

    sput-object v0, Lcom/android/incallui/OrientationModeHandler;->sOrientationModeHandler:Lcom/android/incallui/OrientationModeHandler;

    .line 59
    :cond_0
    sget-object v0, Lcom/android/incallui/OrientationModeHandler;->sOrientationModeHandler:Lcom/android/incallui/OrientationModeHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private mayBeUpdateOrientationMode(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 121
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    .local v0, "extras":Landroid/os/Bundle;
    :cond_0
    if-eqz v0, :cond_1

    .line 123
    const-string/jumbo v2, "OrientationMode"

    .line 122
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 127
    .local v1, "orientationMode":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mayBeUpdateOrientationMode : orientationMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 128
    const-string/jumbo v3, " mOrientationMode : "

    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 128
    iget v3, p0, Lcom/android/incallui/OrientationModeHandler;->mOrientationMode:I

    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v2

    if-nez v2, :cond_2

    .line 130
    const-string/jumbo v2, "mayBeUpdateOrientationMode : InCallActivity is null"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    return-void

    .line 125
    .end local v1    # "orientationMode":I
    :cond_1
    const/4 v1, -0x1

    .restart local v1    # "orientationMode":I
    goto :goto_0

    .line 134
    :cond_2
    iget v2, p0, Lcom/android/incallui/OrientationModeHandler;->mOrientationMode:I

    if-eq v1, v2, :cond_3

    if-eq v1, v4, :cond_3

    .line 136
    iput v1, p0, Lcom/android/incallui/OrientationModeHandler;->mOrientationMode:I

    .line 137
    iget v2, p0, Lcom/android/incallui/OrientationModeHandler;->mOrientationMode:I

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/OrientationModeHandler;->onOrientationModeChanged(Lcom/android/incallui/Call;I)V

    .line 120
    :cond_3
    return-void
.end method

.method private onOrientationModeChanged(Lcom/android/incallui/Call;I)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "orientationMode"    # I

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onOrientationModeChanged: Call : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " orientation mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/incallui/OrientationModeHandler;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/incallui/PrimaryCallTracker;->isPrimaryCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const-string/jumbo v0, "Can\'t set requested orientation on a non-primary call"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    return-void

    .line 156
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    .line 157
    invoke-static {p2}, Lcom/android/incallui/QtiCallUtils;->toUiOrientationMode(I)I

    move-result v1

    .line 156
    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setInCallAllowsOrientationChange(I)V

    .line 147
    return-void
.end method


# virtual methods
.method public getOrientation(Lcom/android/incallui/Call;)I
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 171
    invoke-static {p1}, Lcom/android/incallui/VideoUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget v0, p0, Lcom/android/incallui/OrientationModeHandler;->mOrientationMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 173
    const/16 v0, 0xa

    .line 172
    :goto_0
    return v0

    .line 174
    :cond_0
    iget v0, p0, Lcom/android/incallui/OrientationModeHandler;->mOrientationMode:I

    invoke-static {v0}, Lcom/android/incallui/QtiCallUtils;->toUiOrientationMode(I)I

    move-result v0

    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, 0x5

    return v0
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDetailsChanged: - call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "details: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/OrientationModeHandler;->mayBeUpdateOrientationMode(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V

    .line 98
    return-void
.end method

.method public onUiShowing(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/incallui/OrientationModeHandler;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v1}, Lcom/android/incallui/PrimaryCallTracker;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 111
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

    .line 113
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/OrientationModeHandler;->mayBeUpdateOrientationMode(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V

    .line 109
    return-void
.end method

.method public setUp()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/android/incallui/PrimaryCallTracker;

    invoke-direct {v0}, Lcom/android/incallui/PrimaryCallTracker;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/OrientationModeHandler;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    .line 74
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/OrientationModeHandler;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 75
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 76
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)V

    .line 72
    return-void
.end method

.method public tearDown()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/OrientationModeHandler;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 86
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 87
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)Z

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/OrientationModeHandler;->mOrientationMode:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/OrientationModeHandler;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    .line 84
    return-void
.end method
