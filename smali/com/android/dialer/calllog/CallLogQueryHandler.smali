.class public Lcom/android/dialer/calllog/CallLogQueryHandler;
.super Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler;
.source "CallLogQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogQueryHandler$CatchingWorkerHandler;,
        Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/dialer/calllog/CallLogQueryHandler;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "listener"    # Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;

    .prologue
    .line 128
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "listener"    # Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;
    .param p4, "limit"    # I

    .prologue
    .line 133
    invoke-direct {p0, p2}, Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mContext:Landroid/content/Context;

    .line 135
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    .line 136
    iput p4, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mLogLimit:I

    .line 132
    return-void
.end method

.method private cancelFetch()V
    .locals 1

    .prologue
    .line 320
    const/16 v0, 0x36

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->cancelOperation(I)V

    .line 319
    return-void
.end method

.method private fetchCalls(IIZJ)V
    .locals 12
    .param p1, "token"    # I
    .param p2, "callType"    # I
    .param p3, "newOnly"    # Z
    .param p4, "newerThan"    # J

    .prologue
    .line 210
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v10, "where":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 214
    .local v9, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "("

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " != ?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/android/contacts/common/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v0

    .line 219
    const/16 v1, 0x17

    .line 218
    if-lt v0, v1, :cond_0

    .line 220
    const-string/jumbo v0, " AND ("

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = 0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_0
    if-eqz p3, :cond_1

    .line 224
    const-string/jumbo v0, " AND ("

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "new"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = 1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_1
    const/4 v0, -0x1

    if-le p2, v0, :cond_9

    .line 228
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 229
    const-string/jumbo v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_2
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 234
    :cond_3
    const-string/jumbo v0, "(%s = ? OR %s = ?)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 235
    const-string/jumbo v2, "type"

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const-string/jumbo v2, "type"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 234
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    .line 241
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_4
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_5

    .line 255
    const-string/jumbo v0, " AND ("

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " > ?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_5
    iget v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mLogLimit:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const/16 v8, 0x3e8

    .line 260
    .local v8, "limit":I
    :goto_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 261
    :goto_3
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/util/TelecomUtil;->getCallLogUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 262
    const-string/jumbo v1, "limit"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 264
    .local v3, "uri":Landroid/net/Uri;
    sget-object v4, Lcom/android/dialer/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    .line 265
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 264
    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 265
    const-string/jumbo v7, "date DESC"

    .line 264
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void

    .line 233
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v8    # "limit":I
    :cond_6
    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    .line 237
    const-string/jumbo v0, "(%s = ?)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "type"

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 242
    :cond_7
    const/4 v0, 0x2

    if-ne p2, v0, :cond_8

    .line 243
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 244
    :cond_8
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 245
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 249
    :cond_9
    const-string/jumbo v0, " AND NOT "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string/jumbo v0, "(type = 4)"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 259
    :cond_a
    iget v8, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mLogLimit:I

    .restart local v8    # "limit":I
    goto :goto_2

    .line 260
    :cond_b
    const/4 v5, 0x0

    .local v5, "selection":Ljava/lang/String;
    goto :goto_3
.end method

.method private fetchCalls(IIZJI)V
    .locals 14
    .param p1, "token"    # I
    .param p2, "callType"    # I
    .param p3, "newOnly"    # Z
    .param p4, "newerThan"    # J
    .param p6, "sub"    # I

    .prologue
    .line 273
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .local v12, "where":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    .line 277
    .local v11, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "deleted"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string/jumbo v2, " = 0"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    if-eqz p3, :cond_0

    .line 281
    const-string/jumbo v2, " AND "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string/jumbo v2, "new"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string/jumbo v2, " = 1"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_0
    const/4 v2, -0x1

    move/from16 v0, p2

    if-le v0, v2, :cond_3

    .line 287
    const-string/jumbo v2, " AND "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const-string/jumbo v2, "(%s = ?)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "type"

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    :goto_0
    const/4 v2, -0x1

    move/from16 v0, p6

    if-le v0, v2, :cond_1

    .line 296
    const-string/jumbo v2, " AND "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string/jumbo v2, "(%s = ?)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "subscription_id"

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_2

    .line 302
    const-string/jumbo v2, " AND "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string/jumbo v2, "(%s > ?)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "date"

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_2
    iget v2, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mLogLimit:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    const/16 v10, 0x3e8

    .line 308
    .local v10, "limit":I
    :goto_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 309
    :goto_2
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/dialer/util/TelecomUtil;->getCallLogUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 310
    const-string/jumbo v3, "limit"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 309
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 313
    .local v5, "uri":Landroid/net/Uri;
    sget-object v6, Lcom/android/dialer/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    sget-object v2, Lcom/android/dialer/calllog/CallLogQueryHandler;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v11, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 314
    const-string/jumbo v9, "date DESC"

    .line 312
    const/4 v4, 0x0

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void

    .line 291
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v10    # "limit":I
    :cond_3
    const-string/jumbo v2, " AND NOT "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string/jumbo v2, "(type = 4)"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 307
    :cond_4
    iget v10, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mLogLimit:I

    .restart local v10    # "limit":I
    goto :goto_1

    .line 308
    :cond_5
    const/4 v7, 0x0

    .local v7, "selection":Ljava/lang/String;
    goto :goto_2
