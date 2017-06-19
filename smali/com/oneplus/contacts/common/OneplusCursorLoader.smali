.class public Lcom/oneplus/contacts/common/OneplusCursorLoader;
.super Landroid/content/AsyncTaskLoader;
.source "OneplusCursorLoader.java"

# interfaces
.implements Lcom/oneplus/contacts/common/ICursorLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/oneplus/contacts/common/ICursorLoader;"
    }
.end annotation


# instance fields
.field mCancellationSignal:Landroid/os/CancellationSignal;

.field mCursor:Landroid/database/Cursor;

.field final mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field mProjection:[Ljava/lang/String;

.field mSelection:Ljava/lang/String;

.field mSelectionArgs:[Ljava/lang/String;

.field mSortOrder:Ljava/lang/String;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 134
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 132
    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->cancelLoadInBackground()V

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 90
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/OneplusCursorLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    if-eqz p1, :cond_0

    .line 106
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 111
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 113
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/OneplusCursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 117
    :cond_2
    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    :cond_3
    :goto_0
    return-void

    .line 118
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 102
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/contacts/common/OneplusCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 242
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 243
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 244
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mProjection:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mSelection:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 241
    return-void
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 9

    .prologue
    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/OneplusCursorLoader;->isLoadInBackgroundCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Landroid/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/os/OperationCanceledException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 66
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 69
    :try_start_2
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/OneplusCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mSelection:Ljava/lang/String;

    .line 70
    iget-object v4, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mSortOrder:Ljava/lang/String;

    iget-object v6, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 69
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v7

    .line 71
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 74
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    .line 75
    iget-object v0, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    :cond_1
    monitor-enter p0

    .line 84
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    .line 81
    return-object v7

    .line 76
    :catch_0
    move-exception v8

    .line 77
    .local v8, "ex":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 78
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 82
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v0

    .line 83
    monitor-enter p0

    .line 84
    const/4 v1, 0x0

    :try_start_6
    iput-object v1, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit p0

    .line 82
    throw v0

    .line 83
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/OneplusCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 182
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 181
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/contacts/common/OneplusCursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 189
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 192
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/OneplusCursorLoader;->onStopLoading()V

    .line 194
    iget-object v0, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 188
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/oneplus/contacts/common/OneplusCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/OneplusCursorLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/OneplusCursorLoader;->forceLoad()V

    .line 162
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/OneplusCursorLoader;->cancelLoad()Z

    .line 175
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mProjection:[Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 0
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mSelection:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .locals 0
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mSortOrder:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/oneplus/contacts/common/OneplusCursorLoader;->mUri:Landroid/net/Uri;

    .line 204
    return-void
.end method
