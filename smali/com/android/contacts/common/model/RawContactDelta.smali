.class public Lcom/android/contacts/common/model/RawContactDelta;
.super Ljava/lang/Object;
.source "RawContactDelta.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/RawContactDelta$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/common/model/RawContactDelta;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "EntityDelta"


# instance fields
.field private extraSimNumber:Ljava/lang/String;

.field private hasExtraSimPhone:Z

.field private mContactsQueryUri:Landroid/net/Uri;

.field private final mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;>;"
        }
    .end annotation
.end field

.field private mValues:Lcom/android/contacts/common/model/ValuesDelta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 794
    new-instance v0, Lcom/android/contacts/common/model/RawContactDelta$1;

    invoke-direct {v0}, Lcom/android/contacts/common/model/RawContactDelta$1;-><init>()V

    .line 793
    sput-object v0, Lcom/android/contacts/common/model/RawContactDelta;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 92
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/common/model/ValuesDelta;)V
    .locals 1
    .param p1, "values"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 92
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    .line 98
    iput-object p1, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 97
    return-void
.end method

.method private buildAssertHelper()Landroid/content/ContentProviderOperation$Builder;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 448
    iget-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v3

    .line 449
    .local v3, "isContactInsert":Z
    const/4 v2, 0x0

    .line 450
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    if-nez v3, :cond_2

    .line 452
    iget-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 453
    .local v0, "beforeId":Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    const-string/jumbo v5, "version"

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 454
    .local v1, "beforeVersion":Ljava/lang/Long;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    return-object v2

    .line 455
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 456
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 457
    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 459
    .end local v0    # "beforeId":Ljava/lang/Long;
    .end local v1    # "beforeVersion":Ljava/lang/Long;
    .end local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_2
    return-object v2
.end method