.end method

.method private getUnreadMissedCallsQuery()Ljava/lang/String;
    .locals 3

    .prologue
    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    .local v0, "where":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "is_read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = 0 OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "is_read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " IS NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateAdapterData(Landroid/database/Cursor;)Z
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 396
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;

    .line 397
    .local v0, "listener":Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;
    if-eqz v0, :cond_0

    .line 398
    invoke-interface {v0, p1}, Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;->onCallsFetched(Landroid/database/Cursor;)Z

    move-result v1

    return v1

    .line 400
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private updateMissedCallsUnreadCount(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    .line 430
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;

    .line 431
    .local v0, "listener":Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;
    if-eqz v0, :cond_0

    .line 432
    invoke-interface {v0, p1}, Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;->onMissedCallsUnreadCountFetched(Landroid/database/Cursor;)V

    .line 429
    :cond_0
    return-void
.end method

.method private updateVoicemailStatus(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    .line 416
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;

    .line 417
    .local v0, "listener":Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;
    if-eqz v0, :cond_0

    .line 418
    invoke-interface {v0, p1}, Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;->onVoicemailStatusFetched(Landroid/database/Cursor;)V

    .line 415
    :cond_0
    return-void
.end method

.method private updateVoicemailUnreadCount(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    .line 423
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;

    .line 424
    .local v0, "listener":Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;
    if-eqz v0, :cond_0

    .line 425
    invoke-interface {v0, p1}, Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;->onVoicemailUnreadCountFetched(Landroid/database/Cursor;)V

    .line 422
    :cond_0
    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 123
    new-instance v0, Lcom/android/dialer/calllog/CallLogQueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/calllog/CallLogQueryHandler$CatchingWorkerHandler;-><init>(Lcom/android/dialer/calllog/CallLogQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public fetchCalls(I)V
    .locals 2
    .param p1, "callType"    # I

    .prologue
    .line 175
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(IJ)V

    .line 174
    return-void
.end method

.method public fetchCalls(IJ)V
    .locals 6
    .param p1, "callType"    # I
    .param p2, "newerThan"    # J

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->cancelFetch()V

    .line 158
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const/16 v1, 0x36

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(IIZJ)V

    .line 156
    :goto_0
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->updateAdapterData(Landroid/database/Cursor;)Z

    goto :goto_0
.end method

.method public fetchCalls(IJI)V
    .locals 8
    .param p1, "callType"    # I
    .param p2, "newerThan"    # J
    .param p4, "sub"    # I

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->cancelFetch()V

    .line 167
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/16 v1, 0x36

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(IIZJI)V

    .line 165
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->updateAdapterData(Landroid/database/Cursor;)Z

    goto :goto_0
.end method

.method public fetchCalls(ILjava/lang/String;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(number like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    const-string/jumbo v1, "%\'  or  "

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    const-string/jumbo v1, "name"

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    const-string/jumbo v1, " like \'%"

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    const-string/jumbo v1, "%\' )"

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, "selection":Ljava/lang/String;
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    .line 188
    sget-object v4, Lcom/android/dialer/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    .line 189
    const-string/jumbo v7, "date DESC"

    move-object v0, p0

    move v1, p1

    move-object v6, v2

    .line 187
    invoke-virtual/range {v0 .. v7}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public fetchCalls(Ljava/lang/String;)V
    .locals 1
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->cancelFetch()V

    .line 180
    const/16 v0, 0x36

    invoke-virtual {p0, v0, p1}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(ILjava/lang/String;)V

    .line 178
    return-void
.end method

.method public fetchMissedCallsUnreadCount()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 355
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    return-void

    .line 359
    :cond_0
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 360
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v1, 0x0

    aput-object v0, v4, v1

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->getUnreadMissedCallsQuery()Ljava/lang/String;

    move-result-object v5

    .line 359
    const/16 v1, 0x3b

    move-object v0, p0

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public fetchVoicemailArchive()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 144
    sget-object v3, Lcom/android/dialer/database/VoicemailArchiveContract$VoicemailArchive;->CONTENT_URI:Landroid/net/Uri;

    .line 145
    const-string/jumbo v5, "archived_by_user = 1"

    .line 146
    const-string/jumbo v7, "date DESC"

    .line 143
    const/16 v1, 0x3c

    move-object v0, p0

    move-object v4, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public fetchVoicemailStatus()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 193
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/util/TelecomUtil;->hasReadWriteVoicemailPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    sget-object v3, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    .line 195
    sget-object v4, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    .line 194
    const/16 v1, 0x39

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    return-void
.end method

.method public fetchVoicemailUnreadCount()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 200
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/util/TelecomUtil;->hasReadWriteVoicemailPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    sget-object v3, Landroid/provider/VoicemailContract$Voicemails;->CONTENT_URI:Landroid/net/Uri;

    .line 203
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 204
    const-string/jumbo v5, "is_read=0 AND deleted=0"

    .line 202
    const/16 v1, 0x3a

    move-object v0, p0

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    return-void
.end method

.method public markMissedCallsAsRead()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 342
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    return-void

    .line 346
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 347
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "is_read"

    const-string/jumbo v1, "1"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 350
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->getUnreadMissedCallsQuery()Ljava/lang/String;

    move-result-object v5

    .line 349
    const/16 v1, 0x38

    move-object v0, p0

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public markNewCallsAsOld()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 325
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    return-void

    .line 329
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .local v7, "where":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "new"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const-string/jumbo v0, " = 1"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 334
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "new"

    const-string/jumbo v1, "0"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/util/TelecomUtil;->getCallLogUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    .line 337
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 336
    const/16 v1, 0x37

    move-object v0, p0

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method protected declared-synchronized onNotNullableQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    monitor-enter p0

    .line 367
    if-nez p3, :cond_0

    monitor-exit p0

    .line 368
    return-void

    .line 371
    :cond_0
    const/16 v0, 0x36

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_4

    .line 372
    :cond_1
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/dialer/calllog/CallLogQueryHandler;->updateAdapterData(Landroid/database/Cursor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    const/4 p3, 0x0

    .line 385
    .end local p3    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 386
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    monitor-exit p0

    .line 366
    return-void

    .line 375
    .restart local p3    # "cursor":Landroid/database/Cursor;
    :cond_4
    const/16 v0, 0x39

    if-ne p1, v0, :cond_6

    .line 376
    :try_start_2
    invoke-direct {p0, p3}, Lcom/android/dialer/calllog/CallLogQueryHandler;->updateVoicemailStatus(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v0

    .line 385
    if-eqz p3, :cond_5

    .line 386
    :try_start_3
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 384
    :cond_5
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p3    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 377
    .restart local p3    # "cursor":Landroid/database/Cursor;
    :cond_6
    const/16 v0, 0x3a

    if-ne p1, v0, :cond_7

    .line 378
    :try_start_4
    invoke-direct {p0, p3}, Lcom/android/dialer/calllog/CallLogQueryHandler;->updateVoicemailUnreadCount(Landroid/database/Cursor;)V

    goto :goto_0

    .line 379
    :cond_7
    const/16 v0, 0x3b

    if-ne p1, v0, :cond_8

    .line 380
    invoke-direct {p0, p3}, Lcom/android/dialer/calllog/CallLogQueryHandler;->updateMissedCallsUnreadCount(Landroid/database/Cursor;)V

    goto :goto_0

    .line 382
    :cond_8
    const-string/jumbo v0, "CallLogQueryHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown query completed: ignoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
