.class public Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;
.super Ljava/lang/Object;
.source "RawContactInfoDecoder.java"


# static fields
.field private static sInstance:Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;


# instance fields
.field private mCachedRawContactInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/contacts/common/list/SimpleRawContact;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;->mCachedRawContactInfo:Ljava/util/HashMap;

    .line 39
    return-void
.end method

.method public static getInstance()Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;->sInstance:Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;

    invoke-direct {v0}, Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;-><init>()V

    sput-object v0, Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;->sInstance:Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;

    .line 36
    :cond_0
    sget-object v0, Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;->sInstance:Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;

    return-object v0
.end method

.method private parseRawContact(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "rawContactInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/contacts/common/list/SimpleRawContact;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 93
    const-string/jumbo v8, ";"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "rawContacts":[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v7, "simpleRawContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/contacts/common/list/SimpleRawContact;>;"
    array-length v10, v6

    move v8, v9

    :goto_0
    if-ge v8, v10, :cond_1

    aget-object v3, v6, v8

    .line 96
    .local v3, "rawContact":Ljava/lang/String;
    const-string/jumbo v11, "/"

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "ids":[Ljava/lang/String;
    array-length v11, v2

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 98
    aget-object v11, v2, v9

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 99
    .local v4, "rawContactId":J
    const/4 v11, 0x1

    aget-object v11, v2, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 100
    .local v0, "accountId":J
    new-instance v11, Lcom/oneplus/contacts/common/list/SimpleRawContact;

    invoke-direct {v11, v4, v5, v0, v1}, Lcom/oneplus/contacts/common/list/SimpleRawContact;-><init>(JJ)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v0    # "accountId":J
    .end local v4    # "rawContactId":J
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 103
    .end local v2    # "ids":[Ljava/lang/String;
    .end local v3    # "rawContact":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;->mCachedRawContactInfo:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-object v7
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "rawContactInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/contacts/common/list/SimpleRawContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    const/4 v1, 0x0

    return-object v1

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;->mCachedRawContactInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    invoke-direct {p0, p1}, Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;->parseRawContact(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 50
    .local v0, "rawContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/contacts/common/list/SimpleRawContact;>;"
    iget-object v1, p0, Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;->mCachedRawContactInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-object v0

    .line 53
    .end local v0    # "rawContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/contacts/common/list/SimpleRawContact;>;"
    :cond_1
    iget-object v1, p0, Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;->mCachedRawContactInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    return-object v1
.end method

.method public getAllAccountId(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "rawContactInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;->decode(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 59
    .local v3, "rawContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/contacts/common/list/SimpleRawContact;>;"
    if-nez v3, :cond_0

    .line 60
    return-object v4

    .line 62
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, "accountIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "raw$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/contacts/common/list/SimpleRawContact;

    .line 64
    .local v1, "raw":Lcom/oneplus/contacts/common/list/SimpleRawContact;
    iget-wide v4, v1, Lcom/oneplus/contacts/common/list/SimpleRawContact;->accountId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    .end local v1    # "raw":Lcom/oneplus/contacts/common/list/SimpleRawContact;
    :cond_1
    return-object v0
.end method

.method public isDifferentAccountLinked(Ljava/lang/String;)Z
    .locals 4
    .param p1, "rawContactInfo"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    return v2

    .line 73
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;->decode(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 74
    .local v0, "rawContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/contacts/common/list/SimpleRawContact;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v3, :cond_2

    .line 75
    :cond_1
    return v2

    .line 80
    :cond_2
    return v3
.end method
