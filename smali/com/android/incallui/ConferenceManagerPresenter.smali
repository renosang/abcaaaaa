.class public Lcom/android/incallui/ConferenceManagerPresenter;
.super Lcom/android/incallui/Presenter;
.source "ConferenceManagerPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    return-void
.end method

.method private update(Lcom/android/incallui/CallList;)V
    .locals 9
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v4

    .line 119
    .local v4, "currentCall":Lcom/android/incallui/Call;
    if-nez v4, :cond_0

    .line 120
    return-void

    .line 123
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/Call;>;"
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callerId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    .local v0, "callerId":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    .end local v0    # "callerId":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Number of calls is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update calls"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v5, 0x1

    .line 133
    .local v5, "hasActiveCall":Z
    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v7

    if-eqz v7, :cond_3

    const/4 v6, 0x1

    .line 134
    .local v6, "hasHoldingCall":Z
    :goto_2
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    const/4 v3, 0x0

    .line 136
    .local v3, "canSeparate":Z
    :goto_3
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    iget-object v8, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mContext:Landroid/content/Context;

    invoke-interface {v7, v8, v2, v3}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->update(Landroid/content/Context;Ljava/util/List;Z)V

    .line 116
    return-void

    .line 132
    .end local v3    # "canSeparate":Z
    .end local v5    # "hasActiveCall":Z
    .end local v6    # "hasHoldingCall":Z
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "hasActiveCall":Z
    goto :goto_1

    .line 133
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "hasHoldingCall":Z
    goto :goto_2

    .line 134
    :cond_4
    const/4 v3, 0x1

    .restart local v3    # "canSeparate":Z
    goto :goto_3
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/android/incallui/CallList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 106
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mContext:Landroid/content/Context;

    .line 107
    iput-object p1, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mContext:Landroid/content/Context;

    .line 108
    invoke-direct {p0, p2}, Lcom/android/incallui/ConferenceManagerPresenter;->update(Lcom/android/incallui/CallList;)V

    .line 105
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    const/16 v2, 0x2000

    const/16 v3, 0x1000

    .line 78
    invoke-virtual {p2, v2}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v0

    .line 80
    .local v0, "canDisconnect":Z
    invoke-virtual {p2, v3}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v1

    .line 83
    .local v1, "canSeparate":Z
    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    if-ne v2, v0, :cond_0

    .line 85
    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    if-eq v2, v1, :cond_1

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-interface {v2, p1}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->refreshCall(Lcom/android/incallui/Call;)V

    .line 91
    :cond_1
    const/16 v2, 0x80

    .line 90
    invoke-virtual {p2, v2}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 92
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallPresenter;->showConferenceCallManager(Z)V

    .line 77
    :cond_2
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-interface {v0}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->isFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string/jumbo v0, "onIncomingCall()... Conference ui is showing, hide it."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->showConferenceCallManager(Z)V

    .line 97
    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-interface {v1}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->isFragmentVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStateChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_2

    .line 62
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 63
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Number of existing calls is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 65
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p3}, Lcom/android/incallui/ConferenceManagerPresenter;->update(Lcom/android/incallui/CallList;)V

    .line 58
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    :goto_0
    return-void

    .line 68
    .restart local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/InCallPresenter;->showConferenceCallManager(Z)V

    goto :goto_0

    .line 71
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/InCallPresenter;->showConferenceCallManager(Z)V

    goto :goto_0
.end method

.method public onUiReady(Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 45
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 46
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 41
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/incallui/Ui;

    .prologue
    .line 41
    check-cast p1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    .end local p1    # "ui":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/ConferenceManagerPresenter;->onUiReady(Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 53
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 54
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 50
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/incallui/Ui;

    .prologue
    .line 50
    check-cast p1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    .end local p1    # "ui":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/ConferenceManagerPresenter;->onUiUnready(Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;)V

    return-void
.end method
