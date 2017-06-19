.class final Lcom/android/incallui/TelecomAdapter;
.super Ljava/lang/Object;
.source "TelecomAdapter.java"


# static fields
.field private static sInstance:Lcom/android/incallui/TelecomAdapter;


# instance fields
.field private mInCallService:Landroid/telecom/InCallService;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/android/incallui/TelecomAdapter;
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 38
    sget-object v0, Lcom/android/incallui/TelecomAdapter;->sInstance:Lcom/android/incallui/TelecomAdapter;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/android/incallui/TelecomAdapter;

    invoke-direct {v0}, Lcom/android/incallui/TelecomAdapter;-><init>()V

    sput-object v0, Lcom/android/incallui/TelecomAdapter;->sInstance:Lcom/android/incallui/TelecomAdapter;

    .line 41
    :cond_0
    sget-object v0, Lcom/android/incallui/TelecomAdapter;->sInstance:Lcom/android/incallui/TelecomAdapter;

    return-object v0

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 59
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method addCall()V
    .locals 4

    .prologue
    .line 160
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    if-eqz v2, :cond_0

    .line 161
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    const-string/jumbo v2, "add_call_mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    :try_start_0
    const-string/jumbo v2, "Sending the add Call intent"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 171
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "Activity for adding calls isn\'t found."

    invoke-static {p0, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method answerCall(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 64
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->answer(I)V

    .line 62
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error answerCall, call not in call list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method canAddCall()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    invoke-virtual {v0}, Landroid/telecom/InCallService;->canAddCall()Z

    move-result v0

    return v0

    .line 225
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearInCallService()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    .line 53
    return-void
.end method

.method disconnectCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 82
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/telecom/Call;->disconnect()V

    .line 80
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error disconnectCall, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method holdCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 91
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/telecom/Call;->hold()V

    .line 89
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error holdCall, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method merge(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 134
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_2

    .line 135
    invoke-virtual {v0}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v1

    .line 136
    .local v1, "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Call;

    invoke-virtual {v0, v2}, Landroid/telecom/Call;->conference(Landroid/telecom/Call;)V

    .line 132
    .end local v1    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    :cond_0
    :goto_0
    return-void

    .line 139
    .restart local v1    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    :cond_1
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/telecom/Call;->mergeConference()V

    goto :goto_0

    .line 144
    .end local v1    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error merge, call not in call list "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method mute(Z)V
    .locals 1
    .param p1, "shouldMute"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallService;->setMuted(Z)V

    .line 107
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string/jumbo v0, "error mute, mInCallService is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "setDefault"    # Z

    .prologue
    .line 208
    if-nez p2, :cond_0

    .line 209
    const-string/jumbo v1, "error phoneAccountSelected, accountHandle is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 214
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0, p2, p3}, Landroid/telecom/Call;->phoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V

    .line 207
    :goto_0
    return-void

    .line 217
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error phoneAccountSelected, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method playDtmfTone(Ljava/lang/String;C)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 182
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->playDtmfTone(C)V

    .line 180
    :goto_0
    return-void

    .line 185
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error playDtmfTone, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method postDialContinue(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 200
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->postDialContinue(Z)V

    .line 198
    :goto_0
    return-void

    .line 203
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error postDialContinue, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method rejectCall(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rejectWithMessage"    # Z
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 73
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, p2, p3}, Landroid/telecom/Call;->reject(ZLjava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error rejectCall, call not in call list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method separateCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 125
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Landroid/telecom/Call;->splitFromConference()V

    .line 123
    :goto_0
    return-void

    .line 128
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error separateCall, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setAudioRoute(I)V
    .locals 1
    .param p1, "route"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallService;->setAudioRoute(I)V

    .line 115
    :goto_0
    return-void

    .line 119
    :cond_0
    const-string/jumbo v0, "error setAudioRoute, mInCallService is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInCallService(Landroid/telecom/InCallService;)V
    .locals 0
    .param p1, "inCallService"    # Landroid/telecom/InCallService;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    .line 48
    return-void
.end method

.method stopDtmfTone(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 191
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Landroid/telecom/Call;->stopDtmfTone()V

    .line 189
    :goto_0
    return-void

    .line 194
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error stopDtmfTone, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method swap(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 150
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {v0}, Landroid/telecom/Call;->swapConference()V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error swap, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method unholdCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 100
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/telecom/Call;->unhold()V

    .line 98
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error unholdCall, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
