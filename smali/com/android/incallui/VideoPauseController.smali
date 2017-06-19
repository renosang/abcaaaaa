.class Lcom/android/incallui/VideoPauseController;
.super Ljava/lang/Object;
.source "VideoPauseController.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallUiStateNotifierListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/VideoPauseController$CallContext;
    }
.end annotation


# static fields
.field private static sVideoPauseController:Lcom/android/incallui/VideoPauseController;


# instance fields
.field private mInCallPresenter:Lcom/android/incallui/InCallPresenter;

.field private mIsInBackground:Z

.field private mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    .line 32
    return-void
.end method

.method private static areSame(Lcom/android/incallui/Call;Lcom/android/incallui/VideoPauseController$CallContext;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "callContext"    # Lcom/android/incallui/VideoPauseController$CallContext;

    .prologue
    .line 349
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 350
    const/4 v0, 0x1

    return v0

    .line 351
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 352
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 354
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/VideoPauseController$CallContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/Call;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private bringToForeground()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-eqz v0, :cond_0

    .line 311
    const-string/jumbo v0, "Bringing UI to foreground"

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    .line 309
    :goto_0
    return-void

    .line 314
    :cond_0
    const-string/jumbo v0, "InCallPresenter is null. Cannot bring UI to foreground"

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static canVideoPause(Lcom/android/incallui/VideoPauseController$CallContext;)Z
    .locals 3
    .param p0, "callContext"    # Lcom/android/incallui/VideoPauseController$CallContext;

    .prologue
    const/4 v0, 0x0

    .line 364
    invoke-static {p0}, Lcom/android/incallui/VideoPauseController;->isVideoCall(Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/VideoPauseController$CallContext;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    .line 130
    iput-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    .line 128
    return-void
.end method

.method static declared-synchronized getInstance()Lcom/android/incallui/VideoPauseController;
    .locals 2

    .prologue
    const-class v1, Lcom/android/incallui/VideoPauseController;

    monitor-enter v1

    .line 93
    :try_start_0
    sget-object v0, Lcom/android/incallui/VideoPauseController;->sVideoPauseController:Lcom/android/incallui/VideoPauseController;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/android/incallui/VideoPauseController;

    invoke-direct {v0}, Lcom/android/incallui/VideoPauseController;-><init>()V

    sput-object v0, Lcom/android/incallui/VideoPauseController;->sVideoPauseController:Lcom/android/incallui/VideoPauseController;

    .line 96
    :cond_0
    sget-object v0, Lcom/android/incallui/VideoPauseController;->sVideoPauseController:Lcom/android/incallui/VideoPauseController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isDialing(Lcom/android/incallui/VideoPauseController$CallContext;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/VideoPauseController$CallContext;

    .prologue
    .line 414
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/VideoPauseController$CallContext;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isIncoming(I)Z
    .locals 2
    .param p0, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 404
    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isIncomingCall(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 394
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/VideoPauseController;->isIncoming(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isIncomingCall(Lcom/android/incallui/VideoPauseController$CallContext;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/VideoPauseController$CallContext;

    .prologue
    .line 384
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/VideoPauseController$CallContext;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/VideoPauseController;->isIncoming(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVideoCall(Lcom/android/incallui/VideoPauseController$CallContext;)Z
    .locals 1
    .param p0, "callContext"    # Lcom/android/incallui/VideoPauseController$CallContext;

    .prologue
    .line 374
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/VideoPauseController$CallContext;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/VideoUtils;->isVideoCall(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VideoPauseController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VideoPauseController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method private onPause(Z)V
    .locals 2
    .param p1, "isInCall"    # Z

    .prologue
    .line 294
    const-string/jumbo v0, "onPause"

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 296
    iget-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-eqz v0, :cond_0

    .line 297
    const-string/jumbo v0, "onPause, Ignoring... already paused"

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 298
    return-void

    .line 301
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    .line 302
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {v0}, Lcom/android/incallui/VideoPauseController;->canVideoPause(Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 303
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/VideoPauseController$CallContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoPauseController;->sendRequest(Lcom/android/incallui/Call;Z)V

    .line 293
    :goto_0
    return-void

    .line 305
    :cond_1
    const-string/jumbo v0, "onPause, Ignoring..."

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPrimaryCallChanged(Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPrimaryCallChanged: New call = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPrimaryCallChanged: Old call = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPrimaryCallChanged, IsInBackground="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {p1, v1}, Lcom/android/incallui/VideoPauseController;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 198
    invoke-static {p1}, Lcom/android/incallui/VideoUtils;->canVideoPause(Lcom/android/incallui/Call;)Z

    move-result v0

    .line 200
    .local v0, "canVideoPause":Z
    iget-object v1, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {v1}, Lcom/android/incallui/VideoPauseController;->isIncomingCall(Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {v1}, Lcom/android/incallui/VideoPauseController;->isDialing(Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    .line 201
    iget-boolean v1, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-eqz v1, :cond_4

    .line 205
    :cond_1
    invoke-static {p1}, Lcom/android/incallui/VideoPauseController;->isIncomingCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {v1}, Lcom/android/incallui/VideoPauseController;->canVideoPause(Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    iget-object v1, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-virtual {v1}, Lcom/android/incallui/VideoPauseController$CallContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/VideoPauseController;->sendRequest(Lcom/android/incallui/Call;Z)V

    .line 211
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoPauseController;->updatePrimaryCallContext(Lcom/android/incallui/Call;)V

    .line 192
    return-void

    .end local v0    # "canVideoPause":Z
    :cond_3
    move v1, v3

    .line 197
    goto :goto_0

    .line 204
    .restart local v0    # "canVideoPause":Z
    :cond_4
    invoke-direct {p0, p1, v3}, Lcom/android/incallui/VideoPauseController;->sendRequest(Lcom/android/incallui/Call;Z)V

    goto :goto_1
.end method

.method private onResume(Z)V
    .locals 2
    .param p1, "isInCall"    # Z

    .prologue
    .line 273
    const-string/jumbo v0, "onResume"

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 275
    iget-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-nez v0, :cond_0

    .line 276
    const-string/jumbo v0, "onResume, Ignoring... already resumed"

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 277
    return-void

    .line 280
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    .line 281
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {v0}, Lcom/android/incallui/VideoPauseController;->canVideoPause(Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/VideoPauseController$CallContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoPauseController;->sendRequest(Lcom/android/incallui/Call;Z)V

    .line 272
    :goto_0
    return-void

    .line 284
    :cond_1
    const-string/jumbo v0, "onResume. Ignoring..."

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendRequest(Lcom/android/incallui/Call;Z)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "resume"    # Z

    .prologue
    .line 326
    const/high16 v0, 0x100000

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    return-void

    .line 330
    :cond_0
    if-eqz p2, :cond_1

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sending resume request, call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    .line 333
    invoke-static {p1}, Lcom/android/incallui/VideoUtils;->makeVideoUnPauseProfile(Lcom/android/incallui/Call;)Landroid/telecom/VideoProfile;

    move-result-object v1

    .line 332
    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 324
    :goto_0
    return-void

    .line 335
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sending pause request, call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/VideoUtils;->makeVideoPauseProfile(Lcom/android/incallui/Call;)Landroid/telecom/VideoProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto :goto_0
.end method

.method private updatePrimaryCallContext(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 238
    if-nez p1, :cond_0

    .line 239
    iput-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    .line 237
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-virtual {v0, p1}, Lcom/android/incallui/VideoPauseController$CallContext;->update(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 243
    :cond_1
    new-instance v0, Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/VideoPauseController$CallContext;-><init>(Lcom/android/incallui/VideoPauseController;Lcom/android/incallui/Call;)V

    iput-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    goto :goto_0
.end method


# virtual methods
.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onIncomingCall, OldState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " NewState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {p3, v0}, Lcom/android/incallui/VideoPauseController;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    return-void

    .line 229
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/incallui/VideoPauseController;->onPrimaryCallChanged(Lcom/android/incallui/Call;)V

    .line 222
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 5
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStateChange, OldState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " NewState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "call":Lcom/android/incallui/Call;
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_0

    .line 148
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 159
    .local v0, "call":Lcom/android/incallui/Call;
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {v0, v3}, Lcom/android/incallui/VideoPauseController;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    .line 160
    .local v2, "hasPrimaryCallChanged":Z
    :goto_1
    invoke-static {v0}, Lcom/android/incallui/VideoUtils;->canVideoPause(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 161
    .local v1, "canVideoPause":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStateChange, hasPrimaryCallChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStateChange, canVideoPause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStateChange, IsInBackground="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 165
    if-eqz v2, :cond_5

    .line 166
    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->onPrimaryCallChanged(Lcom/android/incallui/Call;)V

    .line 167
    return-void

    .line 149
    .end local v1    # "canVideoPause":Z
    .end local v2    # "hasPrimaryCallChanged":Z
    .local v0, "call":Lcom/android/incallui/Call;
    :cond_0
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_1

    .line 150
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v0

    .local v0, "call":Lcom/android/incallui/Call;
    goto :goto_0

    .line 151
    .local v0, "call":Lcom/android/incallui/Call;
    :cond_1
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_2

    .line 152
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .local v0, "call":Lcom/android/incallui/Call;
    goto :goto_0

    .line 153
    .local v0, "call":Lcom/android/incallui/Call;
    :cond_2
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_3

    .line 154
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .local v0, "call":Lcom/android/incallui/Call;
    goto :goto_0

    .line 156
    .local v0, "call":Lcom/android/incallui/Call;
    :cond_3
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .local v0, "call":Lcom/android/incallui/Call;
    goto :goto_0

    .line 159
    :cond_4
    const/4 v2, 0x1

    .restart local v2    # "hasPrimaryCallChanged":Z
    goto :goto_1

    .line 170
    .restart local v1    # "canVideoPause":Z
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {v3}, Lcom/android/incallui/VideoPauseController;->isDialing(Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    iget-boolean v3, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-eqz v3, :cond_7

    .line 173
    invoke-direct {p0}, Lcom/android/incallui/VideoPauseController;->bringToForeground()V

    .line 180
    :cond_6
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->updatePrimaryCallContext(Lcom/android/incallui/Call;)V

    .line 143
    return-void

    .line 174
    :cond_7
    iget-object v3, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {v3}, Lcom/android/incallui/VideoPauseController;->isVideoCall(Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v1, :cond_6

    iget-boolean v3, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-eqz v3, :cond_6

    .line 177
    invoke-direct {p0}, Lcom/android/incallui/VideoPauseController;->bringToForeground()V

    goto :goto_2
.end method

.method public onUiShowing(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .prologue
    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUiShowing, showing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-nez v1, :cond_0

    .line 257
    return-void

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 260
    .local v0, "isInCall":Z
    :goto_0
    if-eqz p1, :cond_2

    .line 261
    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->onResume(Z)V

    .line 253
    :goto_1
    return-void

    .line 259
    .end local v0    # "isInCall":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isInCall":Z
    goto :goto_0

    .line 263
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->onPause(Z)V

    goto :goto_1
.end method

.method public setUp(Lcom/android/incallui/InCallPresenter;)V
    .locals 1
    .param p1, "inCallPresenter"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 106
    const-string/jumbo v0, "setUp"

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 107
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter;

    iput-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    .line 108
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 109
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 110
    invoke-static {}, Lcom/android/incallui/InCallUiStateNotifier;->getInstance()Lcom/android/incallui/InCallUiStateNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallUiStateNotifier;->addListener(Lcom/android/incallui/InCallUiStateNotifierListener;)V

    .line 105
    return-void
.end method

.method public tearDown()V
    .locals 1

    .prologue
    .line 118
    const-string/jumbo v0, "tearDown..."

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->log(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/android/incallui/InCallUiStateNotifier;->getInstance()Lcom/android/incallui/InCallUiStateNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallUiStateNotifier;->removeListener(Lcom/android/incallui/InCallUiStateNotifierListener;)V

    .line 120
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 121
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 122
    invoke-direct {p0}, Lcom/android/incallui/VideoPauseController;->clear()V

    .line 117
    return-void
.end method
