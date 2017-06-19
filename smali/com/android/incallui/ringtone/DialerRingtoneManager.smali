.class public Lcom/android/incallui/ringtone/DialerRingtoneManager;
.super Ljava/lang/Object;
.source "DialerRingtoneManager.java"


# instance fields
.field private final mCallList:Lcom/android/incallui/CallList;

.field private final mInCallTonePlayer:Lcom/android/incallui/ringtone/InCallTonePlayer;

.field private mIsDialerRingingEnabledForTesting:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/android/incallui/ringtone/InCallTonePlayer;Lcom/android/incallui/CallList;)V
    .locals 1
    .param p1, "inCallTonePlayer"    # Lcom/android/incallui/ringtone/InCallTonePlayer;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ringtone/InCallTonePlayer;

    iput-object v0, p0, Lcom/android/incallui/ringtone/DialerRingtoneManager;->mInCallTonePlayer:Lcom/android/incallui/ringtone/InCallTonePlayer;

    .line 57
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList;

    iput-object v0, p0, Lcom/android/incallui/ringtone/DialerRingtoneManager;->mCallList:Lcom/android/incallui/CallList;

    .line 55
    return-void
.end method

.method private isDialerRingingEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/android/incallui/ringtone/DialerRingtoneManager;->mIsDialerRingingEnabledForTesting:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/incallui/ringtone/DialerRingtoneManager;->mIsDialerRingingEnabledForTesting:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 100
    :cond_0
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_1
    return v1
.end method

.method private translateCallStateForCallWaiting(I)I
    .locals 2
    .param p1, "callState"    # I

    .prologue
    const/4 v0, 0x4

    .line 90
    if-eq p1, v0, :cond_0

    .line 91
    return p1

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/ringtone/DialerRingtoneManager;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0
.end method


# virtual methods
.method public playCallWaitingTone()V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/incallui/ringtone/DialerRingtoneManager;->isDialerRingingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ringtone/DialerRingtoneManager;->mInCallTonePlayer:Lcom/android/incallui/ringtone/InCallTonePlayer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/incallui/ringtone/InCallTonePlayer;->play(I)V

    .line 119
    return-void
.end method

.method setDialerRingingEnabledForTesting(Z)V
    .locals 1
    .param p1, "status"    # Z
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 138
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ringtone/DialerRingtoneManager;->mIsDialerRingingEnabledForTesting:Ljava/lang/Boolean;

    .line 137
    return-void
.end method

.method public shouldPlayCallWaitingTone(I)Z
    .locals 3
    .param p1, "callState"    # I

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Lcom/android/incallui/ringtone/DialerRingtoneManager;->isDialerRingingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-direct {p0, p1}, Lcom/android/incallui/ringtone/DialerRingtoneManager;->translateCallStateForCallWaiting(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/incallui/ringtone/DialerRingtoneManager;->mInCallTonePlayer:Lcom/android/incallui/ringtone/InCallTonePlayer;

    invoke-virtual {v1}, Lcom/android/incallui/ringtone/InCallTonePlayer;->isPlayingTone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldPlayRingtone(ILandroid/net/Uri;)Z
    .locals 3
    .param p1, "callState"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lcom/android/incallui/ringtone/DialerRingtoneManager;->isDialerRingingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/incallui/ringtone/DialerRingtoneManager;->translateCallStateForCallWaiting(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 71
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 69
    :cond_0
    return v0
.end method

.method public shouldVibrate(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x0

    .line 82
    const-string/jumbo v1, "vibrate_when_ringing"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public stopCallWaitingTone()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/incallui/ringtone/DialerRingtoneManager;->isDialerRingingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ringtone/DialerRingtoneManager;->mInCallTonePlayer:Lcom/android/incallui/ringtone/InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/incallui/ringtone/InCallTonePlayer;->stop()V

    .line 129
    return-void
.end method
