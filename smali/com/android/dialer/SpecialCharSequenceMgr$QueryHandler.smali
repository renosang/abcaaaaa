.class Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;
.super Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/SpecialCharSequenceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryHandler"
.end annotation


# instance fields
.field private mCanceled:Z


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 590
    invoke-direct {p0, p1}, Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 589
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 636
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;->mCanceled:Z

    .line 639
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;->cancelOperation(I)V

    .line 635
    return-void
.end method

.method protected onNotNullableQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 600
    const/4 v7, 0x0

    :try_start_0
    invoke-static {v7}, Lcom/android/dialer/SpecialCharSequenceMgr;->-set0(Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;)Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

    .line 601
    iget-boolean v7, p0, Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    .line 631
    invoke-static {p3}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 602
    return-void

    .line 605
    :cond_0
    :try_start_1
    move-object v0, p2

    check-cast v0, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;

    move-object v5, v0

    .line 608
    .local v5, "sc":Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;
    iget-object v7, v5, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 611
    invoke-virtual {v5}, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->getTextField()Landroid/widget/EditText;

    move-result-object v6

    .line 616
    .local v6, "text":Landroid/widget/EditText;
    if-eqz p3, :cond_1

    if-eqz v6, :cond_1

    iget v7, v5, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 617
    const-string/jumbo v7, "name"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 619
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v7, "number"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 622
    .local v4, "number":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 625
    iget-object v7, v5, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 627
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0273

    .line 626
    invoke-static {v7, v8, v3}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 628
    .local v2, "msg":Ljava/lang/CharSequence;
    const/4 v7, 0x0

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "msg":Ljava/lang/CharSequence;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    :cond_1
    invoke-static {p3}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 598
    return-void

    .line 630
    .end local v5    # "sc":Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v6    # "text":Landroid/widget/EditText;
    :catchall_0
    move-exception v7

    .line 631
    invoke-static {p3}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 630
    throw v7
.end method
