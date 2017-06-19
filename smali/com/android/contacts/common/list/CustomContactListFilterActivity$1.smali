.class final Lcom/android/contacts/common/list/CustomContactListFilterActivity$1;
.super Ljava/lang/Object;
.source "CustomContactListFilterActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;)I
    .locals 9
    .param p1, "object1"    # Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    .param p2, "object2"    # Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 432
    invoke-virtual {p1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 433
    .local v0, "id1":Ljava/lang/Long;
    invoke-virtual {p2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 434
    .local v1, "id2":Ljava/lang/Long;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 435
    return v7

    .line 436
    :cond_0
    if-nez v0, :cond_1

    .line 437
    return v6

    .line 438
    :cond_1
    if-nez v1, :cond_2

    .line 439
    return v8

    .line 440
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 441
    return v6

    .line 442
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 443
    return v8

    .line 445
    :cond_4
    return v7
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;

    .prologue
    .line 431
    check-cast p1, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    .end local p1    # "object1":Ljava/lang/Object;
    check-cast p2, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    .end local p2    # "object2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$1;->compare(Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;)I

    move-result v0

    return v0
.end method
