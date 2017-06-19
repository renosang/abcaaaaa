.class public Lcom/android/incallui/oneplus/record/OPRecorderService;
.super Landroid/app/Service;
.source "OPRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/oneplus/record/OPRecorderService$ServiceBinder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mRecord:Lcom/android/incallui/oneplus/record/IOPRecorder;

.field private recordBinder:Lcom/android/incallui/oneplus/record/OPRecorderService$ServiceBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    new-instance v0, Lcom/android/incallui/oneplus/record/OPRecorderService$ServiceBinder;

    invoke-direct {v0, p0}, Lcom/android/incallui/oneplus/record/OPRecorderService$ServiceBinder;-><init>(Lcom/android/incallui/oneplus/record/OPRecorderService;)V

    iput-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorderService;->recordBinder:Lcom/android/incallui/oneplus/record/OPRecorderService$ServiceBinder;

    .line 26
    const-string/jumbo v0, "OPRecorderService"

    iput-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorderService;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 124
    const-string/jumbo v0, "OPRecorderService"

    invoke-static {v0, p1}, Lcom/android/incallui/oneplus/record/OPRecordLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method private notifySoundRecorderStopRecording()V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.oneplus.soundrecord.stop"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    const-string/jumbo v1, "com.oneplus.soundrecorder"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecorderService;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    return-void
.end method

.method private removeUpdateListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeUpdateListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/oneplus/record/OPRecorderService;->mRecord:Lcom/android/incallui/oneplus/record/IOPRecorder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecorderService;->log(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorderService;->mRecord:Lcom/android/incallui/oneplus/record/IOPRecorder;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorderService;->mRecord:Lcom/android/incallui/oneplus/record/IOPRecorder;

    invoke-interface {v0, v2}, Lcom/android/incallui/oneplus/record/IOPRecorder;->addUpdaterListener(Lcom/android/incallui/oneplus/record/OPUpdater;)V

    .line 62
    :cond_0
    return-void
.end method

.method private setFileName(Ljava/lang/String;)V
    .locals 2
    .param p1, "recorderFileName"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecorderService;->log(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorderService;->mRecord:Lcom/android/incallui/oneplus/record/IOPRecorder;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorderService;->mRecord:Lcom/android/incallui/oneplus/record/IOPRecorder;

    invoke-interface {v0, p1}, Lcom/android/incallui/oneplus/record/IOPRecorder;->setFileName(Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method private startOrPauseRecording(Z)V
    .locals 2
    .param p1, "startOnly"    # Z

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startOrPauseRecording: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/oneplus/record/OPRecorderService;->mRecord:Lcom/android/incallui/oneplus/record/IOPRecorder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecorderService;->log(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorderService;->mRecord:Lcom/android/incallui/oneplus/record/IOPRecorder;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorderService;->mRecord:Lcom/android/incallui/oneplus/record/IOPRecorder;

    invoke-interface {v0, p1}, Lcom/android/incallui/oneplus/record/IOPRecorder;->startOrPauseRecording(Z)V

    .line 89
    :cond_0
    return-void
.end method

.method private stopRecording()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopRecording: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/oneplus/record/OPRecorderService;->mRecord:Lcom/android/incallui/oneplus/record/IOPRecorder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecorderService;->log(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorderService;->mRecord:Lcom/android/incallui/oneplus/record/IOPRecorder;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorderService;->mRecord:Lcom/android/incallui/oneplus/record/IOPRecorder;

    invoke-interface {v0}, Lcom/android/incallui/oneplus/record/IOPRecorder;->stopRecording()V

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public addUpdateListener(Lcom/android/incallui/oneplus/record/OPUpdater;)V
    .locals 2
    .param p1, "updater"    # Lcom/android/incallui/oneplus/record/OPUpdater;

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "addUpdateListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/oneplus/record/OPRecorderService;->mRecord:Lcom/android/incallui/oneplus/record/IOPRecorder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecorderService;->log(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorderService;->mRecord:Lcom/android/incallui/oneplus/record/IOPRecorder;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorderService;->mRecord:Lcom/android/incallui/oneplus/record/IOPRecorder;

    invoke-interface {v0, p1}, Lcom/android/incallui/oneplus/record/IOPRecorder;->addUpdaterListener(Lcom/android/incallui/oneplus/record/OPUpdater;)V

    .line 82
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    const-string/jumbo v0, "onBind"

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecorderService;->log(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorderService;->recordBinder:Lcom/android/incallui/oneplus/record/OPRecorderService$ServiceBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/oneplus/record/OPRecorderService;->mRecord:Lcom/android/incallui/oneplus/record/IOPRecorder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/oneplus/record/OPRecorderService;->log(Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecorderService;->notifySoundRecorderStopRecording()V

    .line 46
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    new-instance v1, Lcom/android/incallui/oneplus/record/OPRecorder;

    invoke-direct {v1, p0}, Lcom/android/incallui/oneplus/record/OPRecorder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/incallui/oneplus/record/OPRecorderService;->mRecord:Lcom/android/incallui/oneplus/record/IOPRecorder;

    .line 41
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 56
    const-string/jumbo v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecorderService;->log(Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecorderService;->stopRecording()V

    .line 58
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecorderService;->removeUpdateListener()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorderService;->mRecord:Lcom/android/incallui/oneplus/record/IOPRecorder;

    .line 54
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "intent is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/oneplus/record/OPRecorderService;->log(Ljava/lang/String;)V

    .line 72
    if-eqz p1, :cond_0

    .line 73
    const-string/jumbo v2, "extra_onlystart"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 74
    .local v1, "onlyStart":Z
    const-string/jumbo v2, "extra_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecorderService;->setFileName(Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, v1}, Lcom/android/incallui/oneplus/record/OPRecorderService;->startOrPauseRecording(Z)V

    .line 78
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "onlyStart":Z
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    return v2
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    const-string/jumbo v0, "onUnbind"

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecorderService;->log(Ljava/lang/String;)V

    .line 37
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