.method private containsEntry(Lcom/android/contacts/common/model/ValuesDelta;)Z
    .locals 5
    .param p1, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 363
    iget-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 364
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 366
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    return v4

    .line 369
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "child$iterator":Ljava/util/Iterator;
    .end local v2    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method public static fromBefore(Lcom/android/contacts/common/model/RawContact;)Lcom/android/contacts/common/model/RawContactDelta;
    .locals 5
    .param p0, "before"    # Lcom/android/contacts/common/model/RawContact;

    .prologue
    .line 106
    new-instance v0, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-direct {v0}, Lcom/android/contacts/common/model/RawContactDelta;-><init>()V

    .line 107
    .local v0, "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/model/ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 108
    iget-object v3, v0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    const-string/jumbo v4, "_id"

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/ValuesDelta;->setIdColumn(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getContentValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "values$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 110
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/android/contacts/common/model/ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_0

    .line 112
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    return-object v0
.end method

.method private getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "lazyCreate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    iget-object v1, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 264
    .local v0, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 265
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_0
    return-object v0
.end method

.method public static mergeAfter(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;)Lcom/android/contacts/common/model/RawContactDelta;
    .locals 10
    .param p0, "local"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "remote"    # Lcom/android/contacts/common/model/RawContactDelta;

    .prologue
    const/4 v9, 0x0

    .line 123
    iget-object v7, p1, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 124
    .local v7, "remoteValues":Lcom/android/contacts/common/model/ValuesDelta;
    if-nez p0, :cond_1

    invoke-virtual {v7}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Lcom/android/contacts/common/model/ValuesDelta;->isTransient()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    return-object v9

    .line 127
    :cond_1
    if-nez p0, :cond_2

    new-instance p0, Lcom/android/contacts/common/model/RawContactDelta;

    .end local p0    # "local":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-direct {p0}, Lcom/android/contacts/common/model/RawContactDelta;-><init>()V

    .line 138
    .restart local p0    # "local":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_2
    iget-object v8, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v9, p1, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-static {v8, v9}, Lcom/android/contacts/common/model/ValuesDelta;->mergeAfter(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 141
    iget-object v8, p1, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 142
    .local v3, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "remoteEntry$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/ValuesDelta;

    .line 143
    .local v5, "remoteEntry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v5}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 146
    .local v0, "childId":Ljava/lang/Long;
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/RawContactDelta;->getEntry(Ljava/lang/Long;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    .line 147
    .local v1, "localEntry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-static {v1, v5}, Lcom/android/contacts/common/model/ValuesDelta;->mergeAfter(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    .line 149
    .local v2, "merged":Lcom/android/contacts/common/model/ValuesDelta;
    if-nez v1, :cond_4

    if-eqz v2, :cond_4

    .line 151
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_0

    .line 156
    .end local v0    # "childId":Ljava/lang/Long;
    .end local v1    # "localEntry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v2    # "merged":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v5    # "remoteEntry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v6    # "remoteEntry$iterator":Ljava/util/Iterator;
    :cond_5
    return-object p0
.end method

.method private possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V
    .locals 1
    .param p2, "builder"    # Landroid/content/ContentProviderOperation$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentProviderOperation$Builder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p2, :cond_0

    .line 410
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_0
    return-void
.end method

.method private possibleAddWrapper(Ljava/util/ArrayList;Lcom/android/contacts/common/model/BuilderWrapper;)V
    .locals 3
    .param p2, "bw"    # Lcom/android/contacts/common/model/BuilderWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/CPOWrapper;",
            ">;",
            "Lcom/android/contacts/common/model/BuilderWrapper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/CPOWrapper;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/contacts/common/model/BuilderWrapper;->getBuilder()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    new-instance v0, Lcom/android/contacts/common/model/CPOWrapper;

    invoke-virtual {p2}, Lcom/android/contacts/common/model/BuilderWrapper;->getBuilder()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/contacts/common/model/BuilderWrapper;->getType()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/common/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_0
    return-void
.end method


# virtual methods
.method public addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 2
    .param p1, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 293
    invoke-virtual {p1}, Lcom/android/contacts/common/model/ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "mimeType":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    return-object p1
.end method

.method public buildAssert(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 430
    .local p1, "buildInto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {p0}, Lcom/android/contacts/common/model/RawContactDelta;->buildAssertHelper()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 431
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_0
    return-void
.end method

.method public buildAssertWrapper(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/CPOWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 441
    .local p1, "buildInto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/CPOWrapper;>;"
    invoke-direct {p0}, Lcom/android/contacts/common/model/RawContactDelta;->buildAssertHelper()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 442
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    if-eqz v0, :cond_0

    .line 443
    new-instance v1, Lcom/android/contacts/common/model/CPOWrapper;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/common/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_0
    return-void
.end method

.method public buildDiff(Ljava/util/ArrayList;)V
    .locals 14
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
    .line 601
    .local p1, "buildInto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 603
    .local v5, "firstIndex":I
    iget-object v11, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v11}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v7

    .line 604
    .local v7, "isContactInsert":Z
    iget-object v11, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v11}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v6

    .line 605
    .local v6, "isContactDelete":Z
    if-nez v7, :cond_0

    if-eqz v6, :cond_5

    :cond_0
    const/4 v8, 0x0

    .line 607
    .local v8, "isContactUpdate":Z
    :goto_0
    iget-object v11, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v11}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 611
    .local v1, "beforeId":Ljava/lang/Long;
    if-eqz v7, :cond_1

    .line 615
    iget-object v11, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    const-string/jumbo v12, "aggregation_mode"

    const/4 v13, 0x2

    invoke-virtual {v11, v12, v13}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 619
    :cond_1
    iget-object v11, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v12, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 620
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-direct {p0, p1, v2}, Lcom/android/contacts/common/model/RawContactDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    .line 623
    iget-object v11, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 624
    .local v9, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "child$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/ValuesDelta;

    .line 626
    .local v3, "child":Lcom/android/contacts/common/model/ValuesDelta;
    if-nez v6, :cond_3

    .line 629
    iget-object v11, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    sget-object v12, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 630
    sget-object v11, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 631
    const-string/jumbo v12, "data"

    .line 630
    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 636
    :goto_2
    invoke-virtual {v3}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 637
    if-eqz v7, :cond_7

    .line 639
    const-string/jumbo v11, "raw_contact_id"

    invoke-virtual {v2, v11, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 648
    :cond_4
    :goto_3
    invoke-direct {p0, p1, v2}, Lcom/android/contacts/common/model/RawContactDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    goto :goto_1

    .line 605
    .end local v1    # "beforeId":Ljava/lang/Long;
    .end local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v3    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v4    # "child$iterator":Ljava/util/Iterator;
    .end local v8    # "isContactUpdate":Z
    .end local v9    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v10    # "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_5
    const/4 v8, 0x1

    .restart local v8    # "isContactUpdate":Z
    goto :goto_0

    .line 633
    .restart local v1    # "beforeId":Ljava/lang/Long;
    .restart local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v3    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .restart local v4    # "child$iterator":Ljava/util/Iterator;
    .restart local v9    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .restart local v10    # "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_6
    sget-object v11, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v11}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    goto :goto_2

    .line 642
    :cond_7
    const-string/jumbo v11, "raw_contact_id"

    invoke-virtual {v2, v11, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    .line 644
    :cond_8
    if-eqz v7, :cond_4

    if-eqz v2, :cond_4

    .line 646
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "When parent insert, child must be also"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 652
    .end local v3    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v4    # "child$iterator":Ljava/util/Iterator;
    .end local v9    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, v5, :cond_b

    const/4 v0, 0x1

    .line 653
    .local v0, "addedOperations":Z
    :goto_4
    if-eqz v0, :cond_c

    if-eqz v8, :cond_c

    .line 655
    const/4 v11, 0x2

    invoke-virtual {p0, v1, v11}, Lcom/android/contacts/common/model/RawContactDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 656
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {p1, v5, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 659
    const/4 v11, 0x0

    invoke-virtual {p0, v1, v11}, Lcom/android/contacts/common/model/RawContactDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 660
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    :cond_a
    :goto_5
    return-void

    .line 652
    .end local v0    # "addedOperations":Z
    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    .line 661
    .restart local v0    # "addedOperations":Z
    :cond_c
    if-eqz v7, :cond_a

    .line 663
    iget-object v11, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 664
    const-string/jumbo v11, "aggregation_mode"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 665
    const-string/jumbo v11, "_id=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 666
    const/4 v11, 0x0

    invoke-virtual {v2, v11, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 667
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public buildDiffWrapper(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/CPOWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 676
    .local p1, "buildInto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/CPOWrapper;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 678
    .local v8, "firstIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v14}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v10

    .line 679
    .local v10, "isContactInsert":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v14}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v9

    .line 680
    .local v9, "isContactDelete":Z
    if-nez v10, :cond_0

    if-eqz v9, :cond_5

    :cond_0
    const/4 v11, 0x0

    .line 682
    .local v11, "isContactUpdate":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v14}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v3

    .line 684
    .local v3, "beforeId":Ljava/lang/Long;
    if-eqz v10, :cond_1

    .line 688
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    const-string/jumbo v15, "aggregation_mode"

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 692
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiffWrapper(Landroid/net/Uri;)Lcom/android/contacts/common/model/BuilderWrapper;

    move-result-object v5

    .line 693
    .local v5, "bw":Lcom/android/contacts/common/model/BuilderWrapper;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/common/model/RawContactDelta;->possibleAddWrapper(Ljava/util/ArrayList;Lcom/android/contacts/common/model/BuilderWrapper;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 697
    .local v12, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "child$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/ValuesDelta;

    .line 699
    .local v6, "child":Lcom/android/contacts/common/model/ValuesDelta;
    if-nez v9, :cond_3

    .line 702
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    sget-object v15, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 703
    sget-object v14, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 704
    const-string/jumbo v15, "data"

    .line 703
    invoke-static {v14, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiffWrapper(Landroid/net/Uri;)Lcom/android/contacts/common/model/BuilderWrapper;

    move-result-object v5

    .line 709
    :goto_2
    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 710
    if-eqz v10, :cond_7

    .line 712
    invoke-virtual {v5}, Lcom/android/contacts/common/model/BuilderWrapper;->getBuilder()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string/jumbo v15, "raw_contact_id"

    invoke-virtual {v14, v15, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 721
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/common/model/RawContactDelta;->possibleAddWrapper(Ljava/util/ArrayList;Lcom/android/contacts/common/model/BuilderWrapper;)V

    goto :goto_1

    .line 680
    .end local v3    # "beforeId":Ljava/lang/Long;
    .end local v5    # "bw":Lcom/android/contacts/common/model/BuilderWrapper;
    .end local v6    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v7    # "child$iterator":Ljava/util/Iterator;
    .end local v11    # "isContactUpdate":Z
    .end local v12    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v13    # "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_5
    const/4 v11, 0x1

    .restart local v11    # "isContactUpdate":Z
    goto/16 :goto_0

    .line 706
    .restart local v3    # "beforeId":Ljava/lang/Long;
    .restart local v5    # "bw":Lcom/android/contacts/common/model/BuilderWrapper;
    .restart local v6    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .restart local v7    # "child$iterator":Ljava/util/Iterator;
    .restart local v12    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .restart local v13    # "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_6
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v14}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiffWrapper(Landroid/net/Uri;)Lcom/android/contacts/common/model/BuilderWrapper;

    move-result-object v5

    goto :goto_2

    .line 715
    :cond_7
    invoke-virtual {v5}, Lcom/android/contacts/common/model/BuilderWrapper;->getBuilder()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string/jumbo v15, "raw_contact_id"

    invoke-virtual {v14, v15, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    .line 717
    :cond_8
    if-eqz v10, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/contacts/common/model/BuilderWrapper;->getBuilder()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 719
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "When parent insert, child must be also"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 725
    .end local v6    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v7    # "child$iterator":Ljava/util/Iterator;
    .end local v12    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-le v14, v8, :cond_b

    const/4 v2, 0x1

    .line 726
    .local v2, "addedOperations":Z
    :goto_4
    if-eqz v2, :cond_c

    if-eqz v11, :cond_c

    .line 729
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/android/contacts/common/model/RawContactDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 730
    .local v4, "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v14, Lcom/android/contacts/common/model/CPOWrapper;

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    const/16 v16, 0x2

    invoke-direct/range {v14 .. v16}, Lcom/android/contacts/common/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 733
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/android/contacts/common/model/RawContactDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 734
    new-instance v14, Lcom/android/contacts/common/model/CPOWrapper;

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    const/16 v16, 0x2

    invoke-direct/range {v14 .. v16}, Lcom/android/contacts/common/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    .end local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_a
    :goto_5
    return-void

    .line 725
    .end local v2    # "addedOperations":Z
    :cond_b
    const/4 v2, 0x0

    goto :goto_4

    .line 735
    .restart local v2    # "addedOperations":Z
    :cond_c
    if-eqz v10, :cond_a

    .line 737
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 738
    .restart local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v14, "aggregation_mode"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 739
    const-string/jumbo v14, "_id=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    invoke-virtual {v4, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 740
    const/4 v14, 0x0

    invoke-virtual {v4, v14, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 741
    new-instance v14, Lcom/android/contacts/common/model/CPOWrapper;

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    const/16 v16, 0x2

    invoke-direct/range {v14 .. v16}, Lcom/android/contacts/common/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method protected buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .param p1, "beforeId"    # Ljava/lang/Long;
    .param p2, "mode"    # I

    .prologue
    .line 750
    iget-object v1, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 751
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v1, "aggregation_mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 753
    return-object v0
.end method

.method public buildSimDiff()Landroid/content/ContentValues;
    .locals 24

    .prologue
    .line 463
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 464
    .local v17, "values":Landroid/content/ContentValues;
    const-string/jumbo v20, "vnd.android.cursor.item/name"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 465
    .local v10, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const-string/jumbo v20, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 466
    .local v16, "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const-string/jumbo v20, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 468
    .local v7, "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const/4 v9, 0x0

    .line 469
    .local v9, "nameValuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    const/4 v6, 0x0

    .line 471
    .local v6, "emailValuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v20, "vnd.android.cursor.item/name"

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v20

    if-lez v20, :cond_0

    .line 472
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "nameValuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    check-cast v9, Lcom/android/contacts/common/model/ValuesDelta;

    .line 473
    .local v9, "nameValuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/contacts/common/model/ValuesDelta;

    const-string/jumbo v21, "data2"

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 474
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/contacts/common/model/ValuesDelta;

    const-string/jumbo v21, "data3"

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 475
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/contacts/common/model/ValuesDelta;

    const-string/jumbo v21, "data4"

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 476
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/contacts/common/model/ValuesDelta;

    const-string/jumbo v21, "data5"

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 477
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/contacts/common/model/ValuesDelta;

    const-string/jumbo v21, "data6"

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 478
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/contacts/common/model/ValuesDelta;

    const-string/jumbo v21, "mimetype"

    const-string/jumbo v22, "vnd.android.cursor.item/name"

    invoke-virtual/range {v20 .. v22}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    .end local v9    # "nameValuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_1

    .line 481
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "emailValuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    check-cast v6, Lcom/android/contacts/common/model/ValuesDelta;

    .line 484
    :cond_1
    const/4 v8, 0x0

    .line 485
    .local v8, "name":Ljava/lang/String;
    const/4 v15, 0x0

    .line 486
    .local v15, "number":Ljava/lang/String;
    const/4 v13, 0x0

    .line 487
    .local v13, "newName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 488
    .local v14, "newNumber":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .local v5, "email":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    .local v4, "anr":Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    .local v12, "newEmail":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    .local v11, "newAnr":Ljava/lang/StringBuilder;
    if-eqz v9, :cond_2

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDelta;->isContactInsert()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 495
    const-string/jumbo v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 508
    .end local v8    # "name":Ljava/lang/String;
    .end local v13    # "newName":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDelta;->isContactInsert()Z

    move-result v20

    if-eqz v20, :cond_8

    if-eqz v16, :cond_8

    .line 509
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .end local v15    # "number":Ljava/lang/String;
    .local v19, "valuesDelta$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_e

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/contacts/common/model/ValuesDelta;

    .line 510
    .local v18, "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 511
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->size()I

    move-result v20

    if-eqz v20, :cond_3

    .line 512
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v20

    const-string/jumbo v21, "data2"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x2

    cmp-long v20, v22, v20

    if-nez v20, :cond_7

    .line 513
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 514
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v20

    const-string/jumbo v21, "data1"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, "number":Ljava/lang/String;
    goto :goto_1

    .line 497
    .end local v18    # "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v19    # "valuesDelta$iterator":Ljava/util/Iterator;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v13    # "newName":Ljava/lang/String;
    .local v15, "number":Ljava/lang/String;
    :cond_4
    invoke-virtual {v9}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 498
    invoke-virtual {v9}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v20

    .line 499
    const-string/jumbo v21, "data1"

    .line 498
    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 501
    .end local v8    # "name":Ljava/lang/String;
    :cond_5
    invoke-virtual {v9}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 502
    invoke-virtual {v9}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v20

    .line 503
    const-string/jumbo v21, "data1"

    .line 502
    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "newName":Ljava/lang/String;
    goto :goto_0

    .line 518
    .end local v13    # "newName":Ljava/lang/String;
    .end local v15    # "number":Ljava/lang/String;
    .restart local v18    # "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    .restart local v19    # "valuesDelta$iterator":Ljava/util/Iterator;
    :cond_6
    const-string/jumbo v15, "anrs"

    .local v15, "number":Ljava/lang/String;
    goto :goto_1

    .line 521
    .end local v15    # "number":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v20

    const-string/jumbo v21, "data1"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const-string/jumbo v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 526
    .end local v18    # "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v19    # "valuesDelta$iterator":Ljava/util/Iterator;
    .local v15, "number":Ljava/lang/String;
    :cond_8
    if-eqz v16, :cond_e

    .line 527
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .end local v14    # "newNumber":Ljava/lang/String;
    .end local v15    # "number":Ljava/lang/String;
    .restart local v19    # "valuesDelta$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_e

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/contacts/common/model/ValuesDelta;

    .line 528
    .restart local v18    # "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v20

    if-eqz v20, :cond_a

    .line 529
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->size()I

    move-result v20

    if-eqz v20, :cond_a

    .line 530
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v20

    const-string/jumbo v21, "data2"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x2

    cmp-long v20, v22, v20

    if-nez v20, :cond_b

    .line 531
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v20

    const-string/jumbo v21, "data1"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 537
    :cond_a
    :goto_3
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v20

    if-eqz v20, :cond_9

    .line 538
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->size()I

    move-result v20

    if-eqz v20, :cond_9

    .line 539
    const-string/jumbo v20, "data2"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x2

    cmp-long v20, v22, v20

    if-nez v20, :cond_d

    .line 540
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 541
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v20

    const-string/jumbo v21, "data1"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "newNumber":Ljava/lang/String;
    goto :goto_2

    .line 533
    .end local v14    # "newNumber":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v20

    const-string/jumbo v21, "data1"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    const-string/jumbo v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 543
    :cond_c
    const-string/jumbo v14, "anrs"

    .restart local v14    # "newNumber":Ljava/lang/String;
    goto/16 :goto_2

    .line 546
    .end local v14    # "newNumber":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v20

    const-string/jumbo v21, "data1"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    const-string/jumbo v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 553
    .end local v18    # "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v19    # "valuesDelta$iterator":Ljava/util/Iterator;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDelta;->isContactInsert()Z

    move-result v20

    if-eqz v20, :cond_10

    if-eqz v7, :cond_10

    .line 554
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "valuesDelta$iterator":Ljava/util/Iterator;
    :cond_f
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_13

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/contacts/common/model/ValuesDelta;

    .line 555
    .restart local v18    # "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v20

    if-eqz v20, :cond_f

    .line 556
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->size()I

    move-result v20

    if-eqz v20, :cond_f

    .line 557
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v20

    const-string/jumbo v21, "data1"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const-string/jumbo v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 561
    .end local v18    # "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v19    # "valuesDelta$iterator":Ljava/util/Iterator;
    :cond_10
    if-eqz v7, :cond_13

    .line 562
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "valuesDelta$iterator":Ljava/util/Iterator;
    :cond_11
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_13

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/contacts/common/model/ValuesDelta;

    .line 563
    .restart local v18    # "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v20

    if-eqz v20, :cond_12

    .line 564
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->size()I

    move-result v20

    if-eqz v20, :cond_12

    .line 565
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v20

    const-string/jumbo v21, "data1"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    const-string/jumbo v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :cond_12
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v20

    if-eqz v20, :cond_11

    .line 569
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->size()I

    move-result v20

    if-eqz v20, :cond_11

    .line 570
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v20

    const-string/jumbo v21, "data1"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    const-string/jumbo v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 576
    .end local v18    # "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v19    # "valuesDelta$iterator":Ljava/util/Iterator;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDelta;->isContactInsert()Z

    move-result v20

    if-eqz v20, :cond_17

    .line 577
    if-nez v8, :cond_14

    if-eqz v15, :cond_16

    .line 578
    :cond_14
    :goto_6
    const-string/jumbo v20, "tag"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string/jumbo v20, "number"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string/jumbo v20, "emails"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string/jumbo v20, "anrs"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :cond_15
    :goto_7
    return-object v17

    .line 577
    :cond_16
    if-nez v4, :cond_14

    if-eqz v5, :cond_15

    goto :goto_6

    .line 584
    :cond_17
    const-string/jumbo v20, "tag"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string/jumbo v20, "number"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string/jumbo v20, "emails"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string/jumbo v20, "anrs"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string/jumbo v20, "newTag"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string/jumbo v20, "newNumber"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string/jumbo v20, "newEmails"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string/jumbo v20, "newAnrs"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 759
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 343
    instance-of v5, p1, Lcom/android/contacts/common/model/RawContactDelta;

    if-eqz v5, :cond_4

    move-object v4, p1

    .line 344
    check-cast v4, Lcom/android/contacts/common/model/RawContactDelta;

    .line 347
    .local v4, "other":Lcom/android/contacts/common/model/RawContactDelta;
    iget-object v5, v4, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v6, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    return v7

    .line 349
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 350
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 352
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-direct {v4, v0}, Lcom/android/contacts/common/model/RawContactDelta;->containsEntry(Lcom/android/contacts/common/model/ValuesDelta;)Z

    move-result v5

    if-nez v5, :cond_2

    return v7

    .line 357
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "child$iterator":Ljava/util/Iterator;
    .end local v2    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_3
    const/4 v5, 0x1

    return v5

    .line 359
    .end local v3    # "mimeEntries$iterator":Ljava/util/Iterator;
    .end local v4    # "other":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_4
    return v7
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType(Lcom/android/contacts/common/model/AccountTypeManager;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 2
    .param p1, "manager"    # Lcom/android/contacts/common/model/AccountTypeManager;

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    const-string/jumbo v1, "account_type"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 300
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 301
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 302
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 303
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    .end local v0    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_2
    return-object v4
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    const-string/jumbo v1, "data_set"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/lang/Long;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 6
    .param p1, "childId"    # Ljava/lang/Long;

    .prologue
    const/4 v5, 0x0

    .line 314
    if-nez p1, :cond_0

    .line 316
    return-object v5

    .line 320
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 321
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 322
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 323
    return-object v0

    .line 327
    .end local v0    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_3
    return-object v5
.end method

.method public getEntryCount(Z)I
    .locals 4
    .param p1, "onlyVisible"    # Z

    .prologue
    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "mimeType$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 336
    .local v1, "mimeType":Ljava/lang/String;
    invoke-virtual {p0, v1, p1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 338
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public getExpectantEmailTypeIndex(I)I
    .locals 4
    .param p1, "email"    # I

    .prologue
    const/4 v3, -0x1

    .line 946
    const-string/jumbo v2, "vnd.android.cursor.item/email_v2"

    .line 945
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 947
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 948
    :cond_0
    return v3

    .line 950
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 951
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 952
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->getEmailType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 953
    return v1

    .line 950
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 956
    :cond_3
    return v3
.end method

.method public getExpectantPhoneTypeIndex(I)I
    .locals 4
    .param p1, "phoneType"    # I

    .prologue
    const/4 v3, -0x1

    .line 892
    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    .line 891
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 893
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 894
    :cond_0
    return v3

    .line 896
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 897
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 898
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->getPhoneType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 899
    return v1

    .line 896
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 902
    :cond_3
    return v3
.end method

.method public getExtraSimNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->extraSimNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMimeEntriesCount(Ljava/lang/String;Z)I
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "onlyVisible"    # Z

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 277
    .local v3, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v3, :cond_0

    const/4 v4, 0x0

    return v4

    .line 279
    :cond_0
    const/4 v2, 0x0

    .line 280
    .local v2, "count":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 282
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 283
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_3
    return v2
.end method

.method public getMimeTypeList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 819
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 820
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "mimeType$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 821
    .local v1, "mimeType":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 823
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getOppositePhoneTypeIndex(I)I
    .locals 5
    .param p1, "phoneType"    # I

    .prologue
    const/4 v4, -0x1

    .line 910
    const-string/jumbo v3, "vnd.android.cursor.item/phone_v2"

    .line 909
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 911
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 912
    :cond_0
    return v4

    .line 914
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContactDelta;->getExpectantPhoneTypeIndex(I)I

    move-result v1

    .line 915
    .local v1, "expectantIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 916
    if-eq v2, v1, :cond_2

    .line 917
    return v2

    .line 915
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 920
    :cond_3
    return v4
.end method

.method public getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 6
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 172
    invoke-direct {p0, p1, v5}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 173
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v2, :cond_0

    return-object v3

    .line 175
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 176
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 177
    return-object v0

    .line 182
    .end local v0    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/ValuesDelta;

    :cond_3
    return-object v3
.end method

.method public getRawContactAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/common/model/ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 229
    .local v1, "entityValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "account_type"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "type":Ljava/lang/String;
    const-string/jumbo v3, "data_set"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "dataSet":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v3

    return-object v3
.end method

.method public getRawContactId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getSimAdnAlphaTagMaxLength(Landroid/content/Context;)I
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->isSimAccountType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/contacts/common/MoreContactUtils;->getAdnAlphaTagMaxLength(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 866
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSuperPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 190
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/RawContactDelta;->getSuperPrimaryEntry(Ljava/lang/String;Z)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    return-object v0
.end method

.method public getSuperPrimaryEntry(Ljava/lang/String;Z)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 7
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "forceSelection"    # Z
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 201
    invoke-direct {p0, p1, v6}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 202
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v2, :cond_0

    return-object v4

    .line 204
    :cond_0
    const/4 v3, 0x0

    .line 205
    .local v3, "primary":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v3    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 206
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isSuperPrimary()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 207
    return-object v0

    .line 208
    :cond_2
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isPrimary()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 209
    move-object v3, v0

    .local v3, "primary":Lcom/android/contacts/common/model/ValuesDelta;
    goto :goto_0

    .line 213
    .end local v0    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_3
    if-nez p2, :cond_4

    .line 214
    return-object v4

    .line 218
    :cond_4
    if-eqz v3, :cond_5

    .line 219
    return-object v3

    .line 221
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/ValuesDelta;

    :cond_6
    return-object v4
.end method

.method public getValues()Lcom/android/contacts/common/model/ValuesDelta;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    return-object v0
.end method

.method public hasExpectantEmailType(I)Z
    .locals 4
    .param p1, "emailType"    # I

    .prologue
    const/4 v3, 0x0

    .line 928
    const-string/jumbo v2, "vnd.android.cursor.item/email_v2"

    .line 927
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 929
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 930
    :cond_0
    return v3

    .line 932
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 933
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 934
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->getEmailType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 935
    const/4 v2, 0x1

    return v2

    .line 932
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 938
    :cond_3
    return v3
.end method

.method public hasExpectantPhoneType(I)Z
    .locals 4
    .param p1, "phoneType"    # I

    .prologue
    const/4 v3, 0x0

    .line 874
    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    .line 873
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 875
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 876
    :cond_0
    return v3

    .line 878
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 879
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 880
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->getPhoneType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 881
    const/4 v2, 0x1

    return v2

    .line 878
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 884
    :cond_3
    return v3
.end method

.method public hasExtraSimPhone()Z
    .locals 1

    .prologue
    .line 839
    iget-boolean v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->hasExtraSimPhone:Z

    return v0
.end method

.method public hasMimeEntries(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isContactInsert()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v0

    return v0
.end method

.method public isSimAccountType()Z
    .locals 2

    .prologue
    .line 859
    const-string/jumbo v0, "com.android.sim"

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v0

    return v0
.end method

.method public markDeleted()V
    .locals 5

    .prologue
    .line 376
    iget-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    .line 377
    iget-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 378
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 379
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    goto :goto_0

    .line 375
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "child$iterator":Ljava/util/Iterator;
    .end local v2    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_1
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 777
    .local v2, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 778
    .local v3, "size":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/ValuesDelta;

    iput-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 779
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 780
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 781
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 782
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 780
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 775
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_0
    return-void
.end method

.method public removeEntryByMimeType(Ljava/lang/String;)V
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    return-void
.end method

.method public setExtraSimNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "extraSimNumber"    # Ljava/lang/String;

    .prologue
    .line 855
    iput-object p1, p0, Lcom/android/contacts/common/model/RawContactDelta;->extraSimNumber:Ljava/lang/String;

    .line 854
    return-void
.end method

.method public setHasExtraSimPhone(Z)V
    .locals 0
    .param p1, "hasExtraSimPhone"    # Z

    .prologue
    .line 831
    iput-boolean p1, p0, Lcom/android/contacts/common/model/RawContactDelta;->hasExtraSimPhone:Z

    .line 830
    return-void
.end method

.method public setProfileQueryUri()V
    .locals 1

    .prologue
    .line 790
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 789
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "\n("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const-string/jumbo v5, "Uri="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    const-string/jumbo v5, ", Values="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v5}, Lcom/android/contacts/common/model/ValuesDelta;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const-string/jumbo v5, ", Entries={"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 394
    .local v3, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "child$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    .line 395
    .local v1, "child":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v5, "\n\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 391
    .end local v1    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v2    # "child$iterator":Ljava/util/Iterator;
    .end local v3    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v4    # "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v5, "null"

    goto :goto_0

    .line 399
    .restart local v4    # "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v5, "\n})\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 764
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/model/RawContactDelta;->getEntryCount(Z)I

    move-result v4

    .line 765
    .local v4, "size":I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 767
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 768
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 769
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 770
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 763
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "child$iterator":Ljava/util/Iterator;
    .end local v2    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_1
    return-void
.end method
