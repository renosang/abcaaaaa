.class public Lcom/android/incallui/InCallServiceImpl;
.super Landroid/telecom/InCallService;
.source "InCallServiceImpl.java"


# static fields
.field static sPhoneCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/incallui/InCallServiceImpl;->sPhoneCount:I

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/telecom/InCallService;-><init>()V

    return-void
.end method

.method private tearDown()V
    .locals 1

    .prologue
    .line 109
    const-string/jumbo v0, "tearDown"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/TelecomAdapter;->clearInCallService()V

    .line 112
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->tearDown()V

    .line 108
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    const-string/jumbo v0, "onBind"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->setRapidDisplay(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/android/incallui/InCallServiceImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/common/OPExtensionManager;->init(Landroid/content/Context;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/incallui/InCallServiceImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 79
    .local v7, "context":Landroid/content/Context;
    invoke-static {v7}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v5

    .line 80
    .local v5, "contactInfoCache":Lcom/android/incallui/ContactInfoCache;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lcom/android/incallui/InCallServiceImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 82
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    .line 83
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    .line 84
    new-instance v4, Lcom/android/incallui/StatusBarNotifier;

    invoke-direct {v4, v7, v5}, Lcom/android/incallui/StatusBarNotifier;-><init>(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache;)V

    .line 86
    new-instance v6, Lcom/android/incallui/ProximitySensor;

    .line 88
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v8

    .line 89
    new-instance v9, Lcom/android/incallui/AccelerometerListener;

    invoke-direct {v9, v7}, Lcom/android/incallui/AccelerometerListener;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-direct {v6, v7, v8, v9}, Lcom/android/incallui/ProximitySensor;-><init>(Landroid/content/Context;Lcom/android/incallui/AudioModeProvider;Lcom/android/incallui/AccelerometerListener;)V

    .line 80
    invoke-virtual/range {v0 .. v6}, Lcom/android/incallui/InCallPresenter;->setUp(Landroid/content/Context;Lcom/android/incallui/CallList;Lcom/android/incallui/AudioModeProvider;Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/ProximitySensor;)V

    .line 91
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onServiceBind()V

    .line 92
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->maybeStartRevealAnimation(Landroid/content/Intent;)V

    .line 93
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/TelecomAdapter;->setInCallService(Landroid/telecom/InCallService;)V

    .line 95
    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onBringToForeground(Z)V
    .locals 1
    .param p1, "showDialpad"    # Z

    .prologue
    .line 50
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->onBringToForeground(Z)V

    .line 49
    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 1
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 55
    const-string/jumbo v0, "onCallAdded"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->onCallAdded(Landroid/telecom/Call;)V

    .line 54
    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 4
    .param p1, "audioState"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 44
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v1

    .line 45
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v2

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v3

    .line 44
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/AudioModeProvider;->onAudioStateChanged(ZII)V

    .line 43
    return-void
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 1
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 61
    const-string/jumbo v0, "onCallRemoved"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->onCallRemoved(Landroid/telecom/Call;)V

    .line 60
    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 1
    .param p1, "canAddCall"    # Z

    .prologue
    .line 67
    const-string/jumbo v0, "onCanAddCallChanged"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->onCanAddCallChanged(Z)V

    .line 66
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onUnbind(Landroid/content/Intent;)Z

    .line 102
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onServiceUnbind()V

    .line 103
    invoke-direct {p0}, Lcom/android/incallui/InCallServiceImpl;->tearDown()V

    .line 105
    const/4 v0, 0x0

    return v0
.end method
