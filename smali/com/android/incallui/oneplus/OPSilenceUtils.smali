.class public Lcom/android/incallui/oneplus/OPSilenceUtils;
.super Ljava/lang/Object;
.source "OPSilenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/oneplus/OPSilenceUtils$1;,
        Lcom/android/incallui/oneplus/OPSilenceUtils$SensorListener;
    }
.end annotation


# static fields
.field private static mOPSilenceUtils:Lcom/android/incallui/oneplus/OPSilenceUtils;


# instance fields
.field private hasRegistered:Z

.field private isScreenUp:Z

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mMsgHasSend:Z

.field private mSensorListener:Lcom/android/incallui/oneplus/OPSilenceUtils$SensorListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/oneplus/OPSilenceUtils;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->isScreenUp:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/incallui/oneplus/OPSilenceUtils;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mMsgHasSend:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/incallui/oneplus/OPSilenceUtils;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->isScreenUp:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/incallui/oneplus/OPSilenceUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPSilenceUtils;->removeSlienceMsg()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/incallui/oneplus/OPSilenceUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPSilenceUtils;->sendSlienceMsg()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/incallui/oneplus/OPSilenceUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPSilenceUtils;->silenceRinger()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->isScreenUp:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mMsgHasSend:Z

    .line 130
    new-instance v0, Lcom/android/incallui/oneplus/OPSilenceUtils$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/oneplus/OPSilenceUtils$1;-><init>(Lcom/android/incallui/oneplus/OPSilenceUtils;)V

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mHandler:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mContext:Landroid/content/Context;

    .line 45
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mSensorManager:Landroid/hardware/SensorManager;

    .line 43
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/incallui/oneplus/OPSilenceUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    sget-object v0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mOPSilenceUtils:Lcom/android/incallui/oneplus/OPSilenceUtils;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/android/incallui/oneplus/OPSilenceUtils;

    invoke-direct {v0, p0}, Lcom/android/incallui/oneplus/OPSilenceUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mOPSilenceUtils:Lcom/android/incallui/oneplus/OPSilenceUtils;

    .line 52
    :cond_0
    sget-object v0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mOPSilenceUtils:Lcom/android/incallui/oneplus/OPSilenceUtils;

    return-object v0
.end method

.method private removeSlienceMsg()V
    .locals 3

    .prologue
    .line 156
    const-string/jumbo v0, "OPSilenceUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeSlienceMsg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mMsgHasSend:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-boolean v0, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mMsgHasSend:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mMsgHasSend:Z

    .line 155
    :cond_0
    return-void
.end method

.method private sendSlienceMsg()V
    .locals 5

    .prologue
    const/16 v4, 0x3e9

    .line 146
    const-string/jumbo v0, "OPSilenceUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSlienceMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mMsgHasSend:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-boolean v0, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mMsgHasSend:Z

    if-eqz v0, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mMsgHasSend:Z

    .line 152
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 145
    return-void
.end method

.method private silenceRinger()V
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 124
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public clearListener()V
    .locals 2

    .prologue
    .line 84
    const-string/jumbo v0, "OPSilenceUtils"

    const-string/jumbo v1, "clearListener"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mSensorListener:Lcom/android/incallui/oneplus/OPSilenceUtils$SensorListener;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mSensorListener:Lcom/android/incallui/oneplus/OPSilenceUtils$SensorListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 83
    :cond_0
    return-void
.end method

.method public registerListener()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 56
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_acc_sensor_rotate_silent"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v5, v2, :cond_1

    const/4 v0, 0x1

    .line 57
    .local v0, "isSillent":Z
    :goto_0
    const-string/jumbo v2, "OPSilenceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSillent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", hasRegistered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->hasRegistered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-boolean v2, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->hasRegistered:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_0

    .line 59
    iput-boolean v5, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->hasRegistered:Z

    .line 61
    iput-boolean v7, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->isScreenUp:Z

    .line 63
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 64
    .local v1, "sensor":Landroid/hardware/Sensor;
    const-string/jumbo v2, "OPSilenceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sensor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v2, Lcom/android/incallui/oneplus/OPSilenceUtils$SensorListener;

    invoke-direct {v2, p0, v6}, Lcom/android/incallui/oneplus/OPSilenceUtils$SensorListener;-><init>(Lcom/android/incallui/oneplus/OPSilenceUtils;Lcom/android/incallui/oneplus/OPSilenceUtils$SensorListener;)V

    iput-object v2, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mSensorListener:Lcom/android/incallui/oneplus/OPSilenceUtils$SensorListener;

    .line 66
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mSensorListener:Lcom/android/incallui/oneplus/OPSilenceUtils$SensorListener;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 67
    const-string/jumbo v2, "OPSilenceUtils"

    const-string/jumbo v3, "registerListener"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_0
    return-void

    .line 56
    .end local v0    # "isSillent":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isSillent":Z
    goto :goto_0
.end method

.method public unregisterListener()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 72
    const-string/jumbo v0, "OPSilenceUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSensorListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mSensorListener:Lcom/android/incallui/oneplus/OPSilenceUtils$SensorListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", hasRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->hasRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-boolean v0, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->hasRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mSensorListener:Lcom/android/incallui/oneplus/OPSilenceUtils$SensorListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->mSensorListener:Lcom/android/incallui/oneplus/OPSilenceUtils$SensorListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 75
    iput-boolean v3, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->hasRegistered:Z

    .line 77
    iput-boolean v3, p0, Lcom/android/incallui/oneplus/OPSilenceUtils;->isScreenUp:Z

    .line 79
    const-string/jumbo v0, "OPSilenceUtils"

    const-string/jumbo v1, "unRegisterListener"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method
