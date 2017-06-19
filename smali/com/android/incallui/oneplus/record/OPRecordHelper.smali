.class public Lcom/android/incallui/oneplus/record/OPRecordHelper;
.super Ljava/lang/Object;
.source "OPRecordHelper.java"

# interfaces
.implements Lcom/android/incallui/oneplus/record/OPUpdater;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/oneplus/record/OPRecordHelper$1;,
        Lcom/android/incallui/oneplus/record/OPRecordHelper$SingletonHolder;
    }
.end annotation


# instance fields
.field private isBound:Z

.field private isServiceStart:Z

.field private mContext:Landroid/content/Context;

.field private mErrorInfo:Ljava/lang/String;

.field private mErrorState:I

.field private mIntent:Landroid/content/Intent;

.field private mIsAuto:Z

.field private mIsCallActive:Z

.field private mPrefixName:Ljava/lang/String;

.field private mRecordState:I

.field private mRecorderService:Lcom/android/incallui/oneplus/record/OPRecorderService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mTimePassed:J

.field private mToast:Landroid/widget/Toast;

.field private mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/oneplus/record/OPRecordHelper;)Lcom/android/incallui/oneplus/record/OPRecorderService;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mRecorderService:Lcom/android/incallui/oneplus/record/OPRecorderService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/incallui/oneplus/record/OPRecordHelper;Lcom/android/incallui/oneplus/record/OPRecorderService;)Lcom/android/incallui/oneplus/record/OPRecorderService;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mRecorderService:Lcom/android/incallui/oneplus/record/OPRecorderService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/incallui/oneplus/record/OPRecordHelper;Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v2, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mIsCallActive:Z

    .line 39
    iput v2, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mRecordState:I

    .line 40
    iput v2, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mErrorState:I

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mErrorInfo:Ljava/lang/String;

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mTimePassed:J

    .line 48
    iput-boolean v2, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->isServiceStart:Z

    .line 49
    iput-boolean v2, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->isBound:Z

    .line 50
    iput-boolean v2, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mIsAuto:Z

    .line 120
    new-instance v0, Lcom/android/incallui/oneplus/record/OPRecordHelper$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/oneplus/record/OPRecordHelper$1;-><init>(Lcom/android/incallui/oneplus/record/OPRecordHelper;)V

    iput-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/oneplus/record/OPRecordHelper;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecordHelper;-><init>()V

    return-void
.end method

.method private bindRecordService()V
    .locals 4

    .prologue
    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bindRecordService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mRecorderService:Lcom/android/incallui/oneplus/record/OPRecorderService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->log(Ljava/lang/String;)V

    .line 167
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/oneplus/record/OPRecorderService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 169
    iget-object v1, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->isBound:Z

    .line 165
    return-void
.end method

.method public static final getInstance()Lcom/android/incallui/oneplus/record/OPRecordHelper;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/android/incallui/oneplus/record/OPRecordHelper$SingletonHolder;->-get0()Lcom/android/incallui/oneplus/record/OPRecordHelper;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 228
    const-string/jumbo v0, "OPRecordHelper"

    invoke-static {v0, p1}, Lcom/android/incallui/oneplus/record/OPRecordLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method private resetRecordState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 173
    iput v2, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mRecordState:I

    .line 174
    iput v2, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mErrorState:I

    .line 175
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mErrorInfo:Ljava/lang/String;

    .line 176
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mTimePassed:J

    .line 177
    iput-boolean v2, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mIsCallActive:Z

    .line 178
    iput-object v3, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;

    .line 179
    iput-object v3, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mPrefixName:Ljava/lang/String;

    .line 180
    iput-boolean v2, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mIsAuto:Z

    .line 181
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 183
    iput-object v3, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mToast:Landroid/widget/Toast;

    .line 172
    :cond_0
    return-void
.end method

