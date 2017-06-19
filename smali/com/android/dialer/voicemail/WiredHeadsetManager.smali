.class Lcom/android/dialer/voicemail/WiredHeadsetManager;
.super Ljava/lang/Object;
.source "WiredHeadsetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/voicemail/WiredHeadsetManager$Listener;,
        Lcom/android/dialer/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsPluggedIn:Z

.field private mListener:Lcom/android/dialer/voicemail/WiredHeadsetManager$Listener;

.field private final mReceiver:Lcom/android/dialer/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/dialer/voicemail/WiredHeadsetManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/dialer/voicemail/WiredHeadsetManager;Z)V
    .locals 0
    .param p1, "isPluggedIn"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/WiredHeadsetManager;->onHeadsetPluggedInChanged(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/dialer/voicemail/WiredHeadsetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/voicemail/WiredHeadsetManager;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/dialer/voicemail/WiredHeadsetManager;->mContext:Landroid/content/Context;

    .line 52
    new-instance v1, Lcom/android/dialer/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;-><init>(Lcom/android/dialer/voicemail/WiredHeadsetManager;Lcom/android/dialer/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/dialer/voicemail/WiredHeadsetManager;->mReceiver:Lcom/android/dialer/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;

    .line 54
    const-string/jumbo v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 55
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/dialer/voicemail/WiredHeadsetManager;->mIsPluggedIn:Z

    .line 50
    return-void
.end method

.method private onHeadsetPluggedInChanged(Z)V
    .locals 4
    .param p1, "isPluggedIn"    # Z

    .prologue
    .line 78
    iget-boolean v1, p0, Lcom/android/dialer/voicemail/WiredHeadsetManager;->mIsPluggedIn:Z

    if-eq v1, p1, :cond_0

    .line 79
    sget-object v1, Lcom/android/dialer/voicemail/WiredHeadsetManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onHeadsetPluggedInChanged, mIsPluggedIn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/dialer/voicemail/WiredHeadsetManager;->mIsPluggedIn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/WiredHeadsetManager;->mIsPluggedIn:Z

    .line 82
    .local v0, "oldIsPluggedIn":Z
    iput-boolean p1, p0, Lcom/android/dialer/voicemail/WiredHeadsetManager;->mIsPluggedIn:Z

    .line 83
    iget-object v1, p0, Lcom/android/dialer/voicemail/WiredHeadsetManager;->mListener:Lcom/android/dialer/voicemail/WiredHeadsetManager$Listener;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/dialer/voicemail/WiredHeadsetManager;->mListener:Lcom/android/dialer/voicemail/WiredHeadsetManager$Listener;

    iget-boolean v2, p0, Lcom/android/dialer/voicemail/WiredHeadsetManager;->mIsPluggedIn:Z

    invoke-interface {v1, v0, v2}, Lcom/android/dialer/voicemail/WiredHeadsetManager$Listener;->onWiredHeadsetPluggedInChanged(ZZ)V

    .line 77
    .end local v0    # "oldIsPluggedIn":Z
    :cond_0
    return-void
.end method


# virtual methods
.method isPluggedIn()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/WiredHeadsetManager;->mIsPluggedIn:Z

    return v0
.end method

.method registerReceiver()V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/dialer/voicemail/WiredHeadsetManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/dialer/voicemail/WiredHeadsetManager;->mReceiver:Lcom/android/dialer/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    return-void
.end method

.method setListener(Lcom/android/dialer/voicemail/WiredHeadsetManager$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/dialer/voicemail/WiredHeadsetManager$Listener;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/dialer/voicemail/WiredHeadsetManager;->mListener:Lcom/android/dialer/voicemail/WiredHeadsetManager$Listener;

    .line 59
    return-void
.end method

.method unregisterReceiver()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/dialer/voicemail/WiredHeadsetManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/dialer/voicemail/WiredHeadsetManager;->mReceiver:Lcom/android/dialer/voicemail/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 73
    return-void
.end method
