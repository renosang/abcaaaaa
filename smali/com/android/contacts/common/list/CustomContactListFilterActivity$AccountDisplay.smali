.class public Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;
.super Ljava/lang/Object;
.source "CustomContactListFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AccountDisplay"
.end annotation


# instance fields
.field public final mDataSet:Ljava/lang/String;

.field public final mName:Ljava/lang/String;

.field public mSyncedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;",
            ">;"
        }
    .end annotation
.end field

.field public final mType:Ljava/lang/String;

.field public mUngrouped:Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

.field public mUnsyncedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;)V
    .locals 0
    .param p1, "group"    # Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->addGroup(Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    .line 474
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    .line 482
    iput-object p2, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    .line 483
    iput-object p3, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    .line 484
    iput-object p4, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mDataSet:Ljava/lang/String;

    .line 481
    return-void
.end method

.method private addGroup(Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;)V
    .locals 1
    .param p1, "group"    # Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    .prologue
    .line 492
    invoke-virtual {p1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getShouldSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public buildDiff(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 542
    .local p1, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v3, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "group$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    .line 543
    .local v0, "group":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->buildDiff()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 544
    .local v2, "oper":Landroid/content/ContentProviderOperation;
    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 546
    .end local v0    # "group":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    .end local v2    # "oper":Landroid/content/ContentProviderOperation;
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    .line 547
    .restart local v0    # "group":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->buildDiff()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 548
    .restart local v2    # "oper":Landroid/content/ContentProviderOperation;
    if-eqz v2, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 541
    .end local v0    # "group":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    .end local v2    # "oper":Landroid/content/ContentProviderOperation;
    :cond_3
    return-void
.end method

.method public setShouldSync(Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;Z)V
    .locals 1
    .param p1, "child"    # Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    .param p2, "shouldSync"    # Z

    .prologue
    .line 514
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->setShouldSync(Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;ZZ)V

    .line 513
    return-void
.end method

.method public setShouldSync(Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;ZZ)V
    .locals 2
    .param p1, "child"    # Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    .param p2, "shouldSync"    # Z
    .param p3, "attemptRemove"    # Z

    .prologue
    .line 522
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->putShouldSync(Z)V

    .line 523
    if-eqz p2, :cond_1

    .line 524
    if-eqz p3, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->-get1()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 521
    :goto_0
    return-void

    .line 530
    :cond_1
    if-eqz p3, :cond_2

    .line 531
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setShouldSync(Z)V
    .locals 3
    .param p1, "shouldSync"    # Z

    .prologue
    .line 504
    if-eqz p1, :cond_0

    .line 505
    iget-object v2, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 506
    .local v1, "oppositeChildren":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 507
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    .line 508
    .local v0, "child":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->setShouldSync(Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;ZZ)V

    .line 509
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 505
    .end local v0    # "child":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    .end local v1    # "oppositeChildren":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "oppositeChildren":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;>;"
    goto :goto_0

    .line 503
    :cond_1
    return-void
.end method
