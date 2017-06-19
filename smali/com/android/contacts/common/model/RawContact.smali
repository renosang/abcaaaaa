.class public final Lcom/android/contacts/common/model/RawContact;
.super Ljava/lang/Object;
.source "RawContact.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/RawContact$1;,
        Lcom/android/contacts/common/model/RawContact$NamedDataItem;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/common/model/RawContact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

.field private final mDataItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/RawContact$NamedDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHasEmailData:Z

.field private mHasGroupData:Z

.field private mHasOrganizationData:Z

.field private mHasPhoneData:Z

.field private mHasStructuredPostalData:Z

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/android/contacts/common/model/RawContact$1;

    invoke-direct {v0}, Lcom/android/contacts/common/model/RawContact$1;-><init>()V

    .line 179
    sput-object v0, Lcom/android/contacts/common/model/RawContact;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/RawContact;-><init>(Landroid/content/ContentValues;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/android/contacts/common/model/RawContact;->mValues:Landroid/content/ContentValues;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    .line 149
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const-class v0, Landroid/content/ContentValues;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContact;->mValues:Landroid/content/ContentValues;

    .line 161
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    .line 162
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 159
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/contacts/common/model/RawContact;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/RawContact;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createFrom(Landroid/content/Entity;)Lcom/android/contacts/common/model/RawContact;
    .locals 7
    .param p0, "entity"    # Landroid/content/Entity;

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 133
    .local v4, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    .line 135
    .local v3, "subValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    new-instance v0, Lcom/android/contacts/common/model/RawContact;

    invoke-direct {v0, v4}, Lcom/android/contacts/common/model/RawContact;-><init>(Landroid/content/ContentValues;)V

    .line 136
    .local v0, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "subValue$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Entity$NamedContentValues;

    .line 137
    .local v1, "subValue":Landroid/content/Entity$NamedContentValues;
    iget-object v5, v1, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    iget-object v6, v1, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v5, v6}, Lcom/android/contacts/common/model/RawContact;->addNamedDataItemValues(Landroid/net/Uri;Landroid/content/ContentValues;)Lcom/android/contacts/common/model/RawContact$NamedDataItem;

    goto :goto_0

    .line 139
    .end local v1    # "subValue":Landroid/content/Entity$NamedContentValues;
    :cond_0
    return-object v0
.end method

