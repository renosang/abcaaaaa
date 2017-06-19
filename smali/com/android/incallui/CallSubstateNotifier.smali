.class public Lcom/android/incallui/CallSubstateNotifier;
.super Ljava/lang/Object;
.source "CallSubstateNotifier.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/CallList$Listener;


# static fields
.field private static sCallSubstateNotifier:Lcom/android/incallui/CallSubstateNotifier;


# instance fields
.field private final mCallSubstateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/InCallSubstateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallSubstateMap:Ljava/util/HashMap;
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
    iput-object v0, p0, Lcom/android/incallui/CallSubstateNotifier;->mCallSubstateListeners:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallSubstateNotifier;->mCallSubstateMap:Ljava/util/HashMap;

    .line 89
    return-void
.end method

.method private getCallSubstate(Landroid/os/Bundle;)I
    .locals 2
    .param p1, "callExtras"    # Landroid/os/Bundle;

    .prologue
    .line 93
    const-string/jumbo v0, "CallSubstate"

    .line 94
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/CallSubstateNotifier;
    .locals 2

    .prologue
    const-class v1, Lcom/android/incallui/CallSubstateNotifier;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/android/incallui/CallSubstateNotifier;->sCallSubstateNotifier:Lcom/android/incallui/CallSubstateNotifier;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/android/incallui/CallSubstateNotifier;

    invoke-direct {v0}, Lcom/android/incallui/CallSubstateNotifier;-><init>()V

    sput-object v0, Lcom/android/incallui/CallSubstateNotifier;->sCallSubstateNotifier:Lcom/android/incallui/CallSubstateNotifier;

    .line 61
    :cond_0
    sget-object v0, Lcom/android/incallui/CallSubstateNotifier;->sCallSubstateNotifier:Lcom/android/incallui/CallSubstateNotifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/InCallSubstateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallSubstateListener;

    .prologue
    .line 69
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/android/incallui/CallSubstateNotifier;->mCallSubstateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 0
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 155
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onDetailsChanged - call: "

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

    .line 106
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 108
    :cond_0
    const-string/jumbo v6, "onDetailsChanged - Call/details is null/Call is not connected. Return"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    return-void

    .line 107
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    invoke-static {v6}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 112
    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 114
    .local v0, "callExtras":Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 115
    return-void

    .line 118
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "callId":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/incallui/CallSubstateNotifier;->mCallSubstateMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 121
    iget-object v6, p0, Lcom/android/incallui/CallSubstateNotifier;->mCallSubstateMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 122
    .local v5, "oldCallSubstate":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/incallui/CallSubstateNotifier;->getCallSubstate(Landroid/os/Bundle;)I

    move-result v4

    .line 124
    .local v4, "newCallSubstate":I
    if-ne v5, v4, :cond_4

    .line 125
    return-void

    .line 121
    .end local v4    # "newCallSubstate":I
    .end local v5    # "oldCallSubstate":I
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "oldCallSubstate":I
    goto :goto_0

    .line 128
    .restart local v4    # "newCallSubstate":I
    :cond_4
    iget-object v6, p0, Lcom/android/incallui/CallSubstateNotifier;->mCallSubstateMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v6, p0, Lcom/android/incallui/CallSubstateNotifier;->mCallSubstateListeners:Ljava/util/List;

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v6, p0, Lcom/android/incallui/CallSubstateNotifier;->mCallSubstateListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "listener$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallSubstateListener;

    .line 131
    .local v2, "listener":Lcom/android/incallui/InCallSubstateListener;
    invoke-interface {v2, p1, v4}, Lcom/android/incallui/InCallSubstateListener;->onCallSubstateChanged(Lcom/android/incallui/Call;I)V

    goto :goto_1

    .line 103
    .end local v2    # "listener":Lcom/android/incallui/InCallSubstateListener;
    :cond_5
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 140
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

    .line 141
    iget-object v0, p0, Lcom/android/incallui/CallSubstateNotifier;->mCallSubstateMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 150
    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 145
    return-void
.end method

.method public removeListener(Lcom/android/incallui/InCallSubstateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallSubstateListener;

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/incallui/CallSubstateNotifier;->mCallSubstateListeners:Ljava/util/List;

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
