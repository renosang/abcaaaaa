.class public Lcom/android/vcard/VCardComposer;
.super Ljava/lang/Object;
.source "VCardComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardComposer$EntityIteratorImpl;,
        Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;,
        Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;
    }
.end annotation


# static fields
.field private static final sContactsProjection:[Ljava/lang/String;

.field private static final sImMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCharset:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mContentUriForRawContactsEntity:Landroid/net/Uri;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorSuppliedFromOutside:Z

.field private mEntity:Landroid/content/Entity;

.field private mEntityIterator:Landroid/content/EntityIterator;

.field private mErrorReason:Ljava/lang/String;

.field private mFirstVCardEmittedInDoCoMoCase:Z

.field private mIdColumn:I

.field private mInitDone:Z

.field private final mIsDoCoMo:Z

.field private mNoSplitNamePackges:[Ljava/lang/String;

.field private mPhoneTranslationCallback:Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

.field private mRawContactEntitlesInfoCallback:Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;

.field private mSplitName:Z

.field private mTerminateCalled:Z

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    .line 124
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-AIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-MSN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-YAHOO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-ICQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-JABBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-SKYPE-USERNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-array v0, v4, [Ljava/lang/String;

    .line 182
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 181
    sput-object v0, Lcom/android/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vcardType"    # I
    .param p3, "charset"    # Ljava/lang/String;
    .param p4, "careHandlerErrors"    # Z

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;ILjava/lang/String;Z)V

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vcardType"    # I
    .param p3, "careHandlerErrors"    # Z

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;ILjava/lang/String;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "vcardType"    # I
    .param p4, "charset"    # Ljava/lang/String;
    .param p5, "careHandlerErrors"    # Z

    .prologue
    const/4 v2, 0x1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const-string/jumbo v1, "No error"

    iput-object v1, p0, Lcom/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 159
    iput-boolean v2, p0, Lcom/android/vcard/VCardComposer;->mTerminateCalled:Z

    .line 163
    iput-boolean v2, p0, Lcom/android/vcard/VCardComposer;->mSplitName:Z

    .line 164
    new-array v1, v2, [Ljava/lang/String;

    .line 165
    const-string/jumbo v2, "com.android.bluetooth"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 164
    iput-object v1, p0, Lcom/android/vcard/VCardComposer;->mNoSplitNamePackges:[Ljava/lang/String;

    .line 230
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardComposer;->initSplitName(Landroid/content/Context;)V

    .line 231
    iput p3, p0, Lcom/android/vcard/VCardComposer;->mVCardType:I

    .line 232
    iput-object p2, p0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 234
    invoke-static {p3}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/vcard/VCardComposer;->mIsDoCoMo:Z

    .line 236
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p4, "UTF-8"

    .line 238
    :cond_0
    invoke-static {p3}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 237
    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 240
    .local v0, "shouldAppendCharsetParam":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/vcard/VCardComposer;->mIsDoCoMo:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_5

    .line 241
    :cond_1
    const-string/jumbo v1, "SHIFT_JIS"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    iput-object p4, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    .line 261
    :goto_1
    const-string/jumbo v1, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Use the charset \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void

    .line 237
    .end local v0    # "shouldAppendCharsetParam":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "shouldAppendCharsetParam":Z
    goto :goto_0

    .line 247
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 248
    const-string/jumbo v1, "SHIFT_JIS"

    iput-object v1, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_1

    .line 250
    :cond_4
    iput-object p4, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_1

    .line 254
    :cond_5
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 255
    const-string/jumbo v1, "UTF-8"

    iput-object v1, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_1

    .line 257
    :cond_6
    iput-object p4, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_1
.end method

.method private closeCursorIfAppropriate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 878
    iget-boolean v1, p0, Lcom/android/vcard/VCardComposer;->mCursorSuppliedFromOutside:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 880
    :try_start_0
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    :goto_0
    iput-object v4, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 886
    :cond_0
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mEntityIterator:Landroid/content/EntityIterator;

    if-eqz v1, :cond_1

    .line 888
    :try_start_1
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mEntityIterator:Landroid/content/EntityIterator;

    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 892
    :goto_1
    iput-object v4, p0, Lcom/android/vcard/VCardComposer;->mEntityIterator:Landroid/content/EntityIterator;

    .line 877
    :cond_1
    return-void

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SQLiteException on Cursor#close(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 889
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v0

    .line 890
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SQLiteException on EntityIterator#close(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private createOneEntryInternal(JLjava/lang/reflect/Method;)Ljava/lang/String;
    .locals 21
    .param p1, "contactId"    # J
    .param p3, "getEntityIteratorMethod"    # Ljava/lang/reflect/Method;

    .prologue
    .line 597
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 601
    .local v10, "contentValuesListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/4 v15, 0x0

    .line 603
    .local v15, "entityIterator":Landroid/content/EntityIterator;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/vcard/VCardComposer;->mContentUriForRawContactsEntity:Landroid/net/Uri;

    .line 604
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardComposer;->mRawContactEntitlesInfoCallback:Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;

    if-eqz v2, :cond_0

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardComposer;->mRawContactEntitlesInfoCallback:Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;

    move-wide/from16 v0, p1

    invoke-interface {v2, v0, v1}, Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;->getRawContactEntitlesInfo(J)Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;

    move-result-object v19

    .line 607
    .local v19, "rawContactEntitlesInfo":Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;->rawContactEntitlesUri:Landroid/net/Uri;

    .line 608
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;->contactId:J

    move-wide/from16 p1, v0

    .line 610
    .end local v19    # "rawContactEntitlesInfo":Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;
    :cond_0
    const-string/jumbo v20, "contact_id=?"

    .line 611
    .local v20, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v6, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    .local v6, "selectionArgs":[Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 615
    const/4 v2, 0x5

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 616
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v4, "contact_id=?"

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const/4 v4, 0x3

    aput-object v6, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x4

    aput-object v4, v2, v5

    .line 615
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/content/EntityIterator;

    move-object v15, v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    .end local v15    # "entityIterator":Landroid/content/EntityIterator;
    :goto_0
    if-nez v15, :cond_4

    .line 633
    :try_start_2
    const-string/jumbo v2, "VCardComposer"

    const-string/jumbo v4, "EntityIterator is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const-string/jumbo v2, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 659
    if-eqz v15, :cond_1

    .line 660
    invoke-interface {v15}, Landroid/content/EntityIterator;->close()V

    .line 634
    :cond_1
    return-object v2

    .line 623
    .restart local v15    # "entityIterator":Landroid/content/EntityIterator;
    :catch_0
    move-exception v13

    .line 624
    .local v13, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_3
    const-string/jumbo v2, "VCardComposer"

    const-string/jumbo v4, "InvocationTargetException has been thrown: "

    invoke-static {v2, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 625
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "InvocationTargetException has been thrown"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 658
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v13    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v15    # "entityIterator":Landroid/content/EntityIterator;
    .end local v20    # "selection":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 659
    if-eqz v15, :cond_2

    .line 660
    invoke-interface {v15}, Landroid/content/EntityIterator;->close()V

    .line 658
    :cond_2
    throw v2

    .line 620
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v15    # "entityIterator":Landroid/content/EntityIterator;
    .restart local v20    # "selection":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 621
    .local v11, "e":Ljava/lang/IllegalAccessException;
    :try_start_4
    const-string/jumbo v2, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IllegalAccessException has been thrown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 622
    invoke-virtual {v11}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 621
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 617
    .end local v11    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v12

    .line 618
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IllegalArgumentException has been thrown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 619
    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 618
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 628
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 629
    const-string/jumbo v5, "contact_id=?"

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 628
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v15

    .local v15, "entityIterator":Landroid/content/EntityIterator;
    goto :goto_0

    .line 637
    .end local v15    # "entityIterator":Landroid/content/EntityIterator;
    :cond_4
    invoke-interface {v15}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 638
    const-string/jumbo v2, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Data does not exist. contactId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string/jumbo v2, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 659
    if-eqz v15, :cond_5

    .line 660
    invoke-interface {v15}, Landroid/content/EntityIterator;->close()V

    .line 639
    :cond_5
    return-object v2

    .line 642
    :cond_6
    :try_start_5
    invoke-interface {v15}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 643
    invoke-interface {v15}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Entity;

    .line 644
    .local v14, "entity":Landroid/content/Entity;
    invoke-virtual {v14}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "namedContentValues$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Entity$NamedContentValues;

    .line 645
    .local v17, "namedContentValues":Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v17

    iget-object v8, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 646
    .local v8, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "mimetype"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 647
    .local v16, "key":Ljava/lang/String;
    if-eqz v16, :cond_7

    .line 649
    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 650
    .local v9, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v9, :cond_8

    .line 651
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .restart local v9    # "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object/from16 v0, v16

    invoke-interface {v10, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    :cond_8
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 659
    .end local v8    # "contentValues":Landroid/content/ContentValues;
    .end local v9    # "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v14    # "entity":Landroid/content/Entity;
    .end local v16    # "key":Ljava/lang/String;
    .end local v17    # "namedContentValues":Landroid/content/Entity$NamedContentValues;
    .end local v18    # "namedContentValues$iterator":Ljava/util/Iterator;
    :cond_9
    if-eqz v15, :cond_a

    .line 660
    invoke-interface {v15}, Landroid/content/EntityIterator;->close()V

    .line 664
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/vcard/VCardComposer;->buildVCard(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createOneEntryInternalByIterator()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 544
    iget-object v9, p0, Lcom/android/vcard/VCardComposer;->mEntityIterator:Landroid/content/EntityIterator;

    invoke-interface {v9}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 545
    iget-object v9, p0, Lcom/android/vcard/VCardComposer;->mEntity:Landroid/content/Entity;

    if-nez v9, :cond_0

    .line 546
    const-string/jumbo v9, "VCardComposer"

    const-string/jumbo v10, "EntityIterator#hasNext() returned false"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    return-object v11

    .line 550
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 551
    .local v3, "contentValuesListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/4 v6, -0x1

    .line 552
    .local v6, "lastContactId":I
    iget-object v9, p0, Lcom/android/vcard/VCardComposer;->mEntity:Landroid/content/Entity;

    if-eqz v9, :cond_4

    .line 553
    iget-object v9, p0, Lcom/android/vcard/VCardComposer;->mEntity:Landroid/content/Entity;

    invoke-virtual {v9}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v9

    const-string/jumbo v10, "contact_id"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 554
    iget-object v9, p0, Lcom/android/vcard/VCardComposer;->mEntity:Landroid/content/Entity;

    invoke-virtual {v9}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "namedContentValues$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Entity$NamedContentValues;

    .line 555
    .local v7, "namedContentValues":Landroid/content/Entity$NamedContentValues;
    iget-object v1, v7, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 556
    .local v1, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v9, "mimetype"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 557
    .local v5, "key":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 558
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 559
    .local v2, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v2, :cond_2

    .line 560
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .restart local v2    # "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 566
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "namedContentValues":Landroid/content/Entity$NamedContentValues;
    :cond_3
    iput-object v11, p0, Lcom/android/vcard/VCardComposer;->mEntity:Landroid/content/Entity;

    .line 568
    .end local v8    # "namedContentValues$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    iget-object v9, p0, Lcom/android/vcard/VCardComposer;->mEntityIterator:Landroid/content/EntityIterator;

    invoke-interface {v9}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 569
    iget-object v9, p0, Lcom/android/vcard/VCardComposer;->mEntityIterator:Landroid/content/EntityIterator;

    invoke-interface {v9}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Entity;

    .line 570
    .local v4, "entity":Landroid/content/Entity;
    invoke-virtual {v4}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v9

    const-string/jumbo v10, "contact_id"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 571
    .local v0, "contactId":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_5

    if-ne v0, v6, :cond_9

    .line 572
    :cond_5
    invoke-virtual {v4}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "namedContentValues$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Entity$NamedContentValues;

    .line 573
    .restart local v7    # "namedContentValues":Landroid/content/Entity$NamedContentValues;
    iget-object v1, v7, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 574
    .restart local v1    # "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v9, "mimetype"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 575
    .restart local v5    # "key":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 576
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 577
    .restart local v2    # "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v2, :cond_7

    .line 578
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .restart local v2    # "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    :cond_7
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 584
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "namedContentValues":Landroid/content/Entity$NamedContentValues;
    :cond_8
    move v6, v0

    .line 571
    goto :goto_1

    .line 586
    .end local v8    # "namedContentValues$iterator":Ljava/util/Iterator;
    :cond_9
    move v6, v0

    .line 587
    iput-object v4, p0, Lcom/android/vcard/VCardComposer;->mEntity:Landroid/content/Entity;

    .line 591
    .end local v0    # "contactId":I
    .end local v4    # "entity":Landroid/content/Entity;
    :cond_a
    invoke-virtual {p0, v3}, Lcom/android/vcard/VCardComposer;->buildVCard(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private initEntityIterator()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 468
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .local v6, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "contact_id"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 473
    const-string/jumbo v0, ","

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    const-string/jumbo v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mContentUriForRawContactsEntity:Landroid/net/Uri;

    .line 479
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "contact_id"

    move-object v4, v2

    .line 478
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 477
    invoke-static {v0}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vcard/VCardComposer;->mEntityIterator:Landroid/content/EntityIterator;

    .line 480
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 467
    return-void
.end method

.method private initInterCursorCreationPart(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 440
    iput-boolean v6, p0, Lcom/android/vcard/VCardComposer;->mCursorSuppliedFromOutside:Z

    .line 441
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 443
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 444
    const-string/jumbo v0, "VCardComposer"

    const-string/jumbo v1, "Cursor became null unexpectedly"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string/jumbo v0, "Failed to get database information"

    iput-object v0, p0, Lcom/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 446
    return v6

    .line 448
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private initInterFirstPart(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "contentUriForRawContactsEntity"    # Landroid/net/Uri;

    .prologue
    .line 428
    if-eqz p1, :cond_0

    .line 427
    .end local p1    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    :goto_0
    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mContentUriForRawContactsEntity:Landroid/net/Uri;

    .line 430
    iget-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mInitDone:Z

    if-eqz v0, :cond_1

    .line 431
    const-string/jumbo v0, "VCardComposer"

    const-string/jumbo v1, "init() is already called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v0, 0x0

    return v0

    .line 429
    .restart local p1    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    :cond_0
    sget-object p1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 434
    .end local p1    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private initInterLastPart()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 484
    iput-boolean v1, p0, Lcom/android/vcard/VCardComposer;->mInitDone:Z

    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mTerminateCalled:Z

    .line 486
    return v1
.end method

.method private initInterMainPart()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 452
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 460
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "contact_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    .line 461
    iget v1, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    if-gez v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    .line 464
    :cond_0
    iget v1, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 457
    :cond_2
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->closeCursorIfAppropriate()V

    .line 458
    return v0
.end method

.method private initSplitName(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 168
    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "packgeName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 171
    iget-object v4, p0, Lcom/android/vcard/VCardComposer;->mNoSplitNamePackges:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v0, v4, v2

    .line 172
    .local v0, "noSplitNamePackge":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 173
    iput-boolean v3, p0, Lcom/android/vcard/VCardComposer;->mSplitName:Z

    .line 167
    .end local v0    # "noSplitNamePackge":Ljava/lang/String;
    .end local v1    # "packgeName":Ljava/lang/String;
    :cond_0
    return-void

    .line 171
    .restart local v0    # "noSplitNamePackge":Ljava/lang/String;
    .restart local v1    # "packgeName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public buildVCard(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 847
    .local p1, "contentValuesListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    if-nez p1, :cond_0

    .line 848
    const-string/jumbo v1, "VCardComposer"

    const-string/jumbo v2, "The given map is null. Ignore and return empty String"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const-string/jumbo v1, ""

    return-object v1

    .line 851
    :cond_0
    new-instance v0, Lcom/android/vcard/VCardBuilder;

    iget v1, p0, Lcom/android/vcard/VCardComposer;->mVCardType:I

    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    .line 852
    .local v0, "builder":Lcom/android/vcard/VCardBuilder;
    const-string/jumbo v1, "vnd.android.cursor.item/name"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendNameProperties(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    .line 853
    const-string/jumbo v1, "vnd.android.cursor.item/nickname"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 852
    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardBuilder;->appendNickNames(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    .line 854
    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 855
    iget-object v3, p0, Lcom/android/vcard/VCardComposer;->mPhoneTranslationCallback:Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

    .line 852
    invoke-virtual {v2, v1, v3}, Lcom/android/vcard/VCardBuilder;->appendPhones(Ljava/util/List;Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    .line 856
    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 852
    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardBuilder;->appendEmails(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    .line 857
    const-string/jumbo v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 852
    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardBuilder;->appendPostals(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    .line 858
    const-string/jumbo v1, "vnd.android.cursor.item/organization"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 852
    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardBuilder;->appendOrganizations(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    .line 859
    const-string/jumbo v1, "vnd.android.cursor.item/website"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 852
    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardBuilder;->appendWebsites(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 860
    iget v1, p0, Lcom/android/vcard/VCardComposer;->mVCardType:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 861
    const-string/jumbo v1, "vnd.android.cursor.item/photo"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendPhotos(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 863
    :cond_1
    const-string/jumbo v1, "vnd.android.cursor.item/note"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendNotes(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    .line 864
    const-string/jumbo v1, "vnd.android.cursor.item/contact_event"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 863
    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardBuilder;->appendEvents(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    .line 865
    const-string/jumbo v1, "vnd.android.cursor.item/im"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 863
    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardBuilder;->appendIms(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    .line 866
    const-string/jumbo v1, "vnd.android.cursor.item/sip_address"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 863
    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardBuilder;->appendSipAddresses(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    .line 867
    const-string/jumbo v1, "vnd.android.cursor.item/relation"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 863
    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardBuilder;->appendRelation(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 868
    invoke-virtual {v0}, Lcom/android/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public createOneEntry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardComposer;->createOneEntry(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createOneEntry(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 4
    .param p1, "getEntityIteratorMethod"    # Ljava/lang/reflect/Method;

    .prologue
    .line 500
    iget-boolean v1, p0, Lcom/android/vcard/VCardComposer;->mIsDoCoMo:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/vcard/VCardComposer;->mFirstVCardEmittedInDoCoMoCase:Z

    if-eqz v1, :cond_3

    .line 509
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mEntityIterator:Landroid/content/EntityIterator;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_4

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p1}, Lcom/android/vcard/VCardComposer;->createOneEntryInternal(JLjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "vcard":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 513
    const-string/jumbo v1, "VCardComposer"

    const-string/jumbo v2, "Cursor#moveToNext() returned false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_2
    return-object v0

    .line 501
    .end local v0    # "vcard":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/vcard/VCardComposer;->mFirstVCardEmittedInDoCoMoCase:Z

    goto :goto_0

    .line 511
    :cond_4
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->createOneEntryInternalByIterator()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "vcard":Ljava/lang/String;
    goto :goto_1
.end method

.method public createOneEntryIndeed(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 676
    iget-boolean v9, p0, Lcom/android/vcard/VCardComposer;->mIsDoCoMo:Z

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/vcard/VCardComposer;->mFirstVCardEmittedInDoCoMoCase:Z

    if-eqz v9, :cond_1

    .line 685
    :cond_0
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 689
    .local v2, "contentValuesListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/4 v4, 0x0

    .line 691
    .local v4, "entityIterator":Landroid/content/EntityIterator;
    :try_start_0
    new-instance v5, Lcom/android/vcard/VCardComposer$EntityIteratorImpl;

    invoke-direct {v5, p1}, Lcom/android/vcard/VCardComposer$EntityIteratorImpl;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 692
    .local v5, "entityIterator":Landroid/content/EntityIterator;
    if-nez v5, :cond_2

    .line 693
    .end local v4    # "entityIterator":Landroid/content/EntityIterator;
    :try_start_1
    const-string/jumbo v9, "VCardComposer"

    const-string/jumbo v10, "EntityIterator is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const-string/jumbo v9, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v9

    .line 677
    .end local v2    # "contentValuesListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    .end local v5    # "entityIterator":Landroid/content/EntityIterator;
    :cond_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/vcard/VCardComposer;->mFirstVCardEmittedInDoCoMoCase:Z

    goto :goto_0

    .line 697
    .restart local v2    # "contentValuesListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    .restart local v5    # "entityIterator":Landroid/content/EntityIterator;
    :cond_2
    :try_start_2
    invoke-interface {v5}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 699
    const-string/jumbo v9, ""

    return-object v9

    .line 702
    :cond_3
    invoke-interface {v5}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 703
    invoke-interface {v5}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity;

    .line 704
    .local v3, "entity":Landroid/content/Entity;
    invoke-virtual {v3}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "namedContentValues$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Entity$NamedContentValues;

    .line 705
    .local v7, "namedContentValues":Landroid/content/Entity$NamedContentValues;
    iget-object v0, v7, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 706
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v9, "mimetype"

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 707
    .local v6, "key":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 709
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 710
    .local v1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v1, :cond_5

    .line 711
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .restart local v1    # "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    :cond_5
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 718
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v3    # "entity":Landroid/content/Entity;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "namedContentValues":Landroid/content/Entity$NamedContentValues;
    .end local v8    # "namedContentValues$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    move-object v4, v5

    .end local v5    # "entityIterator":Landroid/content/EntityIterator;
    :goto_2
    throw v9

    .line 723
    .restart local v5    # "entityIterator":Landroid/content/EntityIterator;
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/vcard/VCardComposer;->buildVCard(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 718
    .end local v5    # "entityIterator":Landroid/content/EntityIterator;
    .restart local v4    # "entityIterator":Landroid/content/EntityIterator;
    :catchall_1
    move-exception v9

    goto :goto_2
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 899
    :try_start_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mTerminateCalled:Z

    if-nez v0, :cond_0

    .line 900
    const-string/jumbo v0, "VCardComposer"

    const-string/jumbo v1, "finalized() is called before terminate() being called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 897
    return-void

    .line 902
    :catchall_0
    move-exception v0

    .line 903
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 902
    throw v0
.end method

.method public getContentUriForRawContactsEntity()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mContentUriForRawContactsEntity:Landroid/net/Uri;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 914
    const-string/jumbo v0, "VCardComposer"

    const-string/jumbo v1, "This object is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/4 v0, 0x0

    return v0

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "contentUriForRawContactsEntity"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 376
    const-string/jumbo v0, "com.android.contacts"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    const-string/jumbo v0, "The Uri vCard composer received is not supported by the composer."

    iput-object v0, p0, Lcom/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 379
    return v2

    .line 382
    :cond_0
    invoke-direct {p0, p6}, Lcom/android/vcard/VCardComposer;->initInterFirstPart(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    return v2

    .line 385
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/android/vcard/VCardComposer;->initInterCursorCreationPart(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 387
    return v2

    .line 389
    :cond_2
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->initInterMainPart()Z

    move-result v0

    if-nez v0, :cond_3

    .line 390
    return v2

    .line 392
    :cond_3
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->initEntityIterator()V

    .line 394
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->initInterLastPart()Z

    move-result v0

    return v0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 926
    const-string/jumbo v0, "VCardComposer"

    const-string/jumbo v1, "This object is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const/4 v0, 0x0

    return v0

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mEntityIterator:Landroid/content/EntityIterator;

    if-eqz v0, :cond_2

    .line 930
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mEntityIterator:Landroid/content/EntityIterator;

    invoke-interface {v0}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mEntity:Landroid/content/Entity;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    goto :goto_0

    .line 932
    :cond_2
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 873
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->closeCursorIfAppropriate()V

    .line 874
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mTerminateCalled:Z

    .line 872
    return-void
.end method
