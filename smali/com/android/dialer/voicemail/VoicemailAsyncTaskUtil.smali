.class public Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;
.super Ljava/lang/Object;
.source "VoicemailAsyncTaskUtil.java"


# annotations
.annotation build Lcom/android/contacts/common/testing/NeededForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnArchiveVoicemailListener;,
        Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnGetArchivedVoicemailFilePathListener;,
        Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnSetVoicemailArchiveStatusListener;,
        Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;
    }
.end annotation


# instance fields
.field private final mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -get0(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->getVoicemailContentValues(Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->getArchivedVoicemailUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->hasContent(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->mResolver:Landroid/content/ContentResolver;

    .line 94
    invoke-static {}, Lcom/android/dialer/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/dialer/util/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    .line 92
    return-void
.end method

.method private getArchiveExistsCursor(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 8
    .param p1, "voicemailUri"    # Landroid/net/Uri;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 339
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/dialer/database/VoicemailArchiveContract$VoicemailArchive;->CONTENT_URI:Landroid/net/Uri;

    .line 340
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "server_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 342
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 341
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 339
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getArchivedVoicemailUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p1, "voicemailUri"    # Landroid/net/Uri;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 228
    const/4 v0, 0x0

    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->getArchiveExistsCursor(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 229
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->hasContent(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    const-string/jumbo v1, "_id"

    .line 231
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 230
    invoke-static {v1}, Lcom/android/dialer/database/VoicemailArchiveContract$VoicemailArchive;->buildWithId(I)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 234
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0

    .line 230
    :cond_1
    return-object v1

    .line 234
    :cond_2
    if-eqz v0, :cond_3

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_7

    throw v1

    :catch_1
    move-exception v1

    goto :goto_1

    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_2
    if-eqz v0, :cond_4

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_3
    if-eqz v2, :cond_6

    throw v2

    :catch_3
    move-exception v3

    if-nez v2, :cond_5

    move-object v2, v3

    goto :goto_3

    :cond_5
    if-eq v2, v3, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    throw v1

    .line 235
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_7
    return-object v2

    .line 234
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    goto :goto_2
.end method

.method private getCallLogInfoCursor(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6
    .param p1, "voicemailUri"    # Landroid/net/Uri;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 318
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->mResolver:Landroid/content/ContentResolver;

    .line 319
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    .line 320
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 319
    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 321
    sget-object v2, Lcom/android/dialer/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    .line 318
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getContentInfoCursor(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6
    .param p1, "voicemailUri"    # Landroid/net/Uri;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 326
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->mResolver:Landroid/content/ContentResolver;

    .line 327
    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    .line 328
    const-string/jumbo v1, "_id"

    const/4 v4, 0x0

    aput-object v1, v2, v4

    .line 329
    const-string/jumbo v1, "number"

    const/4 v4, 0x1

    aput-object v1, v2, v4

    .line 330
    const-string/jumbo v1, "date"

    const/4 v4, 0x2

    aput-object v1, v2, v4

    .line 331
    const-string/jumbo v1, "duration"

    const/4 v4, 0x3

    aput-object v1, v2, v4

    .line 332
    const-string/jumbo v1, "mime_type"

    const/4 v4, 0x4

    aput-object v1, v2, v4

    .line 333
    const-string/jumbo v1, "transcription"

    const/4 v4, 0x5

    aput-object v1, v2, v4

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 326
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getVoicemailContentValues(Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 9
    .param p1, "voicemailUri"    # Landroid/net/Uri;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 246
    const/4 v0, 0x0

    .local v0, "callLogInfo":Landroid/database/Cursor;
    const/4 v1, 0x0

    .local v1, "contentInfo":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->getCallLogInfoCursor(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 247
    .local v0, "callLogInfo":Landroid/database/Cursor;
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->getContentInfoCursor(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    .line 249
    .local v1, "contentInfo":Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->hasContent(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v1}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->hasContent(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 251
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 254
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "countryiso"

    .line 255
    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 254
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string/jumbo v3, "geocoded_location"

    .line 257
    const/4 v5, 0x7

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 256
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string/jumbo v3, "name"

    .line 259
    const/16 v5, 0x8

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 258
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string/jumbo v3, "numbertype"

    .line 261
    const/16 v5, 0x9

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 260
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string/jumbo v3, "numberlabel"

    .line 263
    const/16 v5, 0xa

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 262
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string/jumbo v3, "lookup_uri"

    .line 265
    const/16 v5, 0xb

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 264
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string/jumbo v3, "matched_number"

    .line 267
    const/16 v5, 0xc

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 266
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string/jumbo v3, "normalized_number"

    .line 269
    const/16 v5, 0xd

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 268
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string/jumbo v3, "formatted_number"

    .line 271
    const/16 v5, 0xf

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 270
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string/jumbo v3, "presentation"

    .line 273
    const/16 v5, 0x11

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 272
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 274
    const-string/jumbo v3, "subscription_component_name"

    .line 275
    const/16 v5, 0x12

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 274
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string/jumbo v3, "subscription_id"

    .line 277
    const/16 v5, 0x13

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 276
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v3, "features"

    .line 279
    const/16 v5, 0x14

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 278
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    const-string/jumbo v3, "photo_uri"

    .line 281
    sget v5, Lcom/android/dialer/calllog/CallLogQuery;->CACHED_PHOTO_URI:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 280
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string/jumbo v3, "server_id"

    .line 286
    const-string/jumbo v5, "_id"

    .line 285
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 284
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    const-string/jumbo v3, "number"

    .line 289
    const-string/jumbo v5, "number"

    .line 288
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 287
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string/jumbo v3, "date"

    .line 292
    const-string/jumbo v5, "date"

    .line 291
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 290
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 293
    const-string/jumbo v3, "duration"

    .line 295
    const-string/jumbo v5, "duration"

    .line 294
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 293
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 296
    const-string/jumbo v3, "mime_type"

    .line 298
    const-string/jumbo v5, "mime_type"

    .line 297
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 296
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string/jumbo v3, "transcription"

    .line 301
    const-string/jumbo v5, "transcription"

    .line 300
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 299
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string/jumbo v3, "archived_by_user"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 308
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    move-object v3, v4

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    throw v3

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v3

    if-eqz v4, :cond_2

    if-eq v4, v3, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v3, v4

    goto :goto_1

    .line 306
    :cond_3
    return-object v2

    .line 308
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_4
    if-eqz v1, :cond_5

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    move-object v5, v4

    :goto_2
    if-eqz v0, :cond_6

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_6
    move-object v3, v5

    :cond_7
    :goto_3
    if-eqz v3, :cond_d

    throw v3

    :catch_2
    move-exception v5

    goto :goto_2

    :catch_3
    move-exception v3

    if-eqz v5, :cond_7

    if-eq v5, v3, :cond_6

    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v3, v5

    goto :goto_3

    .end local v0    # "callLogInfo":Landroid/database/Cursor;
    .end local v1    # "contentInfo":Landroid/database/Cursor;
    :catch_4
    move-exception v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v4

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    :goto_4
    if-eqz v1, :cond_8

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    :cond_8
    move-object v5, v4

    :cond_9
    :goto_5
    if-eqz v0, :cond_a

    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    :cond_a
    move-object v4, v5

    :cond_b
    :goto_6
    if-eqz v4, :cond_c

    throw v4

    :catch_5
    move-exception v5

    if-eqz v4, :cond_9

    if-eq v4, v5, :cond_8

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v5, v4

    goto :goto_5

    :catch_6
    move-exception v4

    if-eqz v5, :cond_b

    if-eq v5, v4, :cond_a

    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v4, v5

    goto :goto_6

    :cond_c
    throw v3

    .line 309
    .restart local v0    # "callLogInfo":Landroid/database/Cursor;
    .restart local v1    # "contentInfo":Landroid/database/Cursor;
    :cond_d
    return-object v4

    .line 308
    .end local v0    # "callLogInfo":Landroid/database/Cursor;
    .end local v1    # "contentInfo":Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    goto :goto_4
.end method

.method private hasContent(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 313
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public archiveVoicemailContent(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnArchiveVoicemailListener;Landroid/net/Uri;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnArchiveVoicemailListener;
    .param p2, "voicemailUri"    # Landroid/net/Uri;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 165
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;->ARCHIVE_VOICEMAIL_CONTENT:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;

    .line 168
    new-instance v2, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$3;-><init>(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;Landroid/net/Uri;Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnArchiveVoicemailListener;)V

    .line 167
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 164
    return-void
.end method

.method public getVoicemailFilePath(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnGetArchivedVoicemailFilePathListener;Landroid/net/Uri;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnGetArchivedVoicemailFilePathListener;
    .param p2, "voicemailUri"    # Landroid/net/Uri;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 104
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;->GET_VOICEMAIL_FILE_PATH:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;

    .line 107
    new-instance v2, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$1;-><init>(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;Landroid/net/Uri;Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnGetArchivedVoicemailFilePathListener;)V

    .line 106
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    return-void
.end method

.method public setVoicemailArchiveStatus(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnSetVoicemailArchiveStatusListener;Landroid/net/Uri;Z)V
    .locals 4
    .param p1, "listener"    # Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnSetVoicemailArchiveStatusListener;
    .param p2, "voicemailUri"    # Landroid/net/Uri;
    .param p3, "archivedByUser"    # Z
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 137
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;->SET_VOICEMAIL_ARCHIVE_STATUS:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;

    .line 140
    new-instance v2, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$2;

    invoke-direct {v2, p0, p3, p2, p1}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$2;-><init>(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;ZLandroid/net/Uri;Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnSetVoicemailArchiveStatusListener;)V

    .line 139
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    return-void
.end method
