.class public Lcom/android/incallui/SessionModificationCauseNotifier;
.super Ljava/lang/Object;
.source "SessionModificationCauseNotifier.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/CallList$Listener;


# static fields
.field private static sSessionModificationCauseNotifier:Lcom/android/incallui/SessionModificationCauseNotifier;


# instance fields
.field private final mSessionModificationCauseListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/InCallSessionModificationCauseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionModificationCauseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/android/incallui/SessionModificationCauseNotifier;->mSessionModificationCauseListeners:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/SessionModificationCauseNotifier;->mSessionModificationCauseMap:Ljava/util/HashMap;

    .line 89
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/SessionModificationCauseNotifier;
    .locals 2

    .prologue
    const-class v1, Lcom/android/incallui/SessionModificationCauseNotifier;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/android/incallui/SessionModificationCauseNotifier;->sSessionModificationCauseNotifier:Lcom/android/incallui/SessionModificationCauseNotifier;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/android/incallui/SessionModificationCauseNotifier;

    invoke-direct {v0}, Lcom/android/incallui/SessionModificationCauseNotifier;-><init>()V

    sput-object v0, Lcom/android/incallui/SessionModificationCauseNotifier;->sSessionModificationCauseNotifier:Lcom/android/incallui/SessionModificationCauseNotifier;

    .line 61
    :cond_0
    sget-object v0, Lcom/android/incallui/SessionModificationCauseNotifier;->sSessionModificationCauseNotifier:Lcom/android/incallui/SessionModificationCauseNotifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSessionModificationCause(Landroid/os/Bundle;)I
    .locals 2
    .param p1, "callExtras"    # Landroid/os/Bundle;

    .prologue
    .line 93
    const-string/jumbo v0, "SessionModificationCause"

    .line 94
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/InCallSessionModificationCauseListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallSessionModificationCauseListener;

    .prologue
    .line 69
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/android/incallui/SessionModificationCauseNotifier;->mSessionModificationCauseListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 0
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 158
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onDetailsChanged: - call: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "details: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 107
    :cond_0
    const-string/jumbo v6, "onDetailsChanged - Call/details is null/Call is not connected. Return"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    return-void

    .line 106
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    invoke-static {v6}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 111
    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 113
    .local v0, "callExtras":Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 114
    return-void

    .line 117
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "callId":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/incallui/SessionModificationCauseNotifier;->mSessionModificationCauseMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 120
    iget-object v6, p0, Lcom/android/incallui/SessionModificationCauseNotifier;->mSessionModificationCauseMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 121
    .local v5, "oldSessionModificationCause":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/incallui/SessionModificationCauseNotifier;->getSessionModificationCause(Landroid/os/Bundle;)I

    move-result v4

    .line 123
    .local v4, "newSessionModificationCause":I
    if-ne v5, v4, :cond_4

    .line 124
    return-void

    .line 120
    .end local v4    # "newSessionModificationCause":I
    .end local v5    # "oldSessionModificationCause":I
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "oldSessionModificationCause":I
    goto :goto_0

    .line 127
    .restart local v4    # "newSessionModificationCause":I
    :cond_4
    iget-object v6, p0, Lcom/android/incallui/SessionModificationCauseNotifier;->mSessionModificationCauseMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    if-eqz v4, :cond_5

    .line 130
    iget-object v6, p0, Lcom/android/incallui/SessionModificationCauseNotifier;->mSessionModificationCauseListeners:Ljava/util/List;

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v6, p0, Lcom/android/incallui/SessionModificationCauseNotifier;->mSessionModificationCauseListeners:Ljava/util/List;

    .line 131
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "listener$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallSessionModificationCauseListener;

    .line 133
    .local v2, "listener":Lcom/android/incallui/InCallSessionModificationCauseListener;
    invoke-interface {v2, p1, v4}, Lcom/android/incallui/InCallSessionModificationCauseListener;->onSessionModificationCauseChanged(Lcom/android/incallui/Call;I)V

    goto :goto_1

    .line 102
    .end local v2    # "listener":Lcom/android/incallui/InCallSessionModificationCauseListener;
    .end local v3    # "listener$iterator":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDisconnect: call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/incallui/SessionModificationCauseNotifier;->mSessionModificationCauseMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 153
    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 148
    return-void
.end method

.method public removeListener(Lcom/android/incallui/InCallSessionModificationCauseListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallSessionModificationCauseListener;

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/incallui/SessionModificationCauseNotifier;->mSessionModificationCauseListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 78
    :goto_0
    return-void

    .line 82
    :cond_0
    const-string/jumbo v0, "Can\'t remove null listener"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