.method private unBindRecordService()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unBindRecordService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mRecorderService:Lcom/android/incallui/oneplus/record/OPRecorderService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isBound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->isBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->log(Ljava/lang/String;)V

    .line 153
    iget-boolean v1, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->isBound:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mRecorderService:Lcom/android/incallui/oneplus/record/OPRecorderService;

    if-eqz v1, :cond_0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iput-object v3, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mRecorderService:Lcom/android/incallui/oneplus/record/OPRecorderService;

    .line 160
    :goto_0
    iput-boolean v4, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->isBound:Z

    .line 151
    :cond_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    iput-object v3, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mRecorderService:Lcom/android/incallui/oneplus/record/OPRecorderService;

    goto :goto_0

    .line 158
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    .line 159
    iput-object v3, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mRecorderService:Lcom/android/incallui/oneplus/record/OPRecorderService;

    .line 160
    iput-boolean v4, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->isBound:Z

    .line 158
    throw v1
.end method


# virtual methods
.method public addUpdateListener(Lcom/android/incallui/oneplus/record/OPUpdater;)V
    .locals 2
    .param p1, "update"    # Lcom/android/incallui/oneplus/record/OPUpdater;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;

    .line 137
    iget-boolean v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->isServiceStart:Z

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mIsCallActive:Z

    if-eqz v0, :cond_2

    .line 141
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->bindRecordService()V

    .line 146
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;

    iget v1, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mRecordState:I

    invoke-interface {v0, v1}, Lcom/android/incallui/oneplus/record/OPUpdater;->onStateChange(I)V

    .line 135
    :cond_1
    return-void

    .line 143
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->unBindRecordService()V

    goto :goto_0
.end method

.method public getIsAutoRecording()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mIsAuto:Z

    return v0
.end method

.method public isRecordStateWaiting()Z
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mRecordState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "error"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 198
    iput p1, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mErrorState:I

    .line 199
    iput-object p2, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mErrorInfo:Ljava/lang/String;

    .line 200
    iget v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mErrorState:I

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/oneplus/record/OPUpdater;->onError(ILjava/lang/String;)V

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onError error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->log(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public onProgressChange(IJ)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "timePassed"    # J

    .prologue
    .line 211
    iput-wide p2, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mTimePassed:J

    .line 212
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/incallui/oneplus/record/OPUpdater;->onProgressChange(IJ)V

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onProgressChange state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->log(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public onStateChange(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 189
    iput p1, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mRecordState:I

    .line 190
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;

    invoke-interface {v0, p1}, Lcom/android/incallui/oneplus/record/OPUpdater;->onStateChange(I)V

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStateChange state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->log(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->unBindRecordService()V

    .line 110
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/incallui/oneplus/record/OPRecorderService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->isServiceStart:Z

    .line 112
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->resetRecordState()V

    .line 108
    return-void
.end method

.method public setCallActive(Z)V
    .locals 2
    .param p1, "active"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mIsCallActive:Z

    .line 95
    iget-boolean v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mIsCallActive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mRecordState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->startOrPauseRecording(Z)V

    .line 93
    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/oneplus/record/OPRecorderService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mIntent:Landroid/content/Intent;

    .line 62
    return-void
.end method

.method public setIsAutoRecording(Z)V
    .locals 0
    .param p1, "auto"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mIsAuto:Z

    .line 100
    return-void
.end method

.method public setPrefixName(Ljava/lang/String;)V
    .locals 3
    .param p1, "namePrefix"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mPrefixName:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "extra_name"

    iget-object v2, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mPrefixName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    return-void
.end method

.method public startOrPauseRecording(Z)V
    .locals 4
    .param p1, "onlyStart"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startOrPauseRecording: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->log(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isSupportCallRecorder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    return-void

    .line 78
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mIsCallActive:Z

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "extra_onlystart"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->isServiceStart:Z

    .line 81
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 82
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;

    invoke-virtual {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->addUpdateListener(Lcom/android/incallui/oneplus/record/OPUpdater;)V

    .line 72
    :goto_0
    return-void

    .line 84
    :cond_1
    iget v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mRecordState:I

    if-nez v0, :cond_3

    .line 85
    iput v3, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mRecordState:I

    .line 89
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mRecordState:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->onStateChange(I)V

    goto :goto_0

    .line 86
    :cond_3
    iget v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mRecordState:I

    if-ne v0, v3, :cond_2

    .line 87
    iput v2, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper;->mRecordState:I

    goto :goto_1
.end method
