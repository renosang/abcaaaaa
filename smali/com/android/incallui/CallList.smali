.class public Lcom/android/incallui/CallList;
.super Ljava/lang/Object;
.source "CallList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallList$1;,
        Lcom/android/incallui/CallList$ActiveSubChangeListener;,
        Lcom/android/incallui/CallList$CallUpdateListener;,
        Lcom/android/incallui/CallList$Listener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/incallui/CallList;


# instance fields
.field private final mActiveSubChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/CallList$ActiveSubChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/incallui/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallByTelecomCall:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/telecom/Call;",
            "Lcom/android/incallui/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallTextReponsesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCallUpdateListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/CallList$CallUpdateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFilteredQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

.field private mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/CallList$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingDisconnectCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mSubId:I


# direct methods
.method static synthetic -get0(Lcom/android/incallui/CallList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallList;->mActiveSubChangeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->finishDisconnectedCall(Lcom/android/incallui/Call;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/incallui/CallList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyGenericListeners()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/android/incallui/CallList;

    invoke-direct {v0}, Lcom/android/incallui/CallList;-><init>()V

    sput-object v0, Lcom/android/incallui/CallList;->sInstance:Lcom/android/incallui/CallList;

    .line 51
    return-void
.end method

.method constructor <init>()V
    .locals 4
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const v1, 0x3f666666    # 0.9f

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallByTelecomCall:Ljava/util/HashMap;

    .line 65
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 71
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    .line 73
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 75
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/CallList;->mSubId:I

    .line 80
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/android/incallui/CallList;->mActiveSubChangeListeners:Ljava/util/ArrayList;

    .line 675
    new-instance v0, Lcom/android/incallui/CallList$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallList$1;-><init>(Lcom/android/incallui/CallList;)V

    iput-object v0, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    .line 94
    return-void
.end method

.method private finishDisconnectedCall(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x2

    .line 638
    iget-object v0, p0, Lcom/android/incallui/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/incallui/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 640
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 641
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setState(I)V

    .line 642
    new-instance v0, Landroid/telecom/DisconnectCause;

    invoke-direct {v0, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    .line 643
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->notifyListenersOfDisconnect(Lcom/android/incallui/Call;)V

    .line 646
    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->setState(I)V

    .line 647
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    .line 648
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyGenericListeners()V

    .line 637
    return-void
.end method

.method private getDelayForDisconnect(Lcom/android/incallui/Call;)I
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x1

    .line 584
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    .line 585
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 584
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 587
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    .line 589
    .local v0, "cause":I
    packed-switch v0, :pswitch_data_0

    .line 605
    const/4 v1, 0x0

    .line 609
    .local v1, "delay":I
    :goto_1
    return v1

    .line 585
    .end local v0    # "cause":I
    .end local v1    # "delay":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 591
    .restart local v0    # "cause":I
    :pswitch_0
    const/4 v1, 0x0

    .line 592
    .restart local v1    # "delay":I
    goto :goto_1

    .line 595
    .end local v1    # "delay":I
    :pswitch_1
    const/16 v1, 0xc8

    .line 596
    .restart local v1    # "delay":I
    goto :goto_1

    .line 602
    .end local v1    # "delay":I
    :pswitch_2
    const/4 v1, 0x0

    .line 603
    .restart local v1    # "delay":I
    goto :goto_1

    .line 589
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/incallui/CallList;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/incallui/CallList;->sInstance:Lcom/android/incallui/CallList;

    return-object v0
.end method

.method private isCallDead(Lcom/android/incallui/Call;)Z
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 630
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 631
    .local v0, "state":I
    const/4 v3, 0x2

    if-eq v3, v0, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private notifyGenericListeners()V
    .locals 3

    .prologue
    .line 530
    iget-object v2, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList$Listener;

    .line 531
    .local v0, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v0, p0}, Lcom/android/incallui/CallList$Listener;->onCallListChange(Lcom/android/incallui/CallList;)V

    goto :goto_0

    .line 529
    .end local v0    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_0
    return-void
.end method

.method private notifyListenersOfDisconnect(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 536
    iget-object v2, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList$Listener;

    .line 537
    .local v0, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v0, p1}, Lcom/android/incallui/CallList$Listener;->onDisconnect(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 535
    .end local v0    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_0
    return-void
.end method

.method private onUpdateCall(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUpdate - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallList;->updateCallTextMap(Lcom/android/incallui/Call;Ljava/util/List;)V

    .line 522
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallList;->notifyCallUpdateListeners(Lcom/android/incallui/Call;)V

    .line 516
    return-void
.end method

.method private updateCallInMap(Lcom/android/incallui/Call;)Z
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/16 v4, 0x9

    .line 546
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const/4 v1, 0x0

    .line 550
    .local v1, "updated":Z
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 551
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 553
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 558
    iget-object v2, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 559
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 560
    iget-object v2, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 564
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 566
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallByTelecomCall:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const/4 v1, 0x1

    .line 580
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    :goto_1
    return v1

    .line 562
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->getDelayForDisconnect(Lcom/android/incallui/Call;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 570
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->isCallDead(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 571
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallByTelecomCall:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const/4 v1, 0x1

    goto :goto_1

    .line 574
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 575
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallByTelecomCall:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private updateCallTextMap(Lcom/android/incallui/Call;Ljava/util/List;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/incallui/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 613
    .local p2, "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->isCallDead(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 616
    if-eqz p2, :cond_1

    .line 617
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 624
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method addActiveSubChangeListener(Lcom/android/incallui/CallList$ActiveSubChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/CallList$ActiveSubChangeListener;

    .prologue
    .line 893
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    iget-object v0, p0, Lcom/android/incallui/CallList;->mActiveSubChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    return-void
.end method

.method public addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/incallui/CallList$CallUpdateListener;

    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 255
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-nez v0, :cond_0

    .line 256
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 257
    .restart local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_1
    return-void
.end method

.method public addListener(Lcom/android/incallui/CallList$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/CallList$Listener;

    .prologue
    .line 285
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-interface {p1, p0}, Lcom/android/incallui/CallList$Listener;->onCallListChange(Lcom/android/incallui/CallList;)V

    .line 284
    return-void
.end method

.method public clearCallIds()V
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallByTelecomCall:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 912
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallByTelecomCall:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 907
    :cond_1
    return-void
.end method

.method public clearListener()V
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 920
    :cond_0
    return-void
.end method

.method public clearOnDisconnect()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 484
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 485
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    .line 486
    .local v2, "state":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 487
    if-eqz v2, :cond_0

    .line 488
    if-eq v2, v5, :cond_0

    .line 490
    invoke-virtual {v0, v5}, Lcom/android/incallui/Call;->setState(I)V

    .line 491
    new-instance v3, Landroid/telecom/DisconnectCause;

    invoke-direct {v3, v4}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    .line 492
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    goto :goto_0

    .line 495
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v2    # "state":I
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyGenericListeners()V

    .line 483
    return-void
.end method

.method public getActiveCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getActiveOrBackgroundCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 365
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 368
    :cond_0
    return-object v0
.end method

.method getActiveSubId()I
    .locals 1

    .prologue
    .line 769
    iget v0, p0, Lcom/android/incallui/CallList;->mSubId:I

    return v0
.end method

.method public getBackgroundCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 348
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getCallByTelecomCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;
    .locals 1
    .param p1, "telecomCall"    # Landroid/telecom/Call;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallByTelecomCall:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getCallCount()I
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getCallWithState(II)Lcom/android/incallui/Call;
    .locals 6
    .param p1, "state"    # I
    .param p2, "positionToFind"    # I

    .prologue
    .line 455
    const/16 v4, 0xc

    if-eq p1, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveSubId()I

    move-result v4

    .line 456
    const/4 v5, -0x1

    .line 455
    if-eq v4, v5, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->isDsdaEnabled()Z

    move-result v4

    .line 455
    if-eqz v4, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveSubId()I

    move-result v4

    invoke-virtual {p0, p1, p2, v4}, Lcom/android/incallui/CallList;->getCallWithState(III)Lcom/android/incallui/Call;

    move-result-object v4

    return-object v4

    .line 461
    :cond_0
    const/4 v3, 0x0

    .line 462
    .local v3, "retval":Lcom/android/incallui/Call;
    const/4 v2, 0x0

    .line 463
    .local v2, "position":I
    iget-object v4, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 464
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 465
    if-lt v2, p2, :cond_3

    .line 466
    move-object v3, v0

    .line 474
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v3    # "retval":Lcom/android/incallui/Call;
    :cond_2
    return-object v3

    .line 469
    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v3    # "retval":Lcom/android/incallui/Call;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method getCallWithState(III)Lcom/android/incallui/Call;
    .locals 8
    .param p1, "state"    # I
    .param p2, "positionToFind"    # I
    .param p3, "subId"    # I

    .prologue
    .line 870
    const/4 v5, 0x0

    .line 871
    .local v5, "retval":Lcom/android/incallui/Call;
    const/4 v4, 0x0

    .line 872
    .local v4, "position":I
    iget-object v6, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 873
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 875
    .local v3, "ph":Landroid/telecom/PhoneAccountHandle;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    if-ne v6, p1, :cond_0

    if-eqz v3, :cond_1

    .line 876
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "sip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 877
    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 876
    if-nez v6, :cond_1

    .line 877
    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v6, p3, :cond_0

    .line 878
    :cond_1
    if-lt v4, p2, :cond_3

    .line 879
    move-object v5, v0

    .line 889
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v3    # "ph":Landroid/telecom/PhoneAccountHandle;
    .end local v5    # "retval":Lcom/android/incallui/Call;
    :cond_2
    return-object v5

    .line 882
    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v3    # "ph":Landroid/telecom/PhoneAccountHandle;
    .restart local v5    # "retval":Lcom/android/incallui/Call;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 885
    :catch_0
    move-exception v2

    .line 886
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Sub Id is not a number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDisconnectedCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 352
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectingCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 356
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getFirstCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 382
    .local v0, "result":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 385
    :cond_0
    if-nez v0, :cond_1

    .line 386
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 388
    :cond_1
    if-nez v0, :cond_2

    .line 389
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 391
    :cond_2
    if-nez v0, :cond_3

    .line 392
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 394
    :cond_3
    if-nez v0, :cond_4

    .line 395
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 397
    :cond_4
    if-nez v0, :cond_5

    .line 398
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 400
    :cond_5
    return-object v0
.end method

.method public getFirstCallWithState(I)Lcom/android/incallui/Call;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/CallList;->getCallWithState(II)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 372
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 373
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 374
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 377
    :cond_0
    return-object v0
.end method

.method public getOutgoingCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 332
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 333
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 334
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    .line 336
    :cond_0
    return-object v0
.end method

.method public getOutgoingOrActive()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 314
    .local v0, "retval":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 317
    :cond_0
    return-object v0
.end method

.method public getPendingOutgoingCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 328
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getSecondActiveCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 344
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/CallList;->getCallWithState(II)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getSecondBackgroundCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 360
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/CallList;->getCallWithState(II)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getTextResponses(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getVideoUpgradeRequestCall()Lcom/android/incallui/Call;
    .locals 4

    .prologue
    .line 417
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 418
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v2

    .line 419
    const/4 v3, 0x3

    .line 418
    if-ne v2, v3, :cond_0

    .line 420
    return-object v0

    .line 423
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getWaitingForAccountCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 324
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method hasAnyLiveCall()Z
    .locals 4

    .prologue
    .line 809
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 810
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->isCallDead(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasAnyLiveCall call = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 812
    const/4 v2, 0x1

    return v2

    .line 815
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    const-string/jumbo v2, "no active call "

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    const/4 v2, 0x0

    return v2
.end method

.method hasAnyLiveCall(I)Z
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 790
    iget-object v4, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 791
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 793
    .local v3, "ph":Landroid/telecom/PhoneAccountHandle;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->isCallDead(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 794
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hasAnyLiveCall sub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    const/4 v4, 0x1

    return v4

    .line 797
    :catch_0
    move-exception v2

    .line 798
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sub Id is not a number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 801
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "ph":Landroid/telecom/PhoneAccountHandle;
    :cond_1
    const-string/jumbo v4, "no active call "

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 802
    const/4 v4, 0x0

    return v4
.end method

.method public hasLiveCall()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 404
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 405
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 406
    return v1

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method isAnyOtherSubActive(I)Z
    .locals 5
    .param p1, "currentSub"    # I

    .prologue
    .line 847
    const/4 v1, 0x0

    .line 848
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->isDsdaEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 849
    const/4 v3, 0x0

    return v3

    .line 852
    :cond_0
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    sget v3, Lcom/android/incallui/InCallServiceImpl;->sPhoneCount:I

    if-ge v0, v3, :cond_1

    .line 854
    invoke-static {v0}, Lcom/android/incallui/QtiCallUtils;->getSubId(I)I

    move-result v2

    .line 856
    .local v2, "subId":I
    if-eq v2, p1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/incallui/CallList;->hasAnyLiveCall(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 857
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Live call found on another sub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 858
    const/4 v1, 0x1

    .line 862
    .end local v2    # "subId":I
    :cond_1
    return v1

    .line 853
    .restart local v2    # "subId":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isDsdaEnabled()Z
    .locals 1

    .prologue
    .line 431
    invoke-static {}, Lcom/android/incallui/QtiCallUtils;->isDsdaEnabled()Z

    move-result v0

    return v0
.end method

.method public notifyCallUpdateListeners(Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 239
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 240
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-eqz v2, :cond_0

    .line 241
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList$CallUpdateListener;

    .line 242
    .local v0, "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/CallList$CallUpdateListener;->onCallChanged(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 238
    .end local v0    # "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public notifyCallsOfDeviceRotation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 657
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallById:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "call$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 666
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/VideoUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 667
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telecom/InCallService$VideoCall;->setDeviceOrientation(I)V

    goto :goto_0

    .line 656
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "telecomCall"    # Landroid/telecom/Call;

    .prologue
    .line 98
    const-string/jumbo v1, "onCallAdded"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/android/incallui/Call;

    invoke-direct {v0, p1}, Lcom/android/incallui/Call;-><init>(Landroid/telecom/Call;)V

    .line 100
    .local v0, "call":Lcom/android/incallui/Call;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallAdded: callState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 104
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/CallList;->onIncoming(Lcom/android/incallui/Call;Ljava/util/List;)V

    .line 109
    :goto_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->logCallInitiationType()V

    .line 110
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 97
    return-void

    .line 106
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "telecomCall"    # Landroid/telecom/Call;

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallByTelecomCall:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallByTelecomCall:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 116
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->logCall(Lcom/android/incallui/Call;)V

    .line 117
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Removing call not previously disconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallList;->updateCallTextMap(Lcom/android/incallui/Call;Ljava/util/List;)V

    .line 113
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    return-void
.end method

.method public onChildNumberChange(Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 230
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 231
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-eqz v2, :cond_0

    .line 232
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList$CallUpdateListener;

    .line 233
    .local v0, "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    invoke-interface {v0}, Lcom/android/incallui/CallList$CallUpdateListener;->onChildNumberChange()V

    goto :goto_0

    .line 229
    .end local v0    # "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDisconnect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallList;->notifyCallUpdateListeners(Lcom/android/incallui/Call;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->notifyListenersOfDisconnect(Lcom/android/incallui/Call;)V

    .line 127
    :cond_0
    return-void
.end method

.method public onErrorDialogDismissed()V
    .locals 3

    .prologue
    .line 503
    iget-object v2, p0, Lcom/android/incallui/CallList;->mPendingDisconnectCalls:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 504
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/incallui/Call;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 506
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 507
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->finishDisconnectedCall(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 502
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    return-void
.end method

.method public onIncoming(Lcom/android/incallui/Call;Ljava/util/List;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/incallui/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p2, "textMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onIncoming - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-boolean v3, p1, Lcom/android/incallui/Call;->mIsActiveSub:Z

    if-eqz v3, :cond_0

    .line 146
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 147
    .local v2, "sub":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onIncoming - sub:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mSubId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/incallui/CallList;->mSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget v3, p0, Lcom/android/incallui/CallList;->mSubId:I

    if-eq v2, v3, :cond_0

    .line 149
    invoke-virtual {p0, v2}, Lcom/android/incallui/CallList;->setActiveSubId(I)V

    .line 153
    .end local v2    # "sub":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onIncoming - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallList;->updateCallTextMap(Lcom/android/incallui/Call;Ljava/util/List;)V

    .line 158
    iget-object v3, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList$Listener;

    .line 159
    .local v0, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v0, p1}, Lcom/android/incallui/CallList$Listener;->onIncomingCall(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 140
    .end local v0    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_2
    return-void
.end method

.method public onLastForwardedNumberChange(Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 215
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 216
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-eqz v2, :cond_0

    .line 217
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList$CallUpdateListener;

    .line 218
    .local v0, "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    invoke-interface {v0}, Lcom/android/incallui/CallList$CallUpdateListener;->onLastForwardedNumberChange()V

    goto :goto_0

    .line 214
    .end local v0    # "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public onSessionModificationStateChange(Lcom/android/incallui/Call;I)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "sessionModificationState"    # I

    .prologue
    .line 199
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 200
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-eqz v2, :cond_0

    .line 201
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList$CallUpdateListener;

    .line 202
    .local v0, "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    invoke-interface {v0, p2}, Lcom/android/incallui/CallList$CallUpdateListener;->onSessionModificationStateChange(I)V

    goto :goto_0

    .line 198
    .end local v0    # "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public onUpdate(Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 173
    const-string/jumbo v3, "onUpdate"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 175
    .local v1, "ph":Landroid/telecom/PhoneAccountHandle;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUpdate - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ph:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    :try_start_0
    iget-boolean v3, p1, Lcom/android/incallui/Call;->mIsActiveSub:Z

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 179
    .local v2, "sub":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUpdate - sub:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mSubId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/incallui/CallList;->mSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget v3, p0, Lcom/android/incallui/CallList;->mSubId:I

    if-eq v2, v3, :cond_0

    .line 181
    invoke-virtual {p0, v2}, Lcom/android/incallui/CallList;->setActiveSubId(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v2    # "sub":I
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->onUpdateCall(Lcom/android/incallui/Call;)V

    .line 188
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyGenericListeners()V

    .line 189
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 172
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sub Id is not a number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUpgradeToVideo call="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallList$Listener;

    .line 166
    .local v0, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v0, p1}, Lcom/android/incallui/CallList$Listener;->onUpgradeToVideo(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 163
    .end local v0    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_0
    return-void
.end method

.method removeActiveSubChangeListener(Lcom/android/incallui/CallList$ActiveSubChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/CallList$ActiveSubChangeListener;

    .prologue
    .line 898
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    iget-object v0, p0, Lcom/android/incallui/CallList;->mActiveSubChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 897
    return-void
.end method

.method public removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/incallui/CallList$CallUpdateListener;

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 274
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-eqz v0, :cond_0

    .line 275
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 277
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 278
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/CallList$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/CallList$Listener;

    .prologue
    .line 294
    if-eqz p1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 293
    :cond_0
    return-void
.end method

.method setActiveSubId(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 777
    iget v1, p0, Lcom/android/incallui/CallList;->mSubId:I

    if-eq p1, v1, :cond_0

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActiveSubId, oldActiveSubId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/CallList;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 779
    const-string/jumbo v2, " newActiveSubId = "

    .line 778
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 780
    iput p1, p0, Lcom/android/incallui/CallList;->mSubId:I

    .line 781
    iget-object v1, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 782
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 776
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setFilteredNumberQueryHandler(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    .prologue
    .line 698
    iput-object p1, p0, Lcom/android/incallui/CallList;->mFilteredQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    .line 697
    return-void
.end method

.method switchToOtherActiveSub()Z
    .locals 6

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveSubId()I

    move-result v0

    .line 827
    .local v0, "activeSub":I
    const/4 v3, 0x0

    .line 829
    .local v3, "subSwitched":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v4, Lcom/android/incallui/InCallServiceImpl;->sPhoneCount:I

    if-ge v1, v4, :cond_0

    .line 830
    invoke-static {v1}, Lcom/android/incallui/QtiCallUtils;->getSubId(I)I

    move-result v2

    .line 831
    .local v2, "subId":I
    if-eq v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/incallui/CallList;->hasAnyLiveCall(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 832
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchToOtherActiveSub, subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 833
    const/4 v3, 0x1

    .line 834
    invoke-static {v2}, Lcom/android/incallui/QtiCallUtils;->switchToActiveSub(I)V

    .line 835
    invoke-virtual {p0, v2}, Lcom/android/incallui/CallList;->setActiveSubId(I)V

    .line 839
    .end local v2    # "subId":I
    :cond_0
    return v3

    .line 829
    .restart local v2    # "subId":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
