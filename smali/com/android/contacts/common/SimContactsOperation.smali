.class public Lcom/android/contacts/common/SimContactsOperation;
.super Ljava/lang/Object;
.source "SimContactsOperation.java"


# static fields
.field private static final CONTACT_COLUMN_ACCOUNT_NAME:I = 0x2

.field private static final CONTACT_COLUMN_ACCOUNT_TYPE:I = 0x3

.field private static final CONTACT_COLUMN_CONTACT_ID:I = 0x1

.field private static final CONTACT_COLUMN_DATA:I = 0x4

.field private static final CONTACT_COLUMN_DATA_MIMETYPE:I = 0x6

.field private static final CONTACT_COLUMN_DATA_TYPE:I = 0x5

.field private static final CONTACT_COLUMN_RAW_ID:I = 0x0

.field public static final CONTACT_PROJECTION:[Ljava/lang/String;

.field private static final DBG:Z = true

.field private static final DELETE_TOKEN:I = 0x3

.field private static final INSERT_TOKEN:I = 0x1

.field private static final QUERY_TOKEN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SimContactsOperation"

.field private static final UPDATE_TOKEN:I = 0x2

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mResolver:Landroid/content/ContentResolver;

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 67
    const-string/jumbo v1, "raw_contact_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 69
    const-string/jumbo v1, "account_name"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 70
    const-string/jumbo v1, "account_type"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "data1"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 72
    const-string/jumbo v1, "data2"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "mimetype"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 66
    sput-object v0, Lcom/android/contacts/common/SimContactsOperation;->CONTACT_PROJECTION:[Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/SimContactsOperation;->mValues:Landroid/content/ContentValues;

    .line 93
    sput-object p1, Lcom/android/contacts/common/SimContactsOperation;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/SimContactsOperation;->mResolver:Landroid/content/ContentResolver;

    .line 92
    return-void
.end method

.method private getContentUri(I)Landroid/net/Uri;
    .locals 6
    .param p1, "subscription"    # I

    .prologue
    .line 187
    const/4 v3, 0x0

    .line 188
    .local v3, "uri":Landroid/net/Uri;
    sget-object v4, Lcom/android/contacts/common/SimContactsOperation;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 189
    .local v1, "sm":Landroid/telephony/SubscriptionManager;
    const/4 v2, 0x0

    .line 191
    .local v2, "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 197
    .end local v2    # "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    :goto_0
    if-eqz v2, :cond_0

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "content://icc/adn/subId/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 199
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    .line 198
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 203
    .local v3, "uri":Landroid/net/Uri;
    :goto_1
    return-object v3

    .line 192
    .restart local v2    # "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    .local v3, "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v4, "SimContactsOperation"

    const-string/jumbo v5, "SecurityException thrown, lack permission for getActiveSubscriptionInfoList"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 201
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v2    # "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    :cond_0
    const-string/jumbo v4, "content://icc/adn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .local v3, "uri":Landroid/net/Uri;
    goto :goto_1
.end method

.method public static getSimAccountValues(J)Landroid/content/ContentValues;
    .locals 16
    .param p0, "contactId"    # J

    .prologue
    .line 232
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 233
    .local v7, "mValues":Landroid/content/ContentValues;
    invoke-static/range {p0 .. p1}, Lcom/android/contacts/common/SimContactsOperation;->setupContactCursor(J)Landroid/database/Cursor;

    move-result-object v3

    .line 234
    .local v3, "cursor":Landroid/database/Cursor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v2, "anr":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .local v6, "email":Ljava/lang/StringBuilder;
    if-nez v3, :cond_0

    .line 237
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 238
    return-object v7

    .line 242
    :cond_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 248
    :cond_1
    const/4 v10, 0x3

    .line 247
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "accountType":Ljava/lang/String;
    const/4 v10, 0x2

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "accountName":Ljava/lang/String;
    const/4 v10, 0x6

    .line 250
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 252
    .local v8, "mimeType":Ljava/lang/String;
    const/4 v10, 0x4

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, "data":Ljava/lang/String;
    const/4 v10, 0x5

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 254
    .local v9, "phoneType":Ljava/lang/String;
    const-string/jumbo v10, "account_type"

    invoke-virtual {v7, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string/jumbo v10, "account_name"

    invoke-virtual {v7, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 277
    :cond_2
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 279
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 280
    const-string/jumbo v10, "anrs"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 282
    const-string/jumbo v10, "emails"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 287
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v4    # "data":Ljava/lang/String;
    .end local v8    # "mimeType":Ljava/lang/String;
    .end local v9    # "phoneType":Ljava/lang/String;
    :goto_1
    const-string/jumbo v10, "SimContactsOperation"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getSimAccountValue: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-object v7

    .line 243
    :cond_5
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 244
    return-object v7

    .line 258
    .restart local v0    # "accountName":Ljava/lang/String;
    .restart local v1    # "accountType":Ljava/lang/String;
    .restart local v4    # "data":Ljava/lang/String;
    .restart local v8    # "mimeType":Ljava/lang/String;
    .restart local v9    # "phoneType":Ljava/lang/String;
    :cond_6
    :try_start_2
    const-string/jumbo v10, "com.android.sim"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 259
    const-string/jumbo v10, "vnd.android.cursor.item/name"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 260
    const-string/jumbo v10, "tag"

    invoke-virtual {v7, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 283
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v4    # "data":Ljava/lang/String;
    .end local v8    # "mimeType":Ljava/lang/String;
    .end local v9    # "phoneType":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 284
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v10, "SimContactsOperation"

    const-string/jumbo v11, "%s: %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 286
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 261
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "accountName":Ljava/lang/String;
    .restart local v1    # "accountType":Ljava/lang/String;
    .restart local v4    # "data":Ljava/lang/String;
    .restart local v8    # "mimeType":Ljava/lang/String;
    .restart local v9    # "phoneType":Ljava/lang/String;
    :cond_7
    :try_start_4
    const-string/jumbo v10, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 262
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    .line 263
    const-string/jumbo v10, "number"

    invoke-virtual {v7, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 285
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v4    # "data":Ljava/lang/String;
    .end local v8    # "mimeType":Ljava/lang/String;
    .end local v9    # "phoneType":Ljava/lang/String;
    :catchall_0
    move-exception v10

    .line 286
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 285
    throw v10

    .line 265
    .restart local v0    # "accountName":Ljava/lang/String;
    .restart local v1    # "accountType":Ljava/lang/String;
    .restart local v4    # "data":Ljava/lang/String;
    .restart local v8    # "mimeType":Ljava/lang/String;
    .restart local v9    # "phoneType":Ljava/lang/String;
    :cond_8
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 266
    const-string/jumbo v10, ":"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 270
    :cond_a
    const-string/jumbo v10, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 271
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 272
    const-string/jumbo v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_b
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public static getSimAccountValues(JZZ)Landroid/content/ContentValues;
    .locals 24
    .param p0, "rawContactId"    # J
    .param p2, "canSaveAnr"    # Z
    .param p3, "canSaveEmail"    # Z

    .prologue
    .line 314
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .local v20, "nameRetval":Ljava/lang/StringBuilder;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .local v22, "numberRetval":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .local v9, "anrsRetval":Ljava/lang/StringBuilder;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .local v16, "emailsRetval":Ljava/lang/StringBuilder;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 320
    .local v17, "mValues":Landroid/content/ContentValues;
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p0

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 321
    .local v10, "baseUri":Landroid/net/Uri;
    const-string/jumbo v2, "data"

    invoke-static {v10, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 322
    .local v3, "dataUri":Landroid/net/Uri;
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    .line 323
    const-string/jumbo v2, "mimetype"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 324
    const-string/jumbo v2, "data1"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 325
    const-string/jumbo v2, "data2"

    const/4 v5, 0x2

    aput-object v2, v4, v5

    .line 327
    .local v4, "projection":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 329
    .local v11, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/android/contacts/common/SimContactsOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 330
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 331
    :cond_0
    if-eqz v11, :cond_1

    .line 332
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :cond_1
    const/4 v2, 0x0

    .line 368
    if-eqz v11, :cond_2

    .line 369
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_2
    return-object v2

    .line 336
    :cond_3
    const/4 v2, -0x1

    :try_start_1
    invoke-interface {v11, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 337
    :cond_4
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 338
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 339
    .local v18, "mimeType":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 340
    .local v12, "data1":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 341
    .local v13, "data2":Ljava/lang/String;
    const-string/jumbo v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 342
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 343
    const-string/jumbo v2, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_5
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 365
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v12    # "data1":Ljava/lang/String;
    .end local v13    # "data2":Ljava/lang/String;
    .end local v18    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 366
    .local v14, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, "SimContactsOperation"

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    if-eqz v11, :cond_6

    .line 369
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 373
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_1
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 374
    .local v19, "name":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 375
    .local v21, "number":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 376
    .local v8, "anrs":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 377
    .local v15, "emails":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 378
    const-string/jumbo v2, "tag"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_7
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 381
    const-string/jumbo v2, "number"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 384
    const-string/jumbo v2, "anrs"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_9
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 387
    const-string/jumbo v2, "emails"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_a
    return-object v17

    .line 346
    .end local v8    # "anrs":Ljava/lang/String;
    .end local v15    # "emails":Ljava/lang/String;
    .end local v19    # "name":Ljava/lang/String;
    .end local v21    # "number":Ljava/lang/String;
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v12    # "data1":Ljava/lang/String;
    .restart local v13    # "data2":Ljava/lang/String;
    .restart local v18    # "mimeType":Ljava/lang/String;
    :cond_b
    :try_start_3
    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 347
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 348
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 349
    const-string/jumbo v2, ":"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_c
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 367
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v12    # "data1":Ljava/lang/String;
    .end local v13    # "data2":Ljava/lang/String;
    .end local v18    # "mimeType":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 368
    if-eqz v11, :cond_d

    .line 369
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 367
    :cond_d
    throw v2

    .line 352
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v12    # "data1":Ljava/lang/String;
    .restart local v13    # "data2":Ljava/lang/String;
    .restart local v18    # "mimeType":Ljava/lang/String;
    :cond_e
    if-eqz p2, :cond_4

    const/4 v2, 0x1

    :try_start_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 353
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 354
    const-string/jumbo v2, ":"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_f
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 358
    :cond_10
    if-eqz p3, :cond_4

    const-string/jumbo v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 359
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 360
    const-string/jumbo v2, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :cond_11
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 368
    .end local v12    # "data1":Ljava/lang/String;
    .end local v13    # "data2":Ljava/lang/String;
    .end local v18    # "mimeType":Ljava/lang/String;
    :cond_12
    if-eqz v11, :cond_6

    .line 369
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method

.method public static getSimSubscription(J)I
    .locals 6
    .param p0, "contactId"    # J

    .prologue
    .line 292
    const/4 v3, -0x1

    .line 293
    .local v3, "subscription":I
    invoke-static {p0, p1}, Lcom/android/contacts/common/SimContactsOperation;->setupContactCursor(J)Landroid/database/Cursor;

    move-result-object v2

    .line 294
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 295
    :cond_0
    return v3

    .line 298
    :cond_1
    const-string/jumbo v4, "account_name"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "accountName":Ljava/lang/String;
    const-string/jumbo v4, "account_type"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "accountType":Ljava/lang/String;
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 301
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 302
    return v3

    .line 304
    :cond_3
    const-string/jumbo v4, "com.android.sim"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 305
    invoke-static {v1, v0}, Lcom/android/contacts/common/MoreContactUtils;->getSubscription(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 307
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 308
    return v3
.end method

.method private static setupContactCursor(J)Landroid/database/Cursor;
    .locals 10
    .param p0, "contactId"    # J

    .prologue
    const/4 v9, 0x0

    .line 207
    sget-object v2, Lcom/android/contacts/common/SimContactsOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 208
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 211
    .local v6, "contactUri":Landroid/net/Uri;
    const-string/jumbo v2, "entities"

    .line 210
    invoke-static {v6, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 213
    .local v1, "entityUri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 216
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/android/contacts/common/SimContactsOperation;->CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 215
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 220
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    return-object v7

    .line 223
    :cond_0
    if-eqz v7, :cond_1

    .line 224
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_1
    const/4 v7, 0x0

    .line 227
    .local v7, "cursor":Landroid/database/Cursor;
    return-object v9

    .line 217
    :catch_0
    move-exception v8

    .line 218
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "SimContactsOperation"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    const/4 v7, 0x0

    .line 227
    return-object v9

    .line 219
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 226
    const/4 v7, 0x0

    .line 227
    return-object v9
.end method


# virtual methods
.method public delete(Landroid/content/ContentValues;I)I
    .locals 13
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "subscription"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 142
    const-string/jumbo v8, "SimContactsOperation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "delete() - values: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-gtz v8, :cond_1

    .line 144
    :cond_0
    return v12

    .line 147
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 149
    .local v4, "num":Ljava/lang/String;
    const-string/jumbo v8, "tag"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v8, "number"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "number":Ljava/lang/String;
    const-string/jumbo v8, "emails"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "emails":Ljava/lang/String;
    const-string/jumbo v8, "anrs"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "anrs":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 154
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .end local v4    # "num":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 156
    const-string/jumbo v8, "[^0123456789PWN\\,\\;\\*\\#\\+\\:]"

    const-string/jumbo v9, ""

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/contacts/common/SimContactsOperation;->getContentUri(I)Landroid/net/Uri;

    move-result-object v7

    .line 161
    .local v7, "uri":Landroid/net/Uri;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 162
    const-string/jumbo v8, "tag=\'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string/jumbo v8, "\'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 167
    const-string/jumbo v8, " AND number=\'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string/jumbo v8, "\'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 172
    const-string/jumbo v8, " AND emails=\'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string/jumbo v8, "\'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 177
    const-string/jumbo v8, " AND anrs=\'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string/jumbo v8, "\'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_7
    iget-object v8, p0, Lcom/android/contacts/common/SimContactsOperation;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 183
    .local v6, "result":I
    return v6
.end method

.method public insert(Landroid/content/ContentValues;I)Landroid/net/Uri;
    .locals 8
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "subscription"    # I

    .prologue
    .line 99
    invoke-direct {p0, p2}, Lcom/android/contacts/common/SimContactsOperation;->getContentUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 100
    .local v4, "uri":Landroid/net/Uri;
    const-string/jumbo v5, "number"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "number":Ljava/lang/String;
    const-string/jumbo v5, "anrs"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "anrs":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 103
    const-string/jumbo v5, "[^0123456789PWN\\,\\;\\*\\#\\+\\:]"

    const-string/jumbo v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_0
    const-string/jumbo v5, "emails"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "emails":Ljava/lang/String;
    const-string/jumbo v5, "number"

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v5, "anrs"

    invoke-virtual {p1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string/jumbo v5, "emails"

    invoke-virtual {p1, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string/jumbo v5, "SimContactsOperation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insert() - values: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v5, p0, Lcom/android/contacts/common/SimContactsOperation;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, v4, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 113
    .local v3, "resultUri":Landroid/net/Uri;
    return-object v3
.end method

.method public update(Landroid/content/ContentValues;I)I
    .locals 10
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "subscription"    # I

    .prologue
    const/4 v9, 0x0

    .line 117
    invoke-direct {p0, p2}, Lcom/android/contacts/common/SimContactsOperation;->getContentUri(I)Landroid/net/Uri;

    move-result-object v5

    .line 120
    .local v5, "uri":Landroid/net/Uri;
    const-string/jumbo v6, "number"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "oldNumber":Ljava/lang/String;
    const-string/jumbo v6, "newNumber"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "newNumber":Ljava/lang/String;
    const-string/jumbo v6, "anrs"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "oldAnrs":Ljava/lang/String;
    const-string/jumbo v6, "newAnrs"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "newAnrs":Ljava/lang/String;
    const-string/jumbo v6, "number"

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v6, "newNumber"

    .line 126
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 125
    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 128
    const-string/jumbo v6, "[^0123456789PWN\\,\\;\\*\\#\\+\\:]"

    const-string/jumbo v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 131
    const-string/jumbo v6, "[^0123456789PWN\\,\\;\\*\\#\\+\\:]"

    const-string/jumbo v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    :cond_1
    const-string/jumbo v6, "anrs"

    invoke-virtual {p1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string/jumbo v6, "newAnrs"

    invoke-virtual {p1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string/jumbo v6, "SimContactsOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update() - values: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v6, p0, Lcom/android/contacts/common/SimContactsOperation;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, v5, p1, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 138
    .local v4, "result":I
    return v4
.end method