.method private setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 281
    .local v0, "values":Landroid/content/ContentValues;
    if-nez p1, :cond_0

    .line 282
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 284
    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 285
    const-string/jumbo v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 286
    const-string/jumbo v1, "data_set"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 287
    return-void

    .line 290
    :cond_0
    if-eqz p2, :cond_2

    .line 292
    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string/jumbo v1, "account_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    if-nez p3, :cond_1

    .line 295
    const-string/jumbo v1, "data_set"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_1
    const-string/jumbo v1, "data_set"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 303
    const-string/jumbo v2, "Not a valid combination of account name, type, and data set."

    .line 302
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addDataItemValues(Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 323
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/model/RawContact;->addNamedDataItemValues(Landroid/net/Uri;Landroid/content/ContentValues;)Lcom/android/contacts/common/model/RawContact$NamedDataItem;

    .line 322
    return-void
.end method

.method public addNamedDataItemValues(Landroid/net/Uri;Landroid/content/ContentValues;)Lcom/android/contacts/common/model/RawContact$NamedDataItem;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 327
    new-instance v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;

    invoke-direct {v0, p1, p2}, Lcom/android/contacts/common/model/RawContact$NamedDataItem;-><init>(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 328
    .local v0, "namedItem":Lcom/android/contacts/common/model/RawContact$NamedDataItem;
    iget-object v1, p0, Lcom/android/contacts/common/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 369
    if-nez p1, :cond_0

    return v1

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    .line 372
    check-cast v0, Lcom/android/contacts/common/model/RawContact;

    .line 373
    .local v0, "other":Lcom/android/contacts/common/model/RawContact;
    iget-object v2, p0, Lcom/android/contacts/common/model/RawContact;->mValues:Landroid/content/ContentValues;

    iget-object v3, v0, Lcom/android/contacts/common/model/RawContact;->mValues:Landroid/content/ContentValues;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 374
    iget-object v1, p0, Lcom/android/contacts/common/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/contacts/common/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 373
    :cond_2
    return v1
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContact;->getAccountTypeManager(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public getAccountTypeManager(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContact;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    if-nez v0, :cond_0

    .line 195
    invoke-static {p1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContact;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContact;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    return-object v0
.end method

.method public getAccountTypeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "contact_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 5
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
    .line 333
    iget-object v3, p0, Lcom/android/contacts/common/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 334
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v3, p0, Lcom/android/contacts/common/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dataItem$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;

    .line 335
    .local v0, "dataItem":Lcom/android/contacts/common/model/RawContact$NamedDataItem;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 336
    iget-object v3, v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 339
    .end local v0    # "dataItem":Lcom/android/contacts/common/model/RawContact$NamedDataItem;
    :cond_1
    return-object v2
.end method

.method public getDataItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    iget-object v3, p0, Lcom/android/contacts/common/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 344
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    iget-object v3, p0, Lcom/android/contacts/common/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dataItem$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;

    .line 345
    .local v0, "dataItem":Lcom/android/contacts/common/model/RawContact$NamedDataItem;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    iget-object v3, v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-static {v3}, Lcom/android/contacts/common/model/dataitem/DataItem;->createFrom(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/dataitem/DataItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    .end local v0    # "dataItem":Lcom/android/contacts/common/model/RawContact$NamedDataItem;
    :cond_1
    return-object v2
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data_set"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "sourceid"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSync1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "sync1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSync2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "sync2"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSync3()Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "sync3"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSync4()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "sync4"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContact;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public hasEmailData()Z
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/android/contacts/common/model/RawContact;->mHasEmailData:Z

    return v0
.end method

.method public hasGroupData()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/android/contacts/common/model/RawContact;->mHasGroupData:Z

    return v0
.end method

.method public hasOrganizationData()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/android/contacts/common/model/RawContact;->mHasOrganizationData:Z

    return v0
.end method

.method public hasPhoneData()Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/android/contacts/common/model/RawContact;->mHasPhoneData:Z

    return v0
.end method

.method public hasStructuredPostalData()Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/android/contacts/common/model/RawContact;->mHasStructuredPostalData:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 364
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/contacts/common/model/RawContact;->mValues:Landroid/content/ContentValues;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/contacts/common/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDeleted()Z
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "deleted"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isDirty()Z
    .locals 2

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "dirty"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isStarred()Z
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "starred"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 3
    .param p1, "accountWithDataSet"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    const/4 v0, 0x0

    .line 307
    if-eqz p1, :cond_0

    .line 308
    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    .line 309
    iget-object v2, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 308
    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/common/model/RawContact;->setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-direct {p0, v0, v0, v0}, Lcom/android/contacts/common/model/RawContact;->setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAccountToLocal()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 316
    invoke-direct {p0, v0, v0, v0}, Lcom/android/contacts/common/model/RawContact;->setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public setHasEmailData(Z)V
    .locals 0
    .param p1, "hasEmailData"    # Z

    .prologue
    .line 399
    iput-boolean p1, p0, Lcom/android/contacts/common/model/RawContact;->mHasEmailData:Z

    .line 398
    return-void
.end method

.method public setHasGroupData(Z)V
    .locals 0
    .param p1, "hasGroupData"    # Z

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/android/contacts/common/model/RawContact;->mHasGroupData:Z

    .line 378
    return-void
.end method

.method public setHasOrganizationData(Z)V
    .locals 0
    .param p1, "hasOrganizationData"    # Z

    .prologue
    .line 415
    iput-boolean p1, p0, Lcom/android/contacts/common/model/RawContact;->mHasOrganizationData:Z

    .line 414
    return-void
.end method

.method public setHasPhoneData(Z)V
    .locals 0
    .param p1, "hasPhoneData"    # Z

    .prologue
    .line 387
    iput-boolean p1, p0, Lcom/android/contacts/common/model/RawContact;->mHasPhoneData:Z

    .line 386
    return-void
.end method

.method public setHasStructuredPostalData(Z)V
    .locals 0
    .param p1, "hasStructuredPostalData"    # Z

    .prologue
    .line 407
    iput-boolean p1, p0, Lcom/android/contacts/common/model/RawContact;->mHasStructuredPostalData:Z

    .line 406
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "RawContact: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/model/RawContact;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 355
    iget-object v3, p0, Lcom/android/contacts/common/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "namedDataItem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;

    .line 356
    .local v0, "namedDataItem":Lcom/android/contacts/common/model/RawContact$NamedDataItem;
    const-string/jumbo v3, "\n  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    const-string/jumbo v3, "\n  -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 359
    .end local v0    # "namedDataItem":Lcom/android/contacts/common/model/RawContact$NamedDataItem;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContact;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 173
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 171
    return-void
.end method
