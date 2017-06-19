.class public Lcom/android/contacts/common/model/ContactLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/ContactLoader$AccountKey;,
        Lcom/android/contacts/common/model/ContactLoader$ContactQuery;,
        Lcom/android/contacts/common/model/ContactLoader$DirectoryQuery;,
        Lcom/android/contacts/common/model/ContactLoader$GroupQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/contacts/common/model/Contact;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sCachedResult:Lcom/android/contacts/common/model/Contact;


# instance fields
.field private mComputeFormattedPhoneNumber:Z

.field private mContact:Lcom/android/contacts/common/model/Contact;

.field private mLoadGroupMetaData:Z

.field private mLoadInvitableAccountTypes:Z

.field private mLookupUri:Landroid/net/Uri;

.field private final mNotifiedRawContactIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/common/model/Contact;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mPostViewNotification:Z

.field private final mRequestedUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    const-class v0, Lcom/android/contacts/common/model/ContactLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/common/model/ContactLoader;->DEBUG:Z

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/common/model/ContactLoader;->sCachedResult:Lcom/android/contacts/common/model/Contact;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "postViewNotification"    # Z

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    move v6, v3

    .line 105
    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZZ)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;ZZZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "loadGroupMetaData"    # Z
    .param p4, "loadInvitableAccountTypes"    # Z
    .param p5, "postViewNotification"    # Z
    .param p6, "computeFormattedPhoneNumber"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    .line 112
    iput-object p2, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    .line 113
    iput-object p2, p0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    .line 114
    iput-boolean p3, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadGroupMetaData:Z

    .line 115
    iput-boolean p4, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadInvitableAccountTypes:Z

    .line 116
    iput-boolean p5, p0, Lcom/android/contacts/common/model/ContactLoader;->mPostViewNotification:Z

    .line 117
    iput-boolean p6, p0, Lcom/android/contacts/common/model/ContactLoader;->mComputeFormattedPhoneNumber:Z

    .line 110
    return-void
.end method

