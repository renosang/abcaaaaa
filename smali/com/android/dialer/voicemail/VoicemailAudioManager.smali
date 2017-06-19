.class final Lcom/android/dialer/voicemail/VoicemailAudioManager;
.super Ljava/lang/Object;
.source "VoicemailAudioManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/android/dialer/voicemail/WiredHeadsetManager$Listener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallAudioState:Landroid/telecom/CallAudioState;

.field private mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

.field private mWasSpeakerOn:Z

.field private mWiredHeadsetManager:Lcom/android/dialer/voicemail/WiredHeadsetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/dialer/voicemail/VoicemailAudioManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "voicemailPlaybackPresenter"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 45
    iput-object p2, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .line 46
    new-instance v0, Lcom/android/dialer/voicemail/WiredHeadsetManager;

    invoke-direct {v0, p1}, Lcom/android/dialer/voicemail/WiredHeadsetManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mWiredHeadsetManager:Lcom/android/dialer/voicemail/WiredHeadsetManager;

    .line 47
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mWiredHeadsetManager:Lcom/android/dialer/voicemail/WiredHeadsetManager;

    invoke-virtual {v0, p0}, Lcom/android/dialer/voicemail/WiredHeadsetManager;->setListener(Lcom/android/dialer/voicemail/WiredHeadsetManager$Listener;)V

    .line 49
    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailAudioManager;->getInitialAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 50
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Initial audioState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method private calculateSupportedRoutes()I
    .locals 2

    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mWiredHeadsetManager:Lcom/android/dialer/voicemail/WiredHeadsetManager;

    invoke-virtual {v1}, Lcom/android/dialer/voicemail/WiredHeadsetManager;->isPluggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const/16 v0, 0xc

    .line 158
    .local v0, "routeMask":I
    :goto_0
    return v0

    .line 156
    .end local v0    # "routeMask":I
    :cond_0
    const/16 v0, 0x9

    .restart local v0    # "routeMask":I
    goto :goto_0
.end method

.method private getInitialAudioState()Landroid/telecom/CallAudioState;
    .locals 4

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailAudioManager;->calculateSupportedRoutes()I

    move-result v1

    .line 146
    .local v1, "supportedRouteMask":I
    const/4 v2, 0x5

    invoke-direct {p0, v2, v1}, Lcom/android/dialer/voicemail/VoicemailAudioManager;->selectWiredOrEarpiece(II)I

    move-result v0

    .line 148
    .local v0, "route":I
    new-instance v2, Landroid/telecom/CallAudioState;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Landroid/telecom/CallAudioState;-><init>(ZII)V

    return-object v2
.end method

.method private selectWiredOrEarpiece(II)I
    .locals 2
    .param p1, "route"    # I
    .param p2, "supportedRouteMask"    # I

    .prologue
    const/4 v0, 0x5

    .line 165
    if-ne p1, v0, :cond_0

    .line 166
    and-int/lit8 p1, p2, 0x5

    .line 167
    if-nez p1, :cond_0

    .line 168
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "One of wired headset or earpiece should always be valid."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 p1, 0x1

    .line 173
    :cond_0
    return p1
.end method

.method private setSystemAudioState(Landroid/telecom/CallAudioState;)V
    .locals 5
    .param p1, "callAudioState"    # Landroid/telecom/CallAudioState;

    .prologue
    const/4 v4, 0x1

    .line 177
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 178
    .local v0, "oldAudioState":Landroid/telecom/CallAudioState;
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 180
    sget-object v1, Lcom/android/dialer/voicemail/VoicemailAudioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSystemAudioState: changing from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 181
    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 185
    invoke-direct {p0, v4}, Lcom/android/dialer/voicemail/VoicemailAudioManager;->turnOnSpeaker(Z)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v1

    if-eq v1, v4, :cond_2

    .line 187
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 190
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/dialer/voicemail/VoicemailAudioManager;->turnOnSpeaker(Z)V

    goto :goto_0
.end method

