.class public Lcom/android/contacts/common/ContactsUtils;
.super Ljava/lang/Object;
.source "ContactsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/ContactsUtils$ProviderNames;,
        Lcom/android/contacts/common/ContactsUtils$UserType;
    }
.end annotation


# static fields
.field private static final DEFAULT_THUMBNAIL_SIZE:I = 0x60

.field public static final FLAG_N_FEATURE:Z

.field public static final SCHEME_IMTO:Ljava/lang/String; = "imto"

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto"

.field public static final SCHEME_SMSTO:Ljava/lang/String; = "smsto"

.field private static final TAG:Ljava/lang/String; = "ContactsUtils"

.field public static final USER_TYPE_CURRENT:J = 0x0L

.field public static final USER_TYPE_WORK:J = 0x1L

.field private static sThumbnailSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/common/ContactsUtils;->sThumbnailSize:I

    .line 56
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/common/ContactsUtils;->FLAG_N_FEATURE:Z

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areGroupWritableAccountsAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getGroupWritableAccounts()Ljava/util/List;

    move-result-object v0

    .line 149
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static final areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 2
    .param p0, "a"    # Landroid/content/Intent;
    .param p1, "b"    # Landroid/content/Intent;

    .prologue
    .line 137
    if-ne p0, p1, :cond_0

    .line 138
    const/4 v0, 0x1

    return v0

    .line 140
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 141
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 143
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 130
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static buildImIntent(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/ImDataItem;)Landroid/util/Pair;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "im"    # Lcom/android/contacts/common/model/dataitem/ImDataItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/contacts/common/model/dataitem/ImDataItem;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x5

    const/4 v8, 0x0

    .line 200
    const/4 v2, 0x0

    .line 201
    .local v2, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    .line 202
    .local v5, "secondaryIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->isCreatedFromEmail()Z

    move-result v3

    .line 204
    .local v3, "isEmail":Z
    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 208
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 210
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v8, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 205
    .end local v1    # "data":Ljava/lang/String;
    :cond_1
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v8, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 213
    .restart local v1    # "data":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    move v4, v6

    .line 215
    .local v4, "protocol":I
    :goto_0
    if-ne v4, v6, :cond_6

    .line 216
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getChatCapability()I

    move-result v0

    .line 217
    .local v0, "chatCapability":I
    and-int/lit8 v6, v0, 0x4

    if-eqz v6, :cond_4

    .line 218
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.action.SENDTO"

    .line 219
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xmpp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "?message"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 218
    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 220
    .local v2, "intent":Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "secondaryIntent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.action.SENDTO"

    .line 221
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xmpp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "?call"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 220
    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 236
    .end local v0    # "chatCapability":I
    :goto_1
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 213
    .end local v4    # "protocol":I
    .local v2, "intent":Landroid/content/Intent;
    .restart local v5    # "secondaryIntent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    .line 222
    .restart local v0    # "chatCapability":I
    .restart local v4    # "protocol":I
    :cond_4
    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_5

    .line 225
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.action.SENDTO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xmpp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "?message"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 227
    .local v2, "intent":Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "secondaryIntent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.action.SENDTO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xmpp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "?call"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 226
    .local v5, "secondaryIntent":Landroid/content/Intent;
    goto :goto_1

    .line 230
    .local v2, "intent":Landroid/content/Intent;
    .local v5, "secondaryIntent":Landroid/content/Intent;
    :cond_5
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.action.SENDTO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xmpp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "?message"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 229
    .local v2, "intent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 234
    .end local v0    # "chatCapability":I
    .local v2, "intent":Landroid/content/Intent;
    :cond_6
    invoke-static {p1, v4}, Lcom/android/contacts/common/ContactsUtils;->getCustomImIntent(Lcom/android/contacts/common/model/dataitem/ImDataItem;I)Landroid/content/Intent;

    move-result-object v2

    .local v2, "intent":Landroid/content/Intent;
    goto/16 :goto_1
.end method

.method public static determineUserType(Ljava/lang/Long;Ljava/lang/Long;)J
    .locals 6
    .param p0, "directoryId"    # Ljava/lang/Long;
    .param p1, "contactId"    # Ljava/lang/Long;

    .prologue
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    .line 270
    if-eqz p0, :cond_1

    .line 271
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/contacts/common/compat/DirectoryCompat;->isEnterpriseDirectoryId(J)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    .line 272
    goto :goto_0

    .line 275
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_2

    .line 276
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/contacts/common/compat/ContactsCompat;->isEnterpriseContactId(J)Z

    move-result v4

    .line 275
    if-eqz v4, :cond_2

    .line 277
    return-wide v0

    .line 279
    :cond_2
    return-wide v2
.end method

.method private static getCustomImIntent(Lcom/android/contacts/common/model/dataitem/ImDataItem;I)Landroid/content/Intent;
    .locals 7
    .param p0, "im"    # Lcom/android/contacts/common/model/dataitem/ImDataItem;
    .param p1, "protocol"    # I

    .prologue
    const/4 v6, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getCustomProtocol()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "host":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 179
    return-object v6

    .line 181
    :cond_0
    const/4 v5, -0x1

    if-eq p1, v5, :cond_1

    .line 183
    invoke-static {p1}, Lcom/android/contacts/common/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v2

    .line 185
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 186
    return-object v6

    .line 188
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "authority":Ljava/lang/String;
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v6, "imto"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 191
    .local v3, "imUri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.SENDTO"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 192
    .local v4, "intent":Landroid/content/Intent;
    return-object v4
.end method

.method public static getThumbnailSize(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 158
    sget v0, Lcom/android/contacts/common/ContactsUtils;->sThumbnailSize:I

    if-ne v0, v7, :cond_1

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 160
    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    .line 161
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "thumbnail_max_dim"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    .line 159
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 162
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 164
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/contacts/common/ContactsUtils;->sThumbnailSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 172
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    sget v0, Lcom/android/contacts/common/ContactsUtils;->sThumbnailSize:I

    if-eq v0, v7, :cond_2

    sget v0, Lcom/android/contacts/common/ContactsUtils;->sThumbnailSize:I

    :goto_0
    return v0

    .line 167
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 168
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 167
    throw v0

    .line 172
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    const/16 v0, 0x60

    goto :goto_0
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 122
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lookupProviderNameFromId(I)Ljava/lang/String;
    .locals 1
    .param p0, "protocol"    # I

    .prologue
    .line 82
    packed-switch p0, :pswitch_data_0

    .line 100
    const/4 v0, 0x0

    return-object v0

    .line 84
    :pswitch_0
    const-string/jumbo v0, "GTalk"

    return-object v0

    .line 86
    :pswitch_1
    const-string/jumbo v0, "AIM"

    return-object v0

    .line 88
    :pswitch_2
    const-string/jumbo v0, "MSN"

    return-object v0

    .line 90
    :pswitch_3
    const-string/jumbo v0, "Yahoo"

    return-object v0

    .line 92
    :pswitch_4
    const-string/jumbo v0, "ICQ"

    return-object v0

    .line 94
    :pswitch_5
    const-string/jumbo v0, "JABBER"

    return-object v0

    .line 96
    :pswitch_6
    const-string/jumbo v0, "SKYPE"

    return-object v0

    .line 98
    :pswitch_7
    const-string/jumbo v0, "QQ"

    return-object v0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
