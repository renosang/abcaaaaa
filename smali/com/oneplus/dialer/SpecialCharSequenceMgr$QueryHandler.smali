.class Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;
.super Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/dialer/SpecialCharSequenceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryHandler"
.end annotation


# instance fields
.field private mCanceled:Z


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;->mCanceled:Z

    .line 583
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;->cancelOperation(I)V

    .line 579
    return-void
.end method

.method protected onNotNullableQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 544
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v6}, Lcom/oneplus/dialer/SpecialCharSequenceMgr;->-set0(Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;)Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;

    .line 545
    iget-boolean v6, p0, Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 575
    invoke-static {p3}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 546
    return-void

    .line 549
    :cond_0
    :try_start_1
    move-object v0, p2

    check-cast v0, Lcom/oneplus/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;

    move-object v4, v0

    .line 552
    .local v4, "sc":Lcom/oneplus/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;
    iget-object v6, v4, Lcom/oneplus/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 555
    invoke-virtual {v4}, Lcom/oneplus/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->getTextField()Landroid/widget/EditText;

    move-result-object v5

    .line 560
    .local v5, "text":Landroid/widget/EditText;
    if-eqz p3, :cond_1

    if-eqz v5, :cond_1

    iget v6, v4, Lcom/oneplus/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 561
    const-string/jumbo v6, "name"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v6, "number"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 566
    .local v3, "number":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 569
    iget-object v1, v4, Lcom/oneplus/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->context:Landroid/content/Context;

    .line 570
    .local v1, "context":Landroid/content/Context;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const v7, 0x7f0d0273

    invoke-virtual {v1, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 571
    const/4 v6, 0x0

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 575
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    :cond_1
    invoke-static {p3}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 542
    return-void

    .line 574
    .end local v4    # "sc":Lcom/oneplus/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v5    # "text":Landroid/widget/EditText;
    :catchall_0
    move-exception v6

    .line 575
    invoke-static {p3}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 574
    throw v6
.end method
