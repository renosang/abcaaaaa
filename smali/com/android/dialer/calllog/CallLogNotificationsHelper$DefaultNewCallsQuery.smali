.class final Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNewCallsQuery;
.super Ljava/lang/Object;
.source "CallLogNotificationsHelper.java"

# interfaces
.implements Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCallsQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogNotificationsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultNewCallsQuery"
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 225
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 226
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 227
    const-string/jumbo v1, "number"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 228
    const-string/jumbo v1, "voicemail_uri"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 229
    const-string/jumbo v1, "presentation"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 230
    const-string/jumbo v1, "subscription_component_name"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 231
    const-string/jumbo v1, "subscription_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 232
    const-string/jumbo v1, "transcription"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 233
    const-string/jumbo v1, "countryiso"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 234
    const-string/jumbo v1, "date"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 225
    sput-object v0, Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNewCallsQuery;->PROJECTION:[Ljava/lang/String;

    .line 224
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNewCallsQuery;->mContext:Landroid/content/Context;

    .line 251
    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNewCallsQuery;->mContentResolver:Landroid/content/ContentResolver;

    .line 249
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNewCallsQuery;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNewCallsQuery;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;)V

    return-void
.end method

.method private createNewCallsFromCursor(Landroid/database/Cursor;)Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 281
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "voicemailUriString":Ljava/lang/String;
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 282
    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 284
    .local v2, "callsUri":Landroid/net/Uri;
    if-nez v0, :cond_0

    const/4 v3, 0x0

    .line 285
    :goto_0
    new-instance v1, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;

    .line 288
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 289
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 290
    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 291
    const/4 v7, 0x5

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 292
    const/4 v8, 0x6

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 293
    const/4 v9, 0x7

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 294
    const/16 v10, 0x8

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 285
    invoke-direct/range {v1 .. v11}, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;-><init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v1

    .line 284
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .local v3, "voicemailUri":Landroid/net/Uri;
    goto :goto_0
.end method


# virtual methods
.method public query(I)Ljava/util/List;
    .locals 12
    .param p1, "type"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 257
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNewCallsQuery;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    invoke-static {v0, v1}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    const-string/jumbo v0, "CallLogNotifHelper"

    const-string/jumbo v1, "No READ_CALL_LOG permission, returning null for calls lookup."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-object v9

    .line 261
    :cond_0
    const-string/jumbo v0, "%s = 1 AND %s = ?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "new"

    aput-object v2, v1, v5

    const-string/jumbo v2, "type"

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 263
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNewCallsQuery;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    .line 264
    sget-object v2, Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNewCallsQuery;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "date DESC"

    .line 263
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 265
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_3

    .line 276
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    move-object v0, v9

    :goto_0
    if-eqz v0, :cond_2

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 273
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 274
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v0, "CallLogNotifHelper"

    const-string/jumbo v1, "Exception when querying Contacts Provider for calls lookup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-object v9

    .line 276
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    goto :goto_0

    .line 266
    :cond_2
    return-object v9

    .line 268
    :cond_3
    :try_start_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v8, "newCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;>;"
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 270
    invoke-direct {p0, v6}, Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNewCallsQuery;->createNewCallsFromCursor(Landroid/database/Cursor;)Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 276
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "newCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;>;"
    :catch_2
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_2
    if-eqz v6, :cond_4

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_4
    :goto_3
    if-eqz v1, :cond_9

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "newCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;>;"
    :cond_5
    if-eqz v6, :cond_6

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_6
    move-object v0, v9

    :goto_4
    if-eqz v0, :cond_7

    :try_start_8
    throw v0

    :catch_3
    move-exception v0

    goto :goto_4

    .line 272
    :cond_7
    return-object v8

    .line 276
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "newCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;>;"
    :catch_4
    move-exception v2

    if-nez v1, :cond_8

    move-object v1, v2

    goto :goto_3

    :cond_8
    if-eq v1, v2, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    throw v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_1
    move-exception v0

    move-object v1, v9

    goto :goto_2
.end method
