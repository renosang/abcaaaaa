.class public Lcom/android/incallui/InCallAudioManager;
.super Ljava/lang/Object;
.source "InCallAudioManager.java"


# static fields
.field private static sInCallAudioManager:Lcom/android/incallui/InCallAudioManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canEnableSpeaker(II)Z
    .locals 1
    .param p0, "oldVideoState"    # I
    .param p1, "newVideoState"    # I

    .prologue
    .line 137
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    .line 137
    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/android/incallui/InCallAudioManager;->isSpeakerEnabledForVideoCalls()Z

    move-result v0

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static enableEarpiece()V
    .locals 5

    .prologue
    .line 156
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    .line 157
    .local v1, "telecomAdapter":Lcom/android/incallui/TelecomAdapter;
    if-nez v1, :cond_0

    .line 158
    const-string/jumbo v2, "InCallAudioManager"

    const-string/jumbo v3, "enableEarpiece: TelecomAdapter is null"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void

    .line 162
    :cond_0
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    .line 163
    .local v0, "currentAudioMode":I
    const-string/jumbo v2, "InCallAudioManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableEarpiece: Current audio mode is - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/android/incallui/QtiCallUtils;->isNotEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    const-string/jumbo v2, "InCallAudioManager"

    const-string/jumbo v3, "enableEarpiece: Set audio route to earpiece"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    .line 155
    :cond_1
    return-void
.end method

.method private static enableSpeaker()V
    .locals 5

    .prologue
    .line 186
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    .line 187
    .local v1, "telecomAdapter":Lcom/android/incallui/TelecomAdapter;
    if-nez v1, :cond_0

    .line 188
    const-string/jumbo v2, "InCallAudioManager"

    const-string/jumbo v3, "enableSpeaker: TelecomAdapter is null"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void

    .line 192
    :cond_0
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    .line 193
    .local v0, "currentAudioMode":I
    const-string/jumbo v2, "InCallAudioManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableSpeaker: Current audio mode is - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    const/16 v2, 0xe

    invoke-static {v2, v0}, Lcom/android/incallui/QtiCallUtils;->isNotEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    const-string/jumbo v2, "InCallAudioManager"

    const-string/jumbo v3, "enableSpeaker: Set audio route to speaker"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    .line 185
    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/InCallAudioManager;
    .locals 2

    .prologue
    const-class v1, Lcom/android/incallui/InCallAudioManager;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lcom/android/incallui/InCallAudioManager;->sInCallAudioManager:Lcom/android/incallui/InCallAudioManager;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/incallui/InCallAudioManager;

    invoke-direct {v0}, Lcom/android/incallui/InCallAudioManager;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallAudioManager;->sInCallAudioManager:Lcom/android/incallui/InCallAudioManager;

    .line 69
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallAudioManager;->sInCallAudioManager:Lcom/android/incallui/InCallAudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isSpeakerEnabledForVideoCalls()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onAcceptUpgradeRequest(Lcom/android/incallui/Call;I)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoState"    # I

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAcceptUpgradeRequest: Call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "video state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/incallui/InCallAudioManager;->canEnableSpeaker(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/android/incallui/InCallAudioManager;->enableSpeaker()V

    .line 92
    :cond_0
    return-void
.end method

.method public onAnswerIncomingCall(Lcom/android/incallui/Call;I)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoState"    # I

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAnswerIncomingCall: Call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "video state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-static {p2}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Lcom/android/incallui/InCallAudioManager;->enableEarpiece()V

    .line 105
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallAudioManager;->enableSpeaker()V

    goto :goto_0
.end method

.method public onMergeClicked()V
    .locals 1

    .prologue
    .line 120
    const-string/jumbo v0, "onMergeClicked"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/VideoUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/VideoUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    .line 122
    if-eqz v0, :cond_1

    .line 124
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallAudioManager;->enableSpeaker()V

    .line 119
    :cond_1
    return-void
.end method

.method public onModifyCallClicked(Lcom/android/incallui/Call;I)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "newVideoState"    # I

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onModifyCallClicked: Call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "new video state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-static {p2}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    invoke-static {}, Lcom/android/incallui/InCallAudioManager;->enableEarpiece()V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/incallui/InCallAudioManager;->canEnableSpeaker(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/android/incallui/InCallAudioManager;->enableSpeaker()V

    goto :goto_0
.end method
