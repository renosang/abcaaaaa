.class public Lcom/android/contacts/common/util/NameConverter;
.super Ljava/lang/Object;
.source "NameConverter.java"


# static fields
.field public static final STRUCTURED_NAME_FIELDS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 43
    const-string/jumbo v1, "data4"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "data2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 45
    const-string/jumbo v1, "data5"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "data3"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 47
    const-string/jumbo v1, "data6"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 42
    sput-object v0, Lcom/android/contacts/common/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "builder"    # Landroid/net/Uri$Builder;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 167
    :cond_0
    return-void
.end method

.method public static buildPhoneticName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "family"    # Ljava/lang/String;
    .param p1, "middle"    # Ljava/lang/String;
    .param p2, "given"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 222
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const/4 v1, 0x0

    return-object v1

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 232
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static displayNameToStructuredName(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 157
    if-nez p2, :cond_0

    .line 158
    new-instance p2, Landroid/content/ContentValues;

    .end local p2    # "contentValues":Landroid/content/ContentValues;
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 160
    .restart local p2    # "contentValues":Landroid/content/ContentValues;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/common/util/NameConverter;->displayNameToStructuredName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 161
    .local v2, "mapValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    return-object p2
.end method

.method public static displayNameToStructuredName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 121
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 122
    .local v9, "structuredName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "complete_name"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 124
    .local v6, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v0, "data1"

    invoke-static {v6, v0, p1}, Lcom/android/contacts/common/util/NameConverter;->appendQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/common/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 128
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 130
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sget-object v0, Lcom/android/contacts/common/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_0

    .line 132
    sget-object v0, Lcom/android/contacts/common/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 136
    .end local v8    # "i":I
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_1
    return-object v9

    .line 135
    :catchall_0
    move-exception v0

    .line 136
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 135
    throw v0
.end method

.method private static fetchDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 92
    const/4 v7, 0x0

    .line 93
    .local v7, "displayName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 94
    const-string/jumbo v1, "data1"

    aput-object v1, v2, v4

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 93
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 97
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 99
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 103
    .end local v7    # "displayName":Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_1
    return-object v7

    .line 102
    .restart local v7    # "displayName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 103
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 102
    throw v0
.end method

.method public static parsePhoneticName(Ljava/lang/String;Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;)Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;
    .locals 8
    .param p0, "phoneticName"    # Ljava/lang/String;
    .param p1, "item"    # Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "family":Ljava/lang/String;
    const/4 v2, 0x0

    .line 189
    .local v2, "middle":Ljava/lang/String;
    const/4 v1, 0x0

    .line 191
    .local v1, "given":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 192
    const-string/jumbo v4, " "

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "strings":[Ljava/lang/String;
    array-length v4, v3

    packed-switch v4, :pswitch_data_0

    .line 209
    .end local v0    # "family":Ljava/lang/String;
    .end local v1    # "given":Ljava/lang/String;
    .end local v2    # "middle":Ljava/lang/String;
    .end local v3    # "strings":[Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 210
    new-instance p1, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    .end local p1    # "item":Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;
    invoke-direct {p1}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;-><init>()V

    .line 212
    .restart local p1    # "item":Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;
    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->setPhoneticFamilyName(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1, v2}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->setPhoneticMiddleName(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->setPhoneticGivenName(Ljava/lang/String;)V

    .line 215
    return-object p1

    .line 195
    .restart local v0    # "family":Ljava/lang/String;
    .restart local v1    # "given":Ljava/lang/String;
    .restart local v2    # "middle":Ljava/lang/String;
    .restart local v3    # "strings":[Ljava/lang/String;
    :pswitch_0
    aget-object v0, v3, v6

    .local v0, "family":Ljava/lang/String;
    goto :goto_0

    .line 198
    .local v0, "family":Ljava/lang/String;
    :pswitch_1
    aget-object v0, v3, v6

    .line 199
    .local v0, "family":Ljava/lang/String;
    aget-object v1, v3, v7

    .local v1, "given":Ljava/lang/String;
    goto :goto_0

    .line 202
    .local v0, "family":Ljava/lang/String;
    .local v1, "given":Ljava/lang/String;
    :pswitch_2
    aget-object v0, v3, v6

    .line 203
    .local v0, "family":Ljava/lang/String;
    aget-object v2, v3, v7

    .line 204
    .local v2, "middle":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v1, v3, v4

    .local v1, "given":Ljava/lang/String;
    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static structuredNameToDisplayName(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 79
    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "complete_name"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 80
    .local v0, "builder":Landroid/net/Uri$Builder;
    sget-object v3, Lcom/android/contacts/common/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 81
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/android/contacts/common/util/NameConverter;->appendQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/contacts/common/util/NameConverter;->fetchDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static structuredNameToDisplayName(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "structuredName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "complete_name"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 64
    .local v0, "builder":Landroid/net/Uri$Builder;
    sget-object v4, Lcom/android/contacts/common/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 65
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/util/NameConverter;->appendQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 69
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/contacts/common/util/NameConverter;->fetchDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