.method private turnOnSpeaker(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 196
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "turning speaker phone on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 194
    :cond_0
    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 63
    return-void
.end method

.method public isWiredHeadsetPluggedIn()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mWiredHeadsetManager:Lcom/android/dialer/voicemail/WiredHeadsetManager;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/WiredHeadsetManager;->isPluggedIn()Z

    move-result v0

    return v0
.end method

.method public onAudioFocusChange(I)V
    .locals 4
    .param p1, "focusChange"    # I

    .prologue
    const/4 v0, 0x1

    .line 69
    sget-object v1, Lcom/android/dialer/voicemail/VoicemailAudioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAudioFocusChange: focusChange="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onAudioFocusChange(Z)V

    .line 68
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWiredHeadsetPluggedInChanged(ZZ)V
    .locals 5
    .param p1, "oldIsPluggedIn"    # Z
    .param p2, "newIsPluggedIn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 75
    sget-object v1, Lcom/android/dialer/voicemail/VoicemailAudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wired headset was plugged in changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 76
    const-string/jumbo v4, " -> "

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-ne p1, p2, :cond_0

    .line 79
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    .line 83
    .local v0, "newRoute":I
    if-eqz p2, :cond_1

    .line 84
    const/4 v0, 0x4

    .line 93
    :goto_0
    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->setSpeakerphoneOn(Z)V

    .line 98
    new-instance v1, Landroid/telecom/CallAudioState;

    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailAudioManager;->calculateSupportedRoutes()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Landroid/telecom/CallAudioState;-><init>(ZII)V

    .line 97
    invoke-direct {p0, v1}, Lcom/android/dialer/voicemail/VoicemailAudioManager;->setSystemAudioState(Landroid/telecom/CallAudioState;)V

    .line 74
    return-void

    .line 86
    :cond_1
    iget-boolean v1, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mWasSpeakerOn:Z

    if-eqz v1, :cond_2

    .line 87
    const/16 v0, 0x8

    goto :goto_0

    .line 89
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 93
    goto :goto_1
.end method

.method public registerReceivers()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mWiredHeadsetManager:Lcom/android/dialer/voicemail/WiredHeadsetManager;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/WiredHeadsetManager;->registerReceiver()V

    .line 109
    return-void
.end method

.method public requestAudioFocus()V
    .locals 4

    .prologue
    .line 54
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 56
    const/4 v2, 0x0

    .line 57
    const/4 v3, 0x2

    .line 54
    invoke-virtual {v1, p0, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 58
    .local v0, "result":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 59
    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    const-string/jumbo v2, "Could not capture audio focus."

    invoke-direct {v1, v2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_0
    return-void
.end method

.method setAudioRoute(I)V
    .locals 5
    .param p1, "route"    # I

    .prologue
    const/4 v2, 0x0

    .line 124
    sget-object v1, Lcom/android/dialer/voicemail/VoicemailAudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAudioRoute, route: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/dialer/voicemail/VoicemailAudioManager;->selectWiredOrEarpiece(II)I

    move-result v0

    .line 130
    .local v0, "newRoute":I
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v1

    or-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 131
    sget-object v1, Lcom/android/dialer/voicemail/VoicemailAudioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Asking to set to a route that is unsupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 138
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mWasSpeakerOn:Z

    .line 139
    new-instance v1, Landroid/telecom/CallAudioState;

    .line 140
    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {v3}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v3

    .line 139
    invoke-direct {v1, v2, v0, v3}, Landroid/telecom/CallAudioState;-><init>(ZII)V

    invoke-direct {p0, v1}, Lcom/android/dialer/voicemail/VoicemailAudioManager;->setSystemAudioState(Landroid/telecom/CallAudioState;)V

    .line 123
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 138
    goto :goto_0
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 102
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/VoicemailAudioManager;->setAudioRoute(I)V

    .line 101
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public unregisterReceivers()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAudioManager;->mWiredHeadsetManager:Lcom/android/dialer/voicemail/WiredHeadsetManager;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/WiredHeadsetManager;->unregisterReceiver()V

    .line 114
    return-void
.end method