.method private computeFormattedPhoneNumbers(Lcom/android/contacts/common/model/Contact;)V
    .locals 11
    .param p1, "contactData"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 964
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 965
    .local v0, "countryIso":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    .line 966
    .local v9, "rawContacts":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/common/model/RawContact;>;"
    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v7

    .line 967
    .local v7, "rawContactCount":I
    const/4 v8, 0x0

    .local v8, "rawContactIndex":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 968
    invoke-virtual {v9, v8}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/RawContact;

    .line 969
    .local v6, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v6}, Lcom/android/contacts/common/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v4

    .line 970
    .local v4, "dataItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 971
    .local v1, "dataCount":I
    const/4 v2, 0x0

    .local v2, "dataIndex":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 972
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/dataitem/DataItem;

    .line 973
    .local v3, "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    instance-of v10, v3, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    if-eqz v10, :cond_0

    move-object v5, v3

    .line 974
    check-cast v5, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    .line 975
    .local v5, "phoneDataItem":Lcom/android/contacts/common/model/dataitem/PhoneDataItem;
    invoke-virtual {v5, v0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->computeFormattedPhoneNumber(Ljava/lang/String;)V

    .line 971
    .end local v5    # "phoneDataItem":Lcom/android/contacts/common/model/dataitem/PhoneDataItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 967
    .end local v3    # "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 963
    .end local v1    # "dataCount":I
    .end local v2    # "dataIndex":I
    .end local v4    # "dataItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    .end local v6    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_2
    return-void
.end method

.method private cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "index"    # I

    .prologue
    .line 807
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 821
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid or unhandled data type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 812
    :pswitch_1
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 806
    :goto_0
    :pswitch_2
    return-void

    .line 815
    :pswitch_3
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 818
    :pswitch_4
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 807
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private loadContactEntity(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 21
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 514
    const-string/jumbo v2, "entities"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 515
    .local v3, "entityUri":Landroid/net/Uri;
    sget-object v4, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    .line 516
    const-string/jumbo v7, "raw_contact_id"

    .line 515
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 517
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 518
    sget-object v2, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "No cursor returned in loadContactEntity"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/contacts/common/model/Contact;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v2

    return-object v2

    .line 523
    :cond_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 524
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/contacts/common/model/Contact;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 592
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 525
    return-object v2

    .line 529
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v9, v1}, Lcom/android/contacts/common/model/ContactLoader;->loadContactHeaderData(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v8

    .line 533
    .local v8, "contact":Lcom/android/contacts/common/model/Contact;
    const-wide/16 v10, -0x1

    .line 534
    .local v10, "currentRawContactId":J
    const/4 v13, 0x0

    .line 536
    .local v13, "rawContact":Lcom/android/contacts/common/model/RawContact;
    new-instance v18, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct/range {v18 .. v18}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 538
    .local v18, "rawContactsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/android/contacts/common/model/RawContact;>;"
    new-instance v20, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct/range {v20 .. v20}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 540
    .end local v13    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    .local v20, "statusesBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/Long;Lcom/android/contacts/common/util/DataStatus;>;"
    :cond_2
    const/16 v2, 0xe

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 541
    .local v16, "rawContactId":J
    cmp-long v2, v16, v10

    if-eqz v2, :cond_3

    .line 544
    move-wide/from16 v10, v16

    .line 545
    new-instance v13, Lcom/android/contacts/common/model/RawContact;

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/contacts/common/model/ContactLoader;->loadRawContactValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-direct {v13, v2}, Lcom/android/contacts/common/model/RawContact;-><init>(Landroid/content/ContentValues;)V

    .line 546
    .local v13, "rawContact":Lcom/android/contacts/common/model/RawContact;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 548
    .end local v13    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_3
    const/16 v2, 0x1a

    invoke-interface {v9, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 549
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/contacts/common/model/ContactLoader;->loadDataValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v12

    .line 550
    .local v12, "data":Landroid/content/ContentValues;
    invoke-virtual {v13, v12}, Lcom/android/contacts/common/model/RawContact;->addDataItemValues(Landroid/content/ContentValues;)V

    .line 553
    const-string/jumbo v2, "vnd.android.cursor.item/name"

    .line 554
    const-string/jumbo v4, "mimetype"

    invoke-virtual {v12, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 553
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 555
    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    const-string/jumbo v4, "mimetype"

    invoke-virtual {v12, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 556
    const-string/jumbo v2, "data1"

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 558
    :cond_4
    const-string/jumbo v2, "vnd.android.cursor.item/email_v2"

    const-string/jumbo v4, "mimetype"

    invoke-virtual {v12, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 559
    const-string/jumbo v2, "data1"

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 561
    :cond_5
    const-string/jumbo v2, "vnd.android.cursor.item/postal-address_v2"

    .line 562
    const-string/jumbo v4, "mimetype"

    invoke-virtual {v12, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 561
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 563
    const-string/jumbo v2, "data1"

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 565
    :cond_6
    const-string/jumbo v2, "vnd.android.cursor.item/organization"

    .line 566
    const-string/jumbo v4, "mimetype"

    invoke-virtual {v12, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 565
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 567
    const-string/jumbo v2, "data1"

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 569
    :cond_7
    const-string/jumbo v2, "vnd.android.cursor.item/group_membership"

    .line 570
    const-string/jumbo v4, "mimetype"

    invoke-virtual {v12, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 569
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 571
    const-string/jumbo v2, "data1"

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 578
    :cond_8
    :goto_0
    const/16 v2, 0x33

    invoke-interface {v9, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 579
    const/16 v2, 0x35

    invoke-interface {v9, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 585
    .end local v12    # "data":Landroid/content/ContentValues;
    :cond_9
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 587
    invoke-virtual/range {v18 .. v18}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/contacts/common/model/Contact;->setRawContacts(Lcom/google/common/collect/ImmutableList;)V

    .line 588
    invoke-virtual/range {v20 .. v20}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/contacts/common/model/Contact;->setStatuses(Lcom/google/common/collect/ImmutableMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 590
    return-object v8

    .line 557
    .restart local v12    # "data":Landroid/content/ContentValues;
    :cond_a
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {v13, v2}, Lcom/android/contacts/common/model/RawContact;->setHasPhoneData(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 591
    .end local v8    # "contact":Lcom/android/contacts/common/model/Contact;
    .end local v10    # "currentRawContactId":J
    .end local v12    # "data":Landroid/content/ContentValues;
    .end local v16    # "rawContactId":J
    .end local v18    # "rawContactsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/android/contacts/common/model/RawContact;>;"
    .end local v20    # "statusesBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/Long;Lcom/android/contacts/common/util/DataStatus;>;"
    :catchall_0
    move-exception v2

    .line 592
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 591
    throw v2

    .line 560
    .restart local v8    # "contact":Lcom/android/contacts/common/model/Contact;
    .restart local v10    # "currentRawContactId":J
    .restart local v12    # "data":Landroid/content/ContentValues;
    .restart local v16    # "rawContactId":J
    .restart local v18    # "rawContactsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/android/contacts/common/model/RawContact;>;"
    .restart local v20    # "statusesBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/Long;Lcom/android/contacts/common/util/DataStatus;>;"
    :cond_b
    const/4 v2, 0x1

    :try_start_3
    invoke-virtual {v13, v2}, Lcom/android/contacts/common/model/RawContact;->setHasEmailData(Z)V

    goto :goto_0

    .line 564
    :cond_c
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lcom/android/contacts/common/model/RawContact;->setHasStructuredPostalData(Z)V

    goto :goto_0

    .line 568
    :cond_d
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lcom/android/contacts/common/model/RawContact;->setHasOrganizationData(Z)V

    goto :goto_0

    .line 573
    :cond_e
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lcom/android/contacts/common/model/RawContact;->setHasGroupData(Z)V

    goto :goto_0

    .line 580
    :cond_f
    new-instance v19, Lcom/android/contacts/common/util/DataStatus;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Lcom/android/contacts/common/util/DataStatus;-><init>(Landroid/database/Cursor;)V

    .line 581
    .local v19, "status":Lcom/android/contacts/common/util/DataStatus;
    const/16 v2, 0x1a

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 582
    .local v14, "dataId":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private loadContactHeaderData(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 28
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 699
    const-string/jumbo v3, "directory"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 700
    .local v25, "directoryParameter":Ljava/lang/String;
    if-nez v25, :cond_1

    .line 701
    const-wide/16 v6, 0x0

    .line 703
    .local v6, "directoryId":J
    :goto_0
    const/16 v3, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 704
    .local v9, "contactId":J
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 705
    .local v8, "lookupKey":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 706
    .local v11, "nameRawContactId":J
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 707
    .local v13, "displayNameSource":I
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 708
    .local v17, "displayName":Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 709
    .local v18, "altDisplayName":Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 710
    .local v19, "phoneticName":Ljava/lang/String;
    const/4 v3, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 711
    .local v14, "photoId":J
    const/16 v3, 0x3a

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 712
    .local v16, "photoUri":Ljava/lang/String;
    const/4 v3, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/16 v20, 0x1

    .line 713
    .local v20, "starred":Z
    :goto_1
    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 714
    const/16 v21, 0x0

    .line 716
    :goto_2
    const/16 v3, 0x3b

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/16 v22, 0x1

    .line 717
    .local v22, "sendToVoicemail":Z
    :goto_3
    const/16 v3, 0x3c

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 718
    .local v23, "customRingtone":Ljava/lang/String;
    const/16 v3, 0x3d

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    const/16 v24, 0x1

    .line 721
    .local v24, "isUserProfile":Z
    :goto_4
    const-wide/16 v26, 0x0

    cmp-long v3, v6, v26

    if-eqz v3, :cond_0

    const-wide/16 v26, 0x1

    cmp-long v3, v6, v26

    if-nez v3, :cond_6

    .line 723
    :cond_0
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v3, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 722
    invoke-static {v3, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 728
    .local v5, "lookupUri":Landroid/net/Uri;
    :goto_5
    new-instance v2, Lcom/android/contacts/common/model/Contact;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v24}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;Z)V

    .line 733
    .local v2, "contact":Lcom/android/contacts/common/model/Contact;
    const/16 v3, 0x40

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/contacts/common/model/Contact;->phonebookLabel:Ljava/lang/String;

    .line 735
    return-object v2

    .line 702
    .end local v2    # "contact":Lcom/android/contacts/common/model/Contact;
    .end local v5    # "lookupUri":Landroid/net/Uri;
    .end local v6    # "directoryId":J
    .end local v8    # "lookupKey":Ljava/lang/String;
    .end local v9    # "contactId":J
    .end local v11    # "nameRawContactId":J
    .end local v13    # "displayNameSource":I
    .end local v14    # "photoId":J
    .end local v16    # "photoUri":Ljava/lang/String;
    .end local v17    # "displayName":Ljava/lang/String;
    .end local v18    # "altDisplayName":Ljava/lang/String;
    .end local v19    # "phoneticName":Ljava/lang/String;
    .end local v20    # "starred":Z
    .end local v22    # "sendToVoicemail":Z
    .end local v23    # "customRingtone":Ljava/lang/String;
    .end local v24    # "isUserProfile":Z
    :cond_1
    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .restart local v6    # "directoryId":J
    goto/16 :goto_0

    .line 712
    .restart local v8    # "lookupKey":Ljava/lang/String;
    .restart local v9    # "contactId":J
    .restart local v11    # "nameRawContactId":J
    .restart local v13    # "displayNameSource":I
    .restart local v14    # "photoId":J
    .restart local v16    # "photoUri":Ljava/lang/String;
    .restart local v17    # "displayName":Ljava/lang/String;
    .restart local v18    # "altDisplayName":Ljava/lang/String;
    .restart local v19    # "phoneticName":Ljava/lang/String;
    :cond_2
    const/16 v20, 0x0

    .restart local v20    # "starred":Z
    goto :goto_1

    .line 715
    :cond_3
    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .local v21, "presence":Ljava/lang/Integer;
    goto :goto_2

    .line 716
    .end local v21    # "presence":Ljava/lang/Integer;
    :cond_4
    const/16 v22, 0x0

    .restart local v22    # "sendToVoicemail":Z
    goto :goto_3

    .line 718
    .restart local v23    # "customRingtone":Ljava/lang/String;
    :cond_5
    const/16 v24, 0x0

    .restart local v24    # "isUserProfile":Z
    goto :goto_4

    .line 725
    :cond_6
    move-object/from16 v5, p2

    .restart local v5    # "lookupUri":Landroid/net/Uri;
    goto :goto_5
.end method

.method private loadDataValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 767
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 769
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "_id"

    const/16 v2, 0x1a

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 771
    const/16 v1, 0x1b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 772
    const/16 v1, 0x1c

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 773
    const/16 v1, 0x1d

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 774
    const/16 v1, 0x1e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 775
    const/16 v1, 0x1f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 776
    const/16 v1, 0x20

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 777
    const/16 v1, 0x21

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 778
    const/16 v1, 0x22

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 779
    const/16 v1, 0x23

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 780
    const/16 v1, 0x24

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 781
    const/16 v1, 0x25

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 782
    const/16 v1, 0x26

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 783
    const/16 v1, 0x27

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 784
    const/16 v1, 0x28

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 785
    const/16 v1, 0x29

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 786
    const/16 v1, 0x2a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 787
    const/16 v1, 0x2b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 788
    const/16 v1, 0x2c

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 789
    const/16 v1, 0x2d

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 790
    const/16 v1, 0x2e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 791
    const/16 v1, 0x2f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 792
    const/16 v1, 0x30

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 793
    const/16 v1, 0x31

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 794
    const/16 v1, 0x32

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 795
    const/16 v1, 0x34

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 796
    const/16 v1, 0x3e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 797
    const/16 v1, 0x3f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 798
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    const/16 v1, 0x41

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 802
    :cond_0
    return-object v0
.end method

.method private loadDirectoryMetaData(Lcom/android/contacts/common/model/Contact;)V
    .locals 16
    .param p1, "result"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 826
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/Contact;->getDirectoryId()J

    move-result-wide v8

    .line 828
    .local v8, "directoryId":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 829
    sget-object v14, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 830
    sget-object v2, Lcom/android/contacts/common/model/ContactLoader$DirectoryQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 828
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 831
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 832
    return-void

    .line 835
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 836
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 837
    .local v1, "displayName":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 838
    .local v10, "packageName":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 839
    .local v13, "typeResourceId":I
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 840
    .local v3, "accountType":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 841
    .local v4, "accountName":Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 842
    .local v5, "exportSupport":I
    const/4 v2, 0x0

    .line 843
    .local v2, "directoryType":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 844
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 846
    .local v11, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-virtual {v11, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    .line 847
    .local v12, "resources":Landroid/content/res/Resources;
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .end local v2    # "directoryType":Ljava/lang/String;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "resources":Landroid/content/res/Resources;
    :cond_1
    :goto_0
    move-object/from16 v0, p1

    .line 854
    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/model/Contact;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 858
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v3    # "accountType":Ljava/lang/String;
    .end local v4    # "accountName":Ljava/lang/String;
    .end local v5    # "exportSupport":I
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v13    # "typeResourceId":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 825
    return-void

    .line 848
    .restart local v1    # "displayName":Ljava/lang/String;
    .restart local v2    # "directoryType":Ljava/lang/String;
    .restart local v3    # "accountType":Ljava/lang/String;
    .restart local v4    # "accountName":Ljava/lang/String;
    .restart local v5    # "exportSupport":I
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "typeResourceId":I
    :catch_0
    move-exception v7

    .line 849
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Contact directory resource not found: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 850
    const-string/jumbo v15, "."

    .line 849
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 857
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "directoryType":Ljava/lang/String;
    .end local v3    # "accountType":Ljava/lang/String;
    .end local v4    # "accountName":Ljava/lang/String;
    .end local v5    # "exportSupport":I
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "typeResourceId":I
    :catchall_0
    move-exception v0

    .line 858
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 857
    throw v0
.end method

.method private static loadEncodedContactEntity(Landroid/net/Uri;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 42
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "lookupUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 415
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v36

    .line 416
    .local v36, "jsonString":Ljava/lang/String;
    new-instance v35, Lorg/json/JSONObject;

    invoke-direct/range {v35 .. v36}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 419
    .local v35, "json":Lorg/json/JSONObject;
    const-string/jumbo v4, "directory"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 421
    .local v7, "directoryId":J
    const-string/jumbo v4, "display_name"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 423
    .local v18, "displayName":Ljava/lang/String;
    const-string/jumbo v4, "display_name_alt"

    .line 422
    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 424
    .local v19, "altDisplayName":Ljava/lang/String;
    const-string/jumbo v4, "display_name_source"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 425
    .local v14, "displayNameSource":I
    const-string/jumbo v4, "photo_uri"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 426
    .local v17, "photoUri":Ljava/lang/String;
    new-instance v3, Lcom/android/contacts/common/model/Contact;

    .line 431
    const-wide/16 v10, -0x1

    .line 432
    const-wide/16 v12, -0x1

    .line 434
    const-wide/16 v15, 0x0

    .line 430
    const/4 v9, 0x0

    .line 438
    const/16 v20, 0x0

    .line 439
    const/16 v21, 0x0

    .line 440
    const/16 v22, 0x0

    .line 441
    const/16 v23, 0x0

    .line 442
    const/16 v24, 0x0

    .line 443
    const/16 v25, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 426
    invoke-direct/range {v3 .. v25}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;Z)V

    .line 445
    .local v3, "contact":Lcom/android/contacts/common/model/Contact;
    new-instance v4, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v4}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/Contact;->setStatuses(Lcom/google/common/collect/ImmutableMap;)V

    .line 447
    const-string/jumbo v4, "account_name"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 448
    .local v23, "accountName":Ljava/lang/String;
    const-string/jumbo v4, "displayName"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 449
    .local v21, "directoryName":Ljava/lang/String;
    if-eqz v23, :cond_2

    .line 450
    const-string/jumbo v4, "account_type"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 452
    .local v24, "accountType":Ljava/lang/String;
    const-string/jumbo v4, "exportSupport"

    .line 453
    const/4 v5, 0x1

    .line 452
    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v25

    .line 451
    const/16 v22, 0x0

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v25}, Lcom/android/contacts/common/model/Contact;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 459
    .end local v24    # "accountType":Ljava/lang/String;
    :goto_0
    new-instance v41, Landroid/content/ContentValues;

    invoke-direct/range {v41 .. v41}, Landroid/content/ContentValues;-><init>()V

    .line 460
    .local v41, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "_id"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 461
    const-string/jumbo v4, "contact_id"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 462
    new-instance v40, Lcom/android/contacts/common/model/RawContact;

    invoke-direct/range {v40 .. v41}, Lcom/android/contacts/common/model/RawContact;-><init>(Landroid/content/ContentValues;)V

    .line 464
    .local v40, "rawContact":Lcom/android/contacts/common/model/RawContact;
    const-string/jumbo v4, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    .line 465
    .local v34, "items":Lorg/json/JSONObject;
    invoke-virtual/range {v34 .. v34}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v37

    .line 466
    .local v37, "keys":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 467
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    .line 470
    .local v38, "mimetype":Ljava/lang/String;
    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 471
    const/4 v4, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/model/RawContact;->setHasPhoneData(Z)V

    .line 476
    :cond_1
    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v39

    .line 477
    .local v39, "obj":Lorg/json/JSONObject;
    if-nez v39, :cond_3

    .line 478
    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v31

    .line 479
    .local v31, "array":Lorg/json/JSONArray;
    const/16 v32, 0x0

    .local v32, "i":I
    :goto_2
    invoke-virtual/range {v31 .. v31}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v32

    if-ge v0, v4, :cond_0

    .line 480
    invoke-virtual/range {v31 .. v32}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v33

    .line 481
    .local v33, "item":Lorg/json/JSONObject;
    move-object/from16 v0, v40

    move-object/from16 v1, v33

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/ContactLoader;->processOneRecord(Lcom/android/contacts/common/model/RawContact;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 479
    add-int/lit8 v32, v32, 0x1

    goto :goto_2

    .line 456
    .end local v31    # "array":Lorg/json/JSONArray;
    .end local v32    # "i":I
    .end local v33    # "item":Lorg/json/JSONObject;
    .end local v34    # "items":Lorg/json/JSONObject;
    .end local v37    # "keys":Ljava/util/Iterator;
    .end local v38    # "mimetype":Ljava/lang/String;
    .end local v39    # "obj":Lorg/json/JSONObject;
    .end local v40    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    .end local v41    # "values":Landroid/content/ContentValues;
    :cond_2
    const-string/jumbo v4, "exportSupport"

    const/4 v5, 0x2

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v30

    .line 455
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v25, v3

    move-object/from16 v26, v21

    invoke-virtual/range {v25 .. v30}, Lcom/android/contacts/common/model/Contact;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 484
    .restart local v34    # "items":Lorg/json/JSONObject;
    .restart local v37    # "keys":Ljava/util/Iterator;
    .restart local v38    # "mimetype":Ljava/lang/String;
    .restart local v39    # "obj":Lorg/json/JSONObject;
    .restart local v40    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    .restart local v41    # "values":Landroid/content/ContentValues;
    :cond_3
    move-object/from16 v0, v40

    move-object/from16 v1, v39

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/ContactLoader;->processOneRecord(Lcom/android/contacts/common/model/RawContact;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    .line 488
    .end local v38    # "mimetype":Ljava/lang/String;
    .end local v39    # "obj":Lorg/json/JSONObject;
    :cond_4
    new-instance v4, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v4}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/Contact;->setRawContacts(Lcom/google/common/collect/ImmutableList;)V

    .line 491
    return-object v3
.end method

.method private loadGroupMetaData(Lcom/android/contacts/common/model/Contact;)V
    .locals 22
    .param p1, "result"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 895
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 896
    .local v19, "selection":Ljava/lang/StringBuilder;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 897
    .local v20, "selectionArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 898
    .local v14, "accountsSeen":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/contacts/common/model/ContactLoader$AccountKey;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "rawContact$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/contacts/common/model/RawContact;

    .line 899
    .local v17, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v3

    .line 900
    .local v3, "accountName":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v4

    .line 901
    .local v4, "accountType":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/common/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v5

    .line 902
    .local v5, "dataSet":Ljava/lang/String;
    new-instance v13, Lcom/android/contacts/common/model/ContactLoader$AccountKey;

    invoke-direct {v13, v3, v4, v5}, Lcom/android/contacts/common/model/ContactLoader$AccountKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    .local v13, "accountKey":Lcom/android/contacts/common/model/ContactLoader$AccountKey;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 904
    invoke-virtual {v14, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 905
    invoke-virtual {v14, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 906
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 907
    const-string/jumbo v2, " OR "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    :cond_1
    const-string/jumbo v2, "(account_name=? AND account_type=?"

    .line 909
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    if-eqz v5, :cond_2

    .line 915
    const-string/jumbo v2, " AND data_set=?"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    :goto_1
    const-string/jumbo v2, ")"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 918
    :cond_2
    const-string/jumbo v2, " AND data_set IS NULL"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 924
    .end local v3    # "accountName":Ljava/lang/String;
    .end local v4    # "accountType":Ljava/lang/String;
    .end local v5    # "dataSet":Ljava/lang/String;
    .end local v13    # "accountKey":Lcom/android/contacts/common/model/ContactLoader$AccountKey;
    .end local v17    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_3
    new-instance v16, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct/range {v16 .. v16}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 925
    .local v16, "groupListBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/android/contacts/common/GroupMetaData;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 926
    sget-object v4, Lcom/android/contacts/common/model/ContactLoader$GroupQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 927
    const/4 v7, 0x0

    .line 925
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 928
    .local v15, "cursor":Landroid/database/Cursor;
    if-eqz v15, :cond_9

    .line 930
    :goto_2
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 931
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 932
    .restart local v3    # "accountName":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 933
    .restart local v4    # "accountType":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 934
    .restart local v5    # "dataSet":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 935
    .local v6, "groupId":J
    const/4 v2, 0x4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 936
    .local v8, "title":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v15, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 937
    const/4 v9, 0x0

    .line 939
    .local v9, "defaultGroup":Z
    :goto_3
    const/4 v2, 0x6

    invoke-interface {v15, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 940
    const/4 v10, 0x0

    .line 943
    .local v10, "favorites":Z
    :goto_4
    const/4 v2, 0x7

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 944
    .local v11, "titleRes":I
    const/16 v2, 0x8

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 947
    .local v12, "resPackage":Ljava/lang/String;
    new-instance v2, Lcom/android/contacts/common/GroupMetaData;

    invoke-direct/range {v2 .. v12}, Lcom/android/contacts/common/GroupMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 951
    .end local v3    # "accountName":Ljava/lang/String;
    .end local v4    # "accountType":Ljava/lang/String;
    .end local v5    # "dataSet":Ljava/lang/String;
    .end local v6    # "groupId":J
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "defaultGroup":Z
    .end local v10    # "favorites":Z
    .end local v11    # "titleRes":I
    .end local v12    # "resPackage":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 952
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 951
    throw v2

    .line 938
    .restart local v3    # "accountName":Ljava/lang/String;
    .restart local v4    # "accountType":Ljava/lang/String;
    .restart local v5    # "dataSet":Ljava/lang/String;
    .restart local v6    # "groupId":J
    .restart local v8    # "title":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x5

    :try_start_1
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v9, 0x1

    .restart local v9    # "defaultGroup":Z
    goto :goto_3

    .end local v9    # "defaultGroup":Z
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "defaultGroup":Z
    goto :goto_3

    .line 941
    :cond_6
    const/4 v2, 0x6

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    const/4 v10, 0x1

    .restart local v10    # "favorites":Z
    goto :goto_4

    .end local v10    # "favorites":Z
    :cond_7
    const/4 v10, 0x0

    .restart local v10    # "favorites":Z
    goto :goto_4

    .line 952
    .end local v3    # "accountName":Ljava/lang/String;
    .end local v4    # "accountType":Ljava/lang/String;
    .end local v5    # "dataSet":Ljava/lang/String;
    .end local v6    # "groupId":J
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "defaultGroup":Z
    .end local v10    # "favorites":Z
    :cond_8
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 955
    :cond_9
    invoke-virtual/range {v16 .. v16}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/Contact;->setGroupMetaData(Lcom/google/common/collect/ImmutableList;)V

    .line 894
    return-void
.end method

.method private loadInvitableAccountTypes(Lcom/android/contacts/common/model/Contact;)V
    .locals 8
    .param p1, "contactData"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 670
    new-instance v3, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v3}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 671
    .local v3, "resultListBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->isUserProfile()Z

    move-result v6

    if-nez v6, :cond_1

    .line 673
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/common/model/AccountTypeManager;->getUsableInvitableAccountTypes()Ljava/util/Map;

    move-result-object v0

    .line 674
    .local v0, "invitables":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 676
    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v4

    .line 679
    .local v4, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "rawContact$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContact;

    .line 681
    .local v1, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v6

    .line 682
    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v7

    .line 680
    invoke-static {v6, v7}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v5

    .line 683
    .local v5, "type":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 686
    .end local v1    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    .end local v5    # "type":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    :cond_0
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 691
    .end local v0    # "invitables":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    .end local v2    # "rawContact$iterator":Ljava/util/Iterator;
    .end local v4    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    :cond_1
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/contacts/common/model/Contact;->setInvitableAccountTypes(Lcom/google/common/collect/ImmutableList;)V

    .line 668
    return-void
.end method

.method private loadPhotoBinaryData(Lcom/android/contacts/common/model/Contact;)V
    .locals 11
    .param p1, "contactData"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/ContactLoader;->loadThumbnailBinaryData(Lcom/android/contacts/common/model/Contact;)V

    .line 604
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getPhotoUri()Ljava/lang/String;

    move-result-object v5

    .line 605
    .local v5, "photoUri":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 609
    :try_start_0
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 610
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 611
    .local v6, "scheme":Ljava/lang/String;
    const-string/jumbo v9, "http"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "https"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 613
    :cond_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    .line 614
    .local v3, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 619
    :goto_0
    const/16 v9, 0x4000

    new-array v1, v9, [B

    .line 620
    .local v1, "buffer":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "size":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_4

    .line 624
    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 627
    .end local v7    # "size":I
    :catchall_0
    move-exception v9

    .line 628
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 629
    if-eqz v2, :cond_1

    .line 630
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 627
    :cond_1
    throw v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 634
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "scheme":Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 640
    :cond_2
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getThumbnailPhotoBinaryData()[B

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/android/contacts/common/model/Contact;->setPhotoBinaryData([B)V

    .line 600
    return-void

    .line 616
    .restart local v6    # "scheme":Ljava/lang/String;
    .restart local v8    # "uri":Landroid/net/Uri;
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "r"

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 617
    .local v2, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    .restart local v3    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 626
    .end local v2    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v7    # "size":I
    :cond_4
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/android/contacts/common/model/Contact;->setPhotoBinaryData([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 628
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 629
    if-eqz v2, :cond_5

    .line 630
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 633
    :cond_5
    return-void
.end method

.method private loadRawContactValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 742
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 744
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "_id"

    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 746
    const/16 v1, 0xf

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 747
    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 748
    const/16 v1, 0x11

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 749
    const/16 v1, 0x12

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 750
    const/16 v1, 0x13

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 751
    const/16 v1, 0x14

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 752
    const/16 v1, 0x15

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 753
    const/16 v1, 0x16

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 754
    const/16 v1, 0x17

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 755
    const/16 v1, 0x18

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 756
    const/16 v1, 0x19

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 757
    const/16 v1, 0xd

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 758
    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/model/ContactLoader;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 760
    return-object v0
.end method

.method private loadThumbnailBinaryData(Lcom/android/contacts/common/model/Contact;)V
    .locals 10
    .param p1, "contactData"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 644
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getPhotoId()J

    move-result-wide v4

    .line 645
    .local v4, "photoId":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-gtz v7, :cond_0

    .line 647
    return-void

    .line 650
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "rawContact$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/RawContact;

    .line 651
    .local v3, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v3}, Lcom/android/contacts/common/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dataItem$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/dataitem/DataItem;

    .line 652
    .local v0, "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-nez v7, :cond_2

    .line 653
    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;

    if-eqz v7, :cond_1

    move-object v2, v0

    .line 657
    check-cast v2, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;

    .line 658
    .local v2, "photo":Lcom/android/contacts/common/model/dataitem/PhotoDataItem;
    invoke-virtual {v2}, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;->getPhoto()[B

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/contacts/common/model/Contact;->setThumbnailPhotoBinaryData([B)V

    goto :goto_0

    .line 643
    .end local v0    # "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    .end local v1    # "dataItem$iterator":Ljava/util/Iterator;
    .end local v2    # "photo":Lcom/android/contacts/common/model/dataitem/PhotoDataItem;
    .end local v3    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_3
    return-void
.end method

.method public static parseEncodedContactEntity(Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 2
    .param p0, "lookupUri"    # Landroid/net/Uri;

    .prologue
    .line 408
    :try_start_0
    invoke-static {p0, p0}, Lcom/android/contacts/common/model/ContactLoader;->loadEncodedContactEntity(Landroid/net/Uri;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "je":Lorg/json/JSONException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private postViewNotificationToSyncAdapter()V
    .locals 13

    .prologue
    .line 1018
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1019
    .local v1, "context":Landroid/content/Context;
    iget-object v11, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v11}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "rawContact$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/RawContact;

    .line 1020
    .local v4, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v4}, Lcom/android/contacts/common/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1021
    .local v6, "rawContactId":J
    iget-object v11, p0, Lcom/android/contacts/common/model/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1024
    iget-object v11, p0, Lcom/android/contacts/common/model/ContactLoader;->mNotifiedRawContactIds:Ljava/util/Set;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1025
    invoke-virtual {v4, v1}, Lcom/android/contacts/common/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 1026
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getViewContactNotifyServiceClassName()Ljava/lang/String;

    move-result-object v8

    .line 1027
    .local v8, "serviceName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getViewContactNotifyServicePackageName()Ljava/lang/String;

    move-result-object v9

    .line 1028
    .local v9, "servicePackageName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1029
    sget-object v11, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 1030
    .local v10, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1031
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    const-string/jumbo v11, "android.intent.action.VIEW"

    invoke-virtual {v3, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1033
    const-string/jumbo v11, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1035
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1036
    :catch_0
    move-exception v2

    .line 1037
    .local v2, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Error sending message to source-app"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1017
    .end local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    .end local v6    # "rawContactId":J
    .end local v8    # "serviceName":Ljava/lang/String;
    .end local v9    # "servicePackageName":Ljava/lang/String;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method private static processOneRecord(Lcom/android/contacts/common/model/RawContact;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6
    .param p0, "rawContact"    # Lcom/android/contacts/common/model/RawContact;
    .param p1, "item"    # Lorg/json/JSONObject;
    .param p2, "mimetype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 496
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 497
    .local v0, "itemValues":Landroid/content/ContentValues;
    const-string/jumbo v4, "mimetype"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string/jumbo v4, "_id"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 500
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 501
    .local v1, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 502
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 503
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 504
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 505
    check-cast v3, Ljava/lang/String;

    .end local v3    # "o":Ljava/lang/Object;
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 507
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "o":Ljava/lang/Object;
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 510
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/RawContact;->addDataItemValues(Landroid/content/ContentValues;)V

    .line 495
    return-void
.end method

.method private unregisterObserver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1044
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_0

    .line 1045
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1046
    iput-object v2, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 1043
    :cond_0
    return-void
.end method


# virtual methods
.method public cacheResult()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1105
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    sput-object v0, Lcom/android/contacts/common/model/ContactLoader;->sCachedResult:Lcom/android/contacts/common/model/Contact;

    .line 1104
    :goto_0
    return-void

    .line 1106
    :cond_0
    sput-object v1, Lcom/android/contacts/common/model/ContactLoader;->sCachedResult:Lcom/android/contacts/common/model/Contact;

    goto :goto_0
.end method

.method public deliverResult(Lcom/android/contacts/common/model/Contact;)V
    .locals 4
    .param p1, "result"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 983
    invoke-direct {p0}, Lcom/android/contacts/common/model/ContactLoader;->unregisterObserver()V

    .line 986
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->isReset()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 987
    :cond_0
    return-void

    .line 990
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    .line 992
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 993
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    .line 995
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_3

    .line 996
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Registering content observer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-nez v0, :cond_2

    .line 998
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 1000
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1001
    iget-object v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/common/model/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    const/4 v3, 0x1

    .line 1000
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1004
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mPostViewNotification:Z

    if-eqz v0, :cond_4

    .line 1006
    invoke-direct {p0}, Lcom/android/contacts/common/model/ContactLoader;->postViewNotificationToSyncAdapter()V

    .line 1010
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    invoke-super {p0, v0}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 982
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 982
    check-cast p1, Lcom/android/contacts/common/model/Contact;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/ContactLoader;->deliverResult(Lcom/android/contacts/common/model/Contact;)V

    return-void
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public loadInBackground()Lcom/android/contacts/common/model/Contact;
    .locals 9

    .prologue
    .line 345
    sget-object v6, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadInBackground="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 349
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    .line 348
    invoke-static {v2, v6}, Lcom/android/contacts/common/util/ContactLoaderUtils;->ensureIsContactUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 350
    .local v5, "uriCurrentFormat":Landroid/net/Uri;
    sget-object v0, Lcom/android/contacts/common/model/ContactLoader;->sCachedResult:Lcom/android/contacts/common/model/Contact;

    .line 351
    .local v0, "cachedResult":Lcom/android/contacts/common/model/Contact;
    const/4 v6, 0x0

    sput-object v6, Lcom/android/contacts/common/model/ContactLoader;->sCachedResult:Lcom/android/contacts/common/model/Contact;

    .line 355
    if-eqz v0, :cond_4

    .line 356
    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-static {v6, v7}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v6

    .line 355
    if-eqz v6, :cond_4

    .line 359
    new-instance v3, Lcom/android/contacts/common/model/Contact;

    iget-object v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-direct {v3, v6, v0}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact;)V

    .line 361
    .local v3, "result":Lcom/android/contacts/common/model/Contact;
    iget-object v6, v0, Lcom/android/contacts/common/model/Contact;->phonebookLabel:Ljava/lang/String;

    iput-object v6, v3, Lcom/android/contacts/common/model/Contact;->phonebookLabel:Ljava/lang/String;

    .line 363
    const/4 v4, 0x1

    .line 372
    .local v4, "resultIsCached":Z
    :goto_0
    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->isLoaded()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 373
    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 374
    if-nez v4, :cond_0

    .line 375
    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/ContactLoader;->loadDirectoryMetaData(Lcom/android/contacts/common/model/Contact;)V

    .line 382
    :cond_0
    :goto_1
    iget-boolean v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mComputeFormattedPhoneNumber:Z

    if-eqz v6, :cond_1

    .line 383
    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/ContactLoader;->computeFormattedPhoneNumbers(Lcom/android/contacts/common/model/Contact;)V

    .line 385
    :cond_1
    if-nez v4, :cond_2

    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/ContactLoader;->loadPhotoBinaryData(Lcom/android/contacts/common/model/Contact;)V

    .line 388
    :cond_2
    iget-boolean v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadInvitableAccountTypes:Z

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->getInvitableAccountTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    if-nez v6, :cond_3

    .line 389
    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/ContactLoader;->loadInvitableAccountTypes(Lcom/android/contacts/common/model/Contact;)V

    .line 392
    :cond_3
    return-object v3

    .line 365
    .end local v3    # "result":Lcom/android/contacts/common/model/Contact;
    .end local v4    # "resultIsCached":Z
    :cond_4
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "encoded"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 366
    iget-object v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-static {v5, v6}, Lcom/android/contacts/common/model/ContactLoader;->loadEncodedContactEntity(Landroid/net/Uri;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v3

    .line 370
    .restart local v3    # "result":Lcom/android/contacts/common/model/Contact;
    :goto_2
    const/4 v4, 0x0

    .restart local v4    # "resultIsCached":Z
    goto :goto_0

    .line 368
    .end local v3    # "result":Lcom/android/contacts/common/model/Contact;
    .end local v4    # "resultIsCached":Z
    :cond_5
    invoke-direct {p0, v2, v5}, Lcom/android/contacts/common/model/ContactLoader;->loadContactEntity(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;

    move-result-object v3

    .restart local v3    # "result":Lcom/android/contacts/common/model/Contact;
    goto :goto_2

    .line 377
    .restart local v4    # "resultIsCached":Z
    :cond_6
    iget-boolean v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadGroupMetaData:Z

    if-eqz v6, :cond_0

    .line 378
    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->hasGroupData()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->getGroupMetaData()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    if-nez v6, :cond_0

    .line 379
    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/ContactLoader;->loadGroupMetaData(Lcom/android/contacts/common/model/Contact;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 393
    .end local v0    # "cachedResult":Lcom/android/contacts/common/model/Contact;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "result":Lcom/android/contacts/common/model/Contact;
    .end local v4    # "resultIsCached":Z
    .end local v5    # "uriCurrentFormat":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 394
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/contacts/common/model/ContactLoader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error loading the contact: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    iget-object v6, p0, Lcom/android/contacts/common/model/ContactLoader;->mRequestedUri:Landroid/net/Uri;

    invoke-static {v6, v1}, Lcom/android/contacts/common/model/Contact;->forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/common/model/Contact;

    move-result-object v6

    return-object v6
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->loadInBackground()Lcom/android/contacts/common/model/Contact;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 1094
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 1095
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->cancelLoad()Z

    .line 1096
    invoke-direct {p0}, Lcom/android/contacts/common/model/ContactLoader;->unregisterObserver()V

    .line 1097
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    .line 1093
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ContactLoader;->deliverResult(Lcom/android/contacts/common/model/Contact;)V

    .line 1082
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mContact:Lcom/android/contacts/common/model/Contact;

    if-nez v0, :cond_2

    .line 1083
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->forceLoad()V

    .line 1077
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 1089
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->cancelLoad()Z

    .line 1088
    return-void
.end method

.method public setLookupUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "lookupUri"    # Landroid/net/Uri;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/contacts/common/model/ContactLoader;->mLookupUri:Landroid/net/Uri;

    .line 339
    return-void
.end method

.method public upgradeToFullContact()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1056
    iget-boolean v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadGroupMetaData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadInvitableAccountTypes:Z

    if-eqz v0, :cond_0

    .line 1057
    iget-boolean v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mPostViewNotification:Z

    .line 1056
    if-eqz v0, :cond_0

    .line 1057
    iget-boolean v0, p0, Lcom/android/contacts/common/model/ContactLoader;->mComputeFormattedPhoneNumber:Z

    .line 1056
    if-eqz v0, :cond_0

    .line 1057
    return-void

    .line 1059
    :cond_0
    iput-boolean v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadGroupMetaData:Z

    .line 1060
    iput-boolean v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mLoadInvitableAccountTypes:Z

    .line 1061
    iput-boolean v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mPostViewNotification:Z

    .line 1062
    iput-boolean v1, p0, Lcom/android/contacts/common/model/ContactLoader;->mComputeFormattedPhoneNumber:Z

    .line 1065
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->cacheResult()V

    .line 1069
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ContactLoader;->onContentChanged()V

    .line 1054
    return-void
.end method
