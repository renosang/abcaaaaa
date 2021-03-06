.class public Lcom/android/contacts/common/model/account/AccountWithDataSet;
.super Ljava/lang/Object;
.source "AccountWithDataSet.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/account/AccountWithDataSet$1;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE_PHONE:Ljava/lang/String; = "com.android.localphone"

.field public static final ACCOUNT_TYPE_SIM:Ljava/lang/String; = "com.android.sim"

.field private static final ARRAY_STRINGIFY_SEPARATOR:Ljava/lang/String; = "\u0002"

.field private static final ARRAY_STRINGIFY_SEPARATOR_PAT:Ljava/util/regex/Pattern;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field public static final PHONE_NAME:Ljava/lang/String; = "PHONE"

.field private static final RAW_CONTACTS_URI_LIMIT_1:Landroid/net/Uri;

.field public static final SIM_NAME:Ljava/lang/String; = "SIM"

.field public static final SIM_NAME_1:Ljava/lang/String; = "SIM1"

.field public static final SIM_NAME_2:Ljava/lang/String; = "SIM2"

.field private static final STRINGIFY_SEPARATOR:Ljava/lang/String; = "\u0001"

.field private static final STRINGIFY_SEPARATOR_PAT:Ljava/util/regex/Pattern;


# instance fields
.field public final dataSet:Ljava/lang/String;

.field private final mAccountTypeWithDataSet:Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

.field public final name:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const-string/jumbo v0, "\u0001"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 44
    sput-object v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->STRINGIFY_SEPARATOR_PAT:Ljava/util/regex/Pattern;

    .line 47
    const-string/jumbo v0, "\u0002"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 46
    sput-object v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->ARRAY_STRINGIFY_SEPARATOR_PAT:Ljava/util/regex/Pattern;

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->ID_PROJECTION:[Ljava/lang/String;

    .line 55
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 56
    const-string/jumbo v1, "limit"

    const-string/jumbo v2, "1"

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->RAW_CONTACTS_URI_LIMIT_1:Landroid/net/Uri;

    .line 99
    new-instance v0, Lcom/android/contacts/common/model/account/AccountWithDataSet$1;

    invoke-direct {v0}, Lcom/android/contacts/common/model/account/AccountWithDataSet$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->mAccountTypeWithDataSet:Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    .line 61
    invoke-static {p2}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    .line 62
    invoke-static {p3}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 63
    invoke-static {p2, p3}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->mAccountTypeWithDataSet:Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    .line 59
    return-void
.end method

.method private static addStringified(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/account/AccountWithDataSet;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 163
    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_0
    const-string/jumbo v0, "\u0001"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_1
    const-string/jumbo v0, "\u0001"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_2
    return-object p0
.end method

.method private static final emptyToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "text":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static stringifyList(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "account$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 200
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 201
    const-string/jumbo v3, "\u0002"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_0
    invoke-static {v2, v0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->addStringified(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/account/AccountWithDataSet;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 206
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static unstringify(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    .line 185
    sget-object v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->STRINGIFY_SEPARATOR_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "array":[Ljava/lang/String;
    array-length v1, v0

    if-ge v1, v2, :cond_0

    .line 187
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_0
    new-instance v2, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const/4 v1, 0x0

    aget-object v3, v0, v1

    const/4 v1, 0x1

    aget-object v4, v0, v1

    .line 190
    aget-object v1, v0, v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 189
    :goto_0
    invoke-direct {v2, v3, v4, v1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 190
    :cond_1
    aget-object v1, v0, v5

    goto :goto_0
.end method

.method public static unstringifyList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 216
    .local v2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    return-object v2

    .line 220
    :cond_0
    sget-object v3, Lcom/android/contacts/common/model/account/AccountWithDataSet;->ARRAY_STRINGIFY_SEPARATOR_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 223
    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->unstringify(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    :cond_1
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 141
    instance-of v2, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 142
    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 143
    .local v0, "other":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v2, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 143
    if-eqz v2, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 143
    :cond_0
    return v1

    .line 147
    .end local v0    # "other":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_1
    return v1
.end method

.method public getAccountOrNull()Landroid/accounts/Account;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 85
    :cond_0
    return-object v1
.end method

.method public getAccountTypeWithDataSet()Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->mAccountTypeWithDataSet:Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    return-object v0
.end method

.method public hasData(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 119
    const-string/jumbo v6, "account_type = ? AND account_name = ?"

    .line 122
    .local v6, "BASE_SELECTION":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string/jumbo v3, "account_type = ? AND account_name = ? AND data_set IS NULL"

    .line 124
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    aput-object v0, v4, v8

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    aput-object v0, v4, v1

    .line 130
    .local v4, "args":[Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->RAW_CONTACTS_URI_LIMIT_1:Landroid/net/Uri;

    .line 131
    sget-object v2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->ID_PROJECTION:[Ljava/lang/String;

    .line 130
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 132
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_1

    return v8

    .line 126
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_0
    const-string/jumbo v3, "account_type = ? AND account_name = ? AND data_set = ?"

    .line 127
    .restart local v3    # "selection":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    aput-object v0, v4, v8

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    aput-object v0, v4, v1

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    aput-object v0, v4, v2

    .restart local v4    # "args":[Ljava/lang/String;
    goto :goto_0

    .line 134
    .restart local v7    # "c":Landroid/database/Cursor;
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 136
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 134
    return v0

    .line 135
    :catchall_0
    move-exception v0

    .line 136
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 135
    throw v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 153
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 154
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 155
    return v0

    .end local v0    # "result":I
    :cond_1
    move v1, v2

    .line 152
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v1, v2

    .line 153
    goto :goto_1
.end method

.method public isLocalAccount()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 78
    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public stringify()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->addStringified(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/account/AccountWithDataSet;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AccountWithDataSet {name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dataSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return-void
.end method
