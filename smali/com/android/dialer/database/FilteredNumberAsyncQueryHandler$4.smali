.class Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4;
.super Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;
.source "FilteredNumberAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->unblock(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

.field final synthetic val$listener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;Landroid/net/Uri;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;
    .param p2, "val$uri"    # Landroid/net/Uri;
    .param p3, "val$listener"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4;->this$0:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    iput-object p2, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4;->val$listener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;-><init>(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$Listener;)V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 264
    if-nez p3, :cond_1

    const/4 v6, 0x0

    .line 265
    .local v6, "rowsReturned":I
    :goto_0
    const/4 v0, 0x1

    if-eq v6, v0, :cond_2

    .line 266
    :try_start_0
    new-instance v0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " rows for uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 268
    iget-object v2, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4;->val$uri:Landroid/net/Uri;

    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 268
    const-string/jumbo v2, "where 1 expected."

    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    .end local v6    # "rowsReturned":I
    :catchall_0
    move-exception v0

    .line 284
    if-eqz p3, :cond_0

    .line 285
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_0
    throw v0

    .line 264
    :cond_1
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .restart local v6    # "rowsReturned":I
    goto :goto_0

    .line 270
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 271
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 272
    .local v7, "values":Landroid/content/ContentValues;
    invoke-static {p3, v7}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 273
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->getIdColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4;->this$0:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    new-instance v2, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4$1;

    iget-object v1, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4;->val$listener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;

    invoke-direct {v2, p0, v1, v7}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4$1;-><init>(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;Landroid/content/ContentValues;)V

    .line 282
    iget-object v3, p0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$4;->val$uri:Landroid/net/Uri;

    .line 275
    const/4 v1, 0x0

    .line 282
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 275
    invoke-virtual/range {v0 .. v5}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    if-eqz p3, :cond_3

    .line 285
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 262
    :cond_3
    return-void
.end method
