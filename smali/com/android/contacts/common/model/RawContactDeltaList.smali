.class public Lcom/android/contacts/common/model/RawContactDeltaList;
.super Ljava/util/ArrayList;
.source "RawContactDeltaList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/RawContactDeltaList$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/contacts/common/model/RawContactDelta;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/common/model/RawContactDeltaList;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final VERBOSE_LOGGING:Z


# instance fields
.field private mJoinWithRawContactIds:[J

.field private mSplitRawContacts:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-class v0, Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/RawContactDeltaList;->TAG:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/android/contacts/common/model/RawContactDeltaList;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/common/model/RawContactDeltaList;->VERBOSE_LOGGING:Z

    .line 546
    new-instance v0, Lcom/android/contacts/common/model/RawContactDeltaList$1;

    invoke-direct {v0}, Lcom/android/contacts/common/model/RawContactDeltaList$1;-><init>()V

    .line 545
    sput-object v0, Lcom/android/contacts/common/model/RawContactDeltaList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method private buildSplitContactDiff(Ljava/util/ArrayList;[I)V
    .locals 5
    .param p2, "backRefs"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v1

    .line 342
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 343
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 344
    if-ne v2, v3, :cond_1

    .line 343
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 347
    :cond_1
    invoke-direct {p0, v2, v3, p2}, Lcom/android/contacts/common/model/RawContactDeltaList;->buildSplitContactDiffHelper(II[I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 348
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 342
    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
    .end local v3    # "j":I
    :cond_3
    return-void
.end method

.method private buildSplitContactDiffHelper(II[I)Landroid/content/ContentProviderOperation$Builder;
    .locals 12
    .param p1, "index1"    # I
    .param p2, "index2"    # I
    .param p3, "backRefs"    # [I

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 376
    sget-object v5, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 377
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v5, "type"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 379
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v5}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v5

    const-string/jumbo v6, "_id"

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 380
    .local v3, "rawContactId1":Ljava/lang/Long;
    aget v0, p3, p1

    .line 381
    .local v0, "backRef1":I
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-ltz v5, :cond_0

    .line 382
    const-string/jumbo v5, "raw_contact_id1"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 389
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v5}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v5

    const-string/jumbo v6, "_id"

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 390
    .local v4, "rawContactId2":Ljava/lang/Long;
    aget v1, p3, p2

    .line 391
    .local v1, "backRef2":I
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-ltz v5, :cond_2

    .line 392
    const-string/jumbo v5, "raw_contact_id2"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 398
    :goto_1
    return-object v2

    .line 383
    .end local v1    # "backRef2":I
    .end local v4    # "rawContactId2":Ljava/lang/Long;
    :cond_0
    if-ltz v0, :cond_1

    .line 384
    const-string/jumbo v5, "raw_contact_id1"

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 386
    :cond_1
    return-object v8

    .line 393
    .restart local v1    # "backRef2":I
    .restart local v4    # "rawContactId2":Ljava/lang/Long;
    :cond_2
    if-ltz v1, :cond_3

    .line 394
    const-string/jumbo v5, "raw_contact_id2"

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 396
    :cond_3
    return-object v8
.end method

.method private buildSplitContactDiffWrapper(Ljava/util/ArrayList;[I)V
    .locals 7
    .param p2, "backRefs"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/CPOWrapper;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/CPOWrapper;>;"
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v1

    .line 361
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 362
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 363
    if-ne v2, v3, :cond_1

    .line 362
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 366
    :cond_1
    invoke-direct {p0, v2, v3, p2}, Lcom/android/contacts/common/model/RawContactDeltaList;->buildSplitContactDiffHelper(II[I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 367
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    if-eqz v0, :cond_0

    .line 368
    new-instance v4, Lcom/android/contacts/common/model/CPOWrapper;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lcom/android/contacts/common/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 361
    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    .end local v3    # "j":I
    :cond_3
    return-void
.end method

.method private static diffToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "[\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "op$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation;

    .line 306
    .local v0, "op":Landroid/content/ContentProviderOperation;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string/jumbo v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 309
    .end local v0    # "op":Landroid/content/ContentProviderOperation;
    :cond_0
    const-string/jumbo v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static diffToStringWrapper(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/CPOWrapper;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "cpoWrappers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/CPOWrapper;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 318
    .local v2, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cpoWrapper$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/CPOWrapper;

    .line 319
    .local v0, "cpoWrapper":Lcom/android/contacts/common/model/CPOWrapper;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/CPOWrapper;->getOperation()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 321
    .end local v0    # "cpoWrapper":Lcom/android/contacts/common/model/CPOWrapper;
    :cond_0
    invoke-static {v2}, Lcom/android/contacts/common/model/RawContactDeltaList;->diffToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/common/model/RawContactDeltaList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)",
            "Lcom/android/contacts/common/model/RawContactDeltaList;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    new-instance v0, Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-direct {v0}, Lcom/android/contacts/common/model/RawContactDeltaList;-><init>()V

    .line 81
    .local v0, "state":Lcom/android/contacts/common/model/RawContactDeltaList;
    invoke-virtual {v0, p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->addAll(Ljava/util/Iterator;)V

    .line 82
    return-object v0
.end method

.method public static fromQuery(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/RawContactDeltaList;
    .locals 7
    .param p0, "entityUri"    # Landroid/net/Uri;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v6

    .line 68
    .local v6, "iterator":Landroid/content/EntityIterator;
    :try_start_0
    invoke-static {v6}, Lcom/android/contacts/common/model/RawContactDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/common/model/RawContactDeltaList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 70
    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    .line 68
    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    .line 69
    throw v0
.end method

.method public static mergeAfter(Lcom/android/contacts/common/model/RawContactDeltaList;Lcom/android/contacts/common/model/RawContactDeltaList;)Lcom/android/contacts/common/model/RawContactDeltaList;
    .locals 6
    .param p0, "local"    # Lcom/android/contacts/common/model/RawContactDeltaList;
    .param p1, "remote"    # Lcom/android/contacts/common/model/RawContactDeltaList;

    .prologue
    .line 105
    if-nez p0, :cond_0

    new-instance p0, Lcom/android/contacts/common/model/RawContactDeltaList;

    .end local p0    # "local":Lcom/android/contacts/common/model/RawContactDeltaList;
    invoke-direct {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;-><init>()V

    .line 108
    .restart local p0    # "local":Lcom/android/contacts/common/model/RawContactDeltaList;
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "remoteEntity$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/RawContactDelta;

    .line 109
    .local v3, "remoteEntity":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v3}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    .line 112
    .local v2, "rawContactId":Ljava/lang/Long;
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/model/RawContactDeltaList;->getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v0

    .line 113
    .local v0, "localEntity":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-static {v0, v3}, Lcom/android/contacts/common/model/RawContactDelta;->mergeAfter(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;)Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v1

    .line 115
    .local v1, "merged":Lcom/android/contacts/common/model/RawContactDelta;
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/RawContactDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    .end local v0    # "localEntity":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v1    # "merged":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v2    # "rawContactId":Ljava/lang/Long;
    .end local v3    # "remoteEntity":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_2
    return-object p0
.end method


# virtual methods
.method public addAll(Ljava/util/Iterator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 90
    .local v1, "nextObject":Ljava/lang/Object;
    instance-of v3, v1, Landroid/content/Entity;

    if-eqz v3, :cond_0

    .line 91
    check-cast v1, Landroid/content/Entity;

    .end local v1    # "nextObject":Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/contacts/common/model/RawContact;->createFrom(Landroid/content/Entity;)Lcom/android/contacts/common/model/RawContact;

    move-result-object v0

    .line 93
    .local v0, "before":Lcom/android/contacts/common/model/RawContact;
    :goto_1
    invoke-static {v0}, Lcom/android/contacts/common/model/RawContactDelta;->fromBefore(Lcom/android/contacts/common/model/RawContact;)Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v2

    .line 94
    .local v2, "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/model/RawContactDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    .end local v0    # "before":Lcom/android/contacts/common/model/RawContact;
    .end local v2    # "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    .restart local v1    # "nextObject":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/android/contacts/common/model/RawContact;

    move-object v0, v1

    goto :goto_1

    .line 85
    .end local v1    # "nextObject":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method protected beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;
    .locals 3

    .prologue
    .line 330
    sget-object v1, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    .line 329
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 331
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 332
    return-object v0
.end method

.method public buildDiff()Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    sget-boolean v16, Lcom/android/contacts/common/model/RawContactDeltaList;->VERBOSE_LOGGING:Z

    if-eqz v16, :cond_0

    .line 132
    sget-object v16, Lcom/android/contacts/common/model/RawContactDeltaList;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "buildDiff: list="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 136
    .local v7, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->findRawContactId()J

    move-result-wide v12

    .line 137
    .local v12, "rawContactId":J
    const/4 v9, -0x1

    .line 140
    .local v9, "firstInsertRow":I
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "delta$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/RawContactDelta;

    .line 141
    .local v5, "delta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v5, v7}, Lcom/android/contacts/common/model/RawContactDelta;->buildAssert(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 144
    .end local v5    # "delta":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 145
    .local v2, "assertMark":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v3, v0, [I

    .line 147
    .local v3, "backRefs":[I
    const/4 v14, 0x0

    .line 150
    .local v14, "rawContactIndex":I
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/RawContactDelta;

    .line 151
    .restart local v5    # "delta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 152
    .local v8, "firstBatch":I
    invoke-virtual {v5}, Lcom/android/contacts/common/model/RawContactDelta;->isContactInsert()Z

    move-result v10

    .line 153
    .local v10, "isInsert":Z
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "rawContactIndex":I
    .local v15, "rawContactIndex":I
    if-eqz v10, :cond_2

    move/from16 v16, v8

    :goto_2
    aput v16, v3, v14

    .line 155
    invoke-virtual {v5, v7}, Lcom/android/contacts/common/model/RawContactDelta;->buildDiff(Ljava/util/ArrayList;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    move-object/from16 v17, v0

    const/16 v16, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    aget-wide v20, v17, v16

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 161
    .local v11, "joinedRawContactId":Ljava/lang/Long;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 162
    .local v4, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v19, "raw_contact_id1"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 163
    const-wide/16 v20, -0x1

    cmp-long v19, v12, v20

    if-eqz v19, :cond_3

    .line 164
    const-string/jumbo v19, "raw_contact_id2"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 169
    :goto_4
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 153
    .end local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v11    # "joinedRawContactId":Ljava/lang/Long;
    :cond_2
    const/16 v16, -0x1

    goto :goto_2

    .line 167
    .restart local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v11    # "joinedRawContactId":Ljava/lang/Long;
    :cond_3
    const-string/jumbo v19, "raw_contact_id2"

    .line 166
    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_4

    .line 174
    .end local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v11    # "joinedRawContactId":Ljava/lang/Long;
    :cond_4
    if-nez v10, :cond_6

    :cond_5
    :goto_5
    move v14, v15

    .end local v15    # "rawContactIndex":I
    .restart local v14    # "rawContactIndex":I
    goto :goto_1

    .line 177
    .end local v14    # "rawContactIndex":I
    .restart local v15    # "rawContactIndex":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/model/RawContactDeltaList;->mSplitRawContacts:Z

    move/from16 v16, v0

    if-nez v16, :cond_5

    .line 179
    const-wide/16 v16, -0x1

    cmp-long v16, v12, v16

    if-eqz v16, :cond_7

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 182
    .restart local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v16, "raw_contact_id1"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 183
    const-string/jumbo v16, "raw_contact_id2"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 184
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 186
    .end local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_7
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_8

    .line 188
    move v9, v8

    goto :goto_5

    .line 192
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 193
    .restart local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v16, "raw_contact_id1"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 195
    const-string/jumbo v16, "raw_contact_id2"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 196
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 200
    .end local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v5    # "delta":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v8    # "firstBatch":I
    .end local v10    # "isInsert":Z
    .end local v15    # "rawContactIndex":I
    .restart local v14    # "rawContactIndex":I
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/model/RawContactDeltaList;->mSplitRawContacts:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a

    .line 201
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3}, Lcom/android/contacts/common/model/RawContactDeltaList;->buildSplitContactDiff(Ljava/util/ArrayList;[I)V

    .line 205
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v2, :cond_b

    .line 206
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 208
    :cond_b
    sget-boolean v16, Lcom/android/contacts/common/model/RawContactDeltaList;->VERBOSE_LOGGING:Z

    if-eqz v16, :cond_c

    .line 209
    sget-object v16, Lcom/android/contacts/common/model/RawContactDeltaList;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "buildDiff: ops="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v7}, Lcom/android/contacts/common/model/RawContactDeltaList;->diffToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_c
    return-object v7
.end method

.method public buildDiffWrapper()Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/CPOWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    sget-boolean v16, Lcom/android/contacts/common/model/RawContactDeltaList;->VERBOSE_LOGGING:Z

    if-eqz v16, :cond_0

    .line 220
    sget-object v16, Lcom/android/contacts/common/model/RawContactDeltaList;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "buildDiffWrapper: list="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 224
    .local v7, "diffWrapper":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/CPOWrapper;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->findRawContactId()J

    move-result-wide v12

    .line 225
    .local v12, "rawContactId":J
    const/4 v9, -0x1

    .line 228
    .local v9, "firstInsertRow":I
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "delta$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/RawContactDelta;

    .line 229
    .local v5, "delta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v5, v7}, Lcom/android/contacts/common/model/RawContactDelta;->buildAssertWrapper(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 232
    .end local v5    # "delta":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 233
    .local v2, "assertMark":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v3, v0, [I

    .line 235
    .local v3, "backRefs":[I
    const/4 v14, 0x0

    .line 238
    .local v14, "rawContactIndex":I
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/RawContactDelta;

    .line 239
    .restart local v5    # "delta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 240
    .local v8, "firstBatch":I
    invoke-virtual {v5}, Lcom/android/contacts/common/model/RawContactDelta;->isContactInsert()Z

    move-result v10

    .line 241
    .local v10, "isInsert":Z
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "rawContactIndex":I
    .local v15, "rawContactIndex":I
    if-eqz v10, :cond_2

    move/from16 v16, v8

    :goto_2
    aput v16, v3, v14

    .line 243
    invoke-virtual {v5, v7}, Lcom/android/contacts/common/model/RawContactDelta;->buildDiffWrapper(Ljava/util/ArrayList;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    move-object/from16 v17, v0

    const/16 v16, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    aget-wide v20, v17, v16

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 249
    .local v11, "joinedRawContactId":Ljava/lang/Long;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 250
    .local v4, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v19, "raw_contact_id1"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 251
    const-wide/16 v20, -0x1

    cmp-long v19, v12, v20

    if-eqz v19, :cond_3

    .line 252
    const-string/jumbo v19, "raw_contact_id2"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 257
    :goto_4
    new-instance v19, Lcom/android/contacts/common/model/CPOWrapper;

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v20

    const/16 v21, 0x2

    invoke-direct/range {v19 .. v21}, Lcom/android/contacts/common/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 241
    .end local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v11    # "joinedRawContactId":Ljava/lang/Long;
    :cond_2
    const/16 v16, -0x1

    goto :goto_2

    .line 255
    .restart local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v11    # "joinedRawContactId":Ljava/lang/Long;
    :cond_3
    const-string/jumbo v19, "raw_contact_id2"

    .line 254
    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_4

    .line 262
    .end local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v11    # "joinedRawContactId":Ljava/lang/Long;
    :cond_4
    if-nez v10, :cond_6

    :cond_5
    :goto_5
    move v14, v15

    .end local v15    # "rawContactIndex":I
    .restart local v14    # "rawContactIndex":I
    goto/16 :goto_1

    .line 265
    .end local v14    # "rawContactIndex":I
    .restart local v15    # "rawContactIndex":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/model/RawContactDeltaList;->mSplitRawContacts:Z

    move/from16 v16, v0

    if-nez v16, :cond_5

    .line 267
    const-wide/16 v16, -0x1

    cmp-long v16, v12, v16

    if-eqz v16, :cond_7

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 270
    .restart local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v16, "raw_contact_id1"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 271
    const-string/jumbo v16, "raw_contact_id2"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 272
    new-instance v16, Lcom/android/contacts/common/model/CPOWrapper;

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    const/16 v18, 0x2

    invoke-direct/range {v16 .. v18}, Lcom/android/contacts/common/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 274
    .end local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_7
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_8

    .line 276
    move v9, v8

    goto :goto_5

    .line 280
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 281
    .restart local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v16, "raw_contact_id1"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 283
    const-string/jumbo v16, "raw_contact_id2"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 284
    new-instance v16, Lcom/android/contacts/common/model/CPOWrapper;

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    const/16 v18, 0x2

    invoke-direct/range {v16 .. v18}, Lcom/android/contacts/common/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 288
    .end local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v5    # "delta":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v8    # "firstBatch":I
    .end local v10    # "isInsert":Z
    .end local v15    # "rawContactIndex":I
    .restart local v14    # "rawContactIndex":I
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/model/RawContactDeltaList;->mSplitRawContacts:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a

    .line 289
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3}, Lcom/android/contacts/common/model/RawContactDeltaList;->buildSplitContactDiffWrapper(Ljava/util/ArrayList;[I)V

    .line 293
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v2, :cond_b

    .line 294
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 296
    :cond_b
    sget-boolean v16, Lcom/android/contacts/common/model/RawContactDeltaList;->VERBOSE_LOGGING:Z

    if-eqz v16, :cond_c

    .line 297
    sget-object v16, Lcom/android/contacts/common/model/RawContactDeltaList;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "buildDiff: ops="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v7}, Lcom/android/contacts/common/model/RawContactDeltaList;->diffToStringWrapper(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_c
    return-object v7
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public findRawContactId()J
    .locals 8

    .prologue
    .line 407
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "delta$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContactDelta;

    .line 408
    .local v0, "delta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    const-string/jumbo v4, "_id"

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 409
    .local v2, "rawContactId":Ljava/lang/Long;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 410
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    return-wide v4

    .line 413
    .end local v0    # "delta":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v2    # "rawContactId":Ljava/lang/Long;
    :cond_1
    const-wide/16 v4, -0x1

    return-wide v4
.end method

.method public getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/common/model/RawContactDelta;
    .locals 2
    .param p1, "rawContactId"    # Ljava/lang/Long;

    .prologue
    .line 434
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContactDeltaList;->indexOfRawContactId(Ljava/lang/Long;)I

    move-result v0

    .line 435
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContactDelta;

    goto :goto_0
.end method

.method public getFirstWritableRawContact(Landroid/content/Context;)Lcom/android/contacts/common/model/RawContactDelta;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 468
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContactDeltaList;->indexOfFirstWritableRawContact(Landroid/content/Context;)I

    move-result v0

    .line 469
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContactDelta;

    goto :goto_0
.end method

.method public getRawContactId(I)Ljava/lang/Long;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 420
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 421
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContactDelta;

    .line 422
    .local v0, "delta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    .line 423
    .local v1, "values":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    const-string/jumbo v2, "_id"

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 427
    .end local v0    # "delta":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v1    # "values":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSuperPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 9
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 473
    const/4 v5, 0x0

    .line 474
    .local v5, "primary":Lcom/android/contacts/common/model/ValuesDelta;
    const/4 v6, 0x0

    .line 475
    .local v6, "randomEntry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v5    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v6    # "randomEntry":Lcom/android/contacts/common/model/ValuesDelta;
    .local v1, "delta$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContactDelta;

    .line 476
    .local v0, "delta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 477
    .local v4, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v4, :cond_1

    return-object v8

    .line 479
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    .line 480
    .local v2, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->isSuperPrimary()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 481
    return-object v2

    .line 482
    :cond_3
    if-nez v5, :cond_4

    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->isPrimary()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 483
    move-object v5, v2

    .local v5, "primary":Lcom/android/contacts/common/model/ValuesDelta;
    goto :goto_0

    .line 484
    .end local v5    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_4
    if-nez v6, :cond_2

    .line 485
    move-object v6, v2

    .local v6, "randomEntry":Lcom/android/contacts/common/model/ValuesDelta;
    goto :goto_0

    .line 490
    .end local v0    # "delta":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v2    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v6    # "randomEntry":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_5
    if-eqz v5, :cond_6

    .line 491
    return-object v5

    .line 493
    :cond_6
    return-object v6
.end method

.method public indexOfFirstWritableRawContact(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 458
    const/4 v2, 0x0

    .line 459
    .local v2, "entityIndex":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "delta$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContactDelta;

    .line 460
    .local v0, "delta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/RawContactDelta;->getRawContactAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    .line 461
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 463
    .end local v0    # "delta":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method public indexOfRawContactId(Ljava/lang/Long;)I
    .locals 5
    .param p1, "rawContactId"    # Ljava/lang/Long;

    .prologue
    const/4 v4, -0x1

    .line 442
    if-nez p1, :cond_0

    return v4

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v2

    .line 444
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 445
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/RawContactDeltaList;->getRawContactId(I)Ljava/lang/Long;

    move-result-object v0

    .line 446
    .local v0, "currentId":Ljava/lang/Long;
    invoke-virtual {p1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 447
    return v1

    .line 444
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    .end local v0    # "currentId":Ljava/lang/Long;
    :cond_2
    return v4
.end method

.method public isMarkedForJoining()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 512
    iget-object v1, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isMarkedForSplitting()Z
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mSplitRawContacts:Z

    return v0
.end method

.method public isOnlySimAccountType()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 579
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContactDelta;->isSimAccountType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    return v2

    .line 582
    :cond_0
    return v1
.end method

.method public markRawContactsForSplitting()V
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mSplitRawContacts:Z

    .line 499
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 536
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 537
    .local v1, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 538
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 539
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/model/RawContactDeltaList;->add(Ljava/lang/Object;)Z

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    .line 542
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mSplitRawContacts:Z

    .line 535
    return-void

    :cond_1
    move v3, v4

    .line 542
    goto :goto_1
.end method

.method public setJoinWithRawContacts([J)V
    .locals 0
    .param p1, "rawContactIds"    # [J

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    .line 507
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    const-string/jumbo v1, "Split="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    iget-boolean v1, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mSplitRawContacts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 566
    const-string/jumbo v1, ", Join=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    iget-object v1, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    const-string/jumbo v1, "], Values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-super {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v2

    .line 526
    .local v2, "size":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "delta$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContactDelta;

    .line 528
    .local v0, "delta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 530
    .end local v0    # "delta":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 531
    iget-boolean v3, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mSplitRawContacts:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    return-void

    .line 531
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
