.class abstract Lcom/android/vcard/CursorEntityIterator;
.super Ljava/lang/Object;
.source "VCardComposer.java"

# interfaces
.implements Landroid/content/EntityIterator;


# instance fields
.field protected final mCurrentId:J

.field protected final mCursor:Landroid/database/Cursor;

.field private mIsClosed:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 956
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vcard/CursorEntityIterator;->mIsClosed:Z

    .line 957
    iput-object p1, p0, Lcom/android/vcard/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    .line 958
    const-string/jumbo v0, "contact_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vcard/CursorEntityIterator;->mCurrentId:J

    .line 955
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 1033
    iget-boolean v0, p0, Lcom/android/vcard/CursorEntityIterator;->mIsClosed:Z

    if-eqz v0, :cond_0

    .line 1034
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closing when already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1036
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vcard/CursorEntityIterator;->mIsClosed:Z

    .line 1037
    iget-object v0, p0, Lcom/android/vcard/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1032
    return-void
.end method

.method public abstract getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 979
    iget-boolean v2, p0, Lcom/android/vcard/CursorEntityIterator;->mIsClosed:Z

    if-eqz v2, :cond_0

    .line 980
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "calling hasNext() when the iterator is closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 982
    :cond_0
    iget-object v2, p0, Lcom/android/vcard/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 983
    return v5

    .line 985
    :cond_1
    iget-object v2, p0, Lcom/android/vcard/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/vcard/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v4, "contact_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 986
    .local v0, "contactId":J
    iget-wide v2, p0, Lcom/android/vcard/CursorEntityIterator;->mCurrentId:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 987
    const/4 v2, 0x1

    return v2

    .line 989
    :cond_2
    return v5
.end method

.method public next()Landroid/content/Entity;
    .locals 3

    .prologue
    .line 1003
    iget-boolean v1, p0, Lcom/android/vcard/CursorEntityIterator;->mIsClosed:Z

    if-eqz v1, :cond_0

    .line 1004
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "calling next() when the iterator is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1006
    :cond_0
    iget-object v1, p0, Lcom/android/vcard/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1007
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "you may only call next() if hasNext() is true"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1011
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/vcard/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/android/vcard/CursorEntityIterator;->getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "caught a remote exception, this process will die soon"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1002
    invoke-virtual {p0}, Lcom/android/vcard/CursorEntityIterator;->next()Landroid/content/Entity;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 1018
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "remove not supported by EntityIterators"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 1022
    iget-boolean v0, p0, Lcom/android/vcard/CursorEntityIterator;->mIsClosed:Z

    if-eqz v0, :cond_0

    .line 1023
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "calling reset() when the iterator is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1021
    return-void
.end method
