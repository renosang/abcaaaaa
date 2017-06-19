.class public Lcom/android/incallui/InCallVideoCallCallback;
.super Landroid/telecom/InCallService$VideoCall$Callback;
.source "InCallVideoCallCallback.java"


# instance fields
.field private mCall:Lcom/android/incallui/Call;


# direct methods
.method public constructor <init>(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/telecom/InCallService$VideoCall$Callback;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    .line 40
    return-void
.end method


# virtual methods
.method public onCallDataUsageChanged(J)V
    .locals 3
    .param p1, "dataUsage"    # J

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallDataUsageChanged: dataUsage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->callDataUsageChanged(J)V

    .line 140
    return-void
.end method

.method public onCallSessionEvent(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 109
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->callSessionEvent(I)V

    .line 108
    return-void
.end method

.method public onCameraCapabilitiesChanged(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 4
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    .prologue
    .line 153
    if-eqz p1, :cond_0

    .line 154
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {p1}, Landroid/telecom/VideoProfile$CameraCapabilities;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/telecom/VideoProfile$CameraCapabilities;->getHeight()I

    move-result v3

    .line 154
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->cameraDimensionsChanged(Lcom/android/incallui/Call;II)V

    .line 152
    :cond_0
    return-void
.end method

.method public onPeerDimensionsChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 120
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->peerDimensionsChanged(Lcom/android/incallui/Call;II)V

    .line 119
    return-void
.end method

.method public onSessionModifyRequestReceived(Landroid/telecom/VideoProfile;)V
    .locals 6
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " onSessionModifyRequestReceived videoProfile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v4, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/VideoUtils;->getUnPausedVideoState(I)I

    move-result v2

    .line 53
    .local v2, "previousVideoState":I
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/VideoUtils;->getUnPausedVideoState(I)I

    move-result v1

    .line 55
    .local v1, "newVideoState":I
    invoke-static {v2}, Lcom/android/incallui/VideoUtils;->isVideoCall(I)Z

    move-result v3

    .line 56
    .local v3, "wasVideoCall":Z
    invoke-static {v1}, Lcom/android/incallui/VideoUtils;->isVideoCall(I)Z

    move-result v0

    .line 58
    .local v0, "isVideoCall":Z
    if-eqz v3, :cond_0

    if-eqz v0, :cond_2

    .line 60
    :cond_0
    if-eq v2, v1, :cond_1

    .line 61
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4, v5, v1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->upgradeToVideoRequest(Lcom/android/incallui/Call;I)V

    .line 50
    :cond_1
    :goto_0
    return-void

    .line 59
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " onSessionModifyRequestReceived Call downgraded to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSessionModifyResponseReceived(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSessionModifyResponseReceived status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " requestedProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    const-string/jumbo v1, " responseProfile="

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 83
    if-ne p1, v2, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 95
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, p1, v1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->upgradeToVideoFail(ILcom/android/incallui/Call;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 78
    return-void

    .line 87
    :cond_1
    if-ne p1, v3, :cond_2

    .line 88
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    .line 92
    const/4 v1, 0x2

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0
.end method

.method public onVideoQualityChanged(I)V
    .locals 2
    .param p1, "videoQuality"    # I

    .prologue
    .line 130
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->videoQualityChanged(Lcom/android/incallui/Call;I)V

    .line 129
    return-void
.end method
