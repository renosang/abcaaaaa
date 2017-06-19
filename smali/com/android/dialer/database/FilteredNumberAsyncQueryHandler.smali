.class public Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "FilteredNumberAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;,
        Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;,
        Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;,
        Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;,
        Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 39
    return-void
.end method


# virtual methods
.method public blockNumber(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 228
    new-instance v0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$3;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$3;-><init>(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;)V

    .line 235
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/dialer/compat/FilteredNumberCompat;->getContentUri(Ljava/lang/Integer;)Landroid/net/Uri;

    move-result-object v1

    .line 227
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, p2}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 226
    return-void
.end method

.method public blockNumber(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "countryIso"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->blockNumber(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public blockNumber(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;
    .param p2, "normalizedNumber"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "countryIso"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 218
    invoke-static {p3, p2, p4}, Lcom/android/dialer/compat/FilteredNumberCompat;->newBlockNumberContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->blockNumber(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Landroid/content/ContentValues;)V

    .line 217
    return-void
.end method

.method public hasBlockedNumbers(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;)V
    .locals 8
    .param p1, "listener"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 130
    new-instance v2, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$1;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$1;-><init>(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;)V

    .line 142
    invoke-static {v6}, Lcom/android/dialer/compat/FilteredNumberCompat;->getContentUri(Ljava/lang/Integer;)Landroid/net/Uri;

    move-result-object v3

    .line 143
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->getIdColumnName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 144
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->useNewFiltering()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v5, v6

    :goto_0
    move-object v0, p0

    move-object v7, v6

    .line 129
    invoke-virtual/range {v0 .. v7}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void

    .line 144
    :cond_0
    const-string/jumbo v5, "type=1"

    goto :goto_0
.end method

.method public final incrementFilteredCount(Ljava/lang/Integer;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->useNewFiltering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    return-void

    .line 124
    :cond_0
    sget-object v0, Lcom/android/dialer/database/FilteredNumberContract$FilteredNumber;->CONTENT_URI_INCREMENT_FILTERED_COUNT:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 123
    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public isBlockedNumber(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "listener"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "countryIso"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 158
    invoke-static {p2, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 159
    .local v8, "e164Number":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    return v1

    .line 164
    :cond_0
    new-instance v2, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$2;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$2;-><init>(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;)V

    .line 195
    invoke-static {v7}, Lcom/android/dialer/compat/FilteredNumberCompat;->getContentUri(Ljava/lang/Integer;)Landroid/net/Uri;

    move-result-object v3

    .line 196
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->getIdColumnName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 197
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->getTypeColumnName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v9

    .line 196
    invoke-static {v0}, Lcom/android/dialer/compat/FilteredNumberCompat;->filter([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->getE164NumberColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " = ?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 199
    new-array v6, v9, [Ljava/lang/String;

    aput-object v8, v6, v1

    move-object v0, p0

    .line 163
    invoke-virtual/range {v0 .. v7}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return v9
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 113
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 114
    check-cast v0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;->onDeleteComplete(ILjava/lang/Object;I)V

    .line 112
    :cond_0
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 99
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 100
    check-cast v0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    .line 98
    :cond_0
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 92
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 93
    check-cast v0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 91
    :cond_0
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 106
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 107
    check-cast v0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;->onUpdateComplete(ILjava/lang/Object;I)V

    .line 105
    :cond_0
    return-void
.end method

.method public unblock(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;Landroid/net/Uri;)V
    .locals 8
    .param p1, "listener"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 260
    new-instance v2, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4;-><init>(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;Landroid/net/Uri;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;)V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public unblock(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "id"    # Ljava/lang/Integer;

    .prologue
    .line 246
    if-nez p2, :cond_0

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null id passed into unblock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    invoke-static {p2}, Lcom/android/dialer/compat/FilteredNumberCompat;->getContentUri(Ljava/lang/Integer;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->unblock(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;Landroid/net/Uri;)V

    .line 245
    return-void
.end method
