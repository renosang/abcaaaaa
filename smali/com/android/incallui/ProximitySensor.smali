.class public Lcom/android/incallui/ProximitySensor;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Lcom/android/incallui/AccelerometerListener$OrientationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

.field private final mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

.field private mDialpadVisible:Z

.field private final mDisplayListener:Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;

.field private mIsHardKeyboardOpen:Z

.field private mIsPhoneOffhook:Z

.field private mOrientation:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mUiShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/ProximitySensor;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/AudioModeProvider;Lcom/android/incallui/AccelerometerListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioModeProvider"    # Lcom/android/incallui/AudioModeProvider;
    .param p3, "accelerometerListener"    # Lcom/android/incallui/AccelerometerListener;

    .prologue
    const/16 v2, 0x20

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    .line 52
    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    .line 62
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    .line 63
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->isWakeLockLevelSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    .line 65
    sget-object v1, Lcom/android/incallui/ProximitySensor;->TAG:Ljava/lang/String;

    .line 64
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 70
    :goto_0
    iput-object p3, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    .line 71
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    invoke-virtual {v0, p0}, Lcom/android/incallui/AccelerometerListener;->setListener(Lcom/android/incallui/AccelerometerListener$OrientationListener;)V

    .line 73
    new-instance v1, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;

    .line 74
    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 73
    invoke-direct {v1, p0, v0}, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;-><init>(Lcom/android/incallui/ProximitySensor;Landroid/hardware/display/DisplayManager;)V

    iput-object v1, p0, Lcom/android/incallui/ProximitySensor;->mDisplayListener:Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;

    .line 75
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mDisplayListener:Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;

    invoke-virtual {v0}, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->register()V

    .line 77
    iput-object p2, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    .line 78
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 61
    return-void

    .line 67
    :cond_0
    sget-object v0, Lcom/android/incallui/ProximitySensor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Device does not support proximity wake lock."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method private turnOffProximitySensor(Z)V
    .locals 2
    .param p1, "screenOnImmediately"    # Z

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    const-string/jumbo v1, "Releasing proximity wake lock"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 202
    .local v0, "flags":I
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->release(I)V

    .line 196
    .end local v0    # "flags":I
    :cond_0
    :goto_1
    return-void

    .line 201
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "flags":I
    goto :goto_0

    .line 204
    .end local v0    # "flags":I
    :cond_2
    const-string/jumbo v1, "Proximity wake lock already released"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private turnOnProximitySensor()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    const-string/jumbo v0, "Acquiring proximity wake lock"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const-string/jumbo v0, "Proximity wake lock already acquired"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized updateProximitySensorMode()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    .line 235
    .local v0, "audioMode":I
    const/4 v3, 0x4

    if-eq v3, v0, :cond_0

    .line 236
    const/16 v3, 0x8

    if-ne v3, v0, :cond_3

    .line 235
    :cond_0
    const/4 v2, 0x1

    .line 244
    :goto_0
    iget v3, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    if-ne v3, v6, :cond_4

    const/4 v1, 0x1

    .line 245
    .local v1, "horizontal":Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    if-nez v3, :cond_5

    move v3, v1

    :goto_2
    or-int/2addr v2, v3

    .line 251
    .local v2, "screenOnImmediately":Z
    iget-boolean v3, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    if-eqz v3, :cond_6

    move v3, v1

    :goto_3
    or-int/2addr v2, v3

    .line 253
    const-string/jumbo v3, "screenonImmediately: "

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p0, v3, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v6

    .line 256
    const-string/jumbo v7, "keybrd"

    iget-boolean v3, p0, Lcom/android/incallui/ProximitySensor;->mIsHardKeyboardOpen:Z

    if-eqz v3, :cond_7

    move v3, v5

    .line 255
    :goto_4
    invoke-virtual {v6, v7, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v6

    .line 257
    const-string/jumbo v7, "dpad"

    iget-boolean v3, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    if-eqz v3, :cond_8

    move v3, v5

    .line 255
    :goto_5
    invoke-virtual {v6, v7, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v6

    .line 258
    const-string/jumbo v7, "offhook"

    iget-boolean v3, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eqz v3, :cond_9

    move v3, v5

    .line 255
    :goto_6
    invoke-virtual {v6, v7, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v6

    .line 259
    const-string/jumbo v7, "hor"

    if-eqz v1, :cond_a

    move v3, v5

    .line 255
    :goto_7
    invoke-virtual {v6, v7, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v3

    .line 260
    const-string/jumbo v6, "ui"

    iget-boolean v7, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    if-eqz v7, :cond_1

    move v4, v5

    .line 255
    :cond_1
    invoke-virtual {v3, v6, v4}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v3

    .line 261
    const-string/jumbo v4, "aud"

    invoke-static {v0}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v5

    .line 255
    invoke-virtual {v3, v4, v5}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    iget-boolean v3, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_b

    .line 270
    :cond_2
    const-string/jumbo v3, "Turning off proximity sensor"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0, v2}, Lcom/android/incallui/ProximitySensor;->turnOffProximitySensor(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_8
    monitor-exit p0

    .line 229
    return-void

    .line 237
    .end local v1    # "horizontal":Z
    .end local v2    # "screenOnImmediately":Z
    :cond_3
    if-eq v6, v0, :cond_0

    .line 238
    :try_start_1
    iget-boolean v2, p0, Lcom/android/incallui/ProximitySensor;->mIsHardKeyboardOpen:Z

    .restart local v2    # "screenOnImmediately":Z
    goto :goto_0

    .line 244
    .end local v2    # "screenOnImmediately":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "horizontal":Z
    goto :goto_1

    :cond_5
    move v3, v4

    .line 245
    goto :goto_2

    .restart local v2    # "screenOnImmediately":Z
    :cond_6
    move v3, v4

    .line 251
    goto :goto_3

    :cond_7
    move v3, v4

    .line 256
    goto :goto_4

    :cond_8
    move v3, v4

    .line 257
    goto :goto_5

    :cond_9
    move v3, v4

    .line 258
    goto :goto_6

    :cond_a
    move v3, v4

    .line 259
    goto :goto_7

    .line 265
    :cond_b
    const-string/jumbo v3, "Turning on proximity sensor"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->turnOnProximitySensor()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    .end local v0    # "audioMode":I
    .end local v1    # "horizontal":Z
    .end local v2    # "screenOnImmediately":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public isScreenReallyOff()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAudioMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    .line 136
    return-void
.end method

.method onDisplayStateChanged(Z)V
    .locals 2
    .param p1, "isDisplayOn"    # Z

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isDisplayOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/AccelerometerListener;->enable(Z)V

    .line 170
    return-void
.end method

.method public onInCallShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 159
    if-eqz p1, :cond_1

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    .line 167
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    .line 158
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    goto :goto_0
.end method

.method public onMute(Z)V
    .locals 0
    .param p1, "muted"    # Z

    .prologue
    .line 129
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 111
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, p2, :cond_1

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    .line 112
    :goto_0
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v2, p2, :cond_2

    move v1, v0

    .line 114
    :goto_1
    iget-boolean v2, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eq v1, v2, :cond_0

    .line 115
    iput-boolean v1, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    .line 117
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    .line 118
    iget-object v2, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    iget-boolean v3, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    invoke-virtual {v2, v3}, Lcom/android/incallui/AccelerometerListener;->enable(Z)V

    .line 120
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    .line 107
    :cond_0
    return-void

    .line 111
    :cond_1
    const/4 v0, 0x0

    .local v0, "hasOngoingCall":Z
    goto :goto_0

    .line 112
    .end local v0    # "hasOngoingCall":Z
    :cond_2
    const/4 v1, 0x1

    .local v1, "isOffhook":Z
    goto :goto_1
.end method

.method public onSupportedAudioMode(I)V
    .locals 0
    .param p1, "modeMask"    # I

    .prologue
    .line 125
    return-void
.end method

.method public orientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    .line 100
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    .line 98
    return-void
.end method

.method public tearDown()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/AccelerometerListener;->enable(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mDisplayListener:Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;

    invoke-virtual {v0}, Lcom/android/incallui/ProximitySensor$ProximityDisplayListener;->unregister()V

    .line 87
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/ProximitySensor;->turnOffProximitySensor(Z)V

    .line 81
    return-void
.end method

.method public turnOff()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/ProximitySensor;->turnOffProximitySensor(Z)V

    .line 90
    return-void
.end method
