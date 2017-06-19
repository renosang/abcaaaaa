.class final Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;
.super Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;
.source "ShortcutIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ShortcutIntentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactLoadingAsyncTask"
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field final synthetic this$0:Lcom/android/contacts/common/list/ShortcutIntentBuilder;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/list/ShortcutIntentBuilder;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->this$0:Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;-><init>(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;)V

    .line 209
    return-void
.end method


# virtual methods
.method protected loadData()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 215
    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->this$0:Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    invoke-static {v1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->-get3(Lcom/android/contacts/common/list/ShortcutIntentBuilder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 216
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->-get0()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 217
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 219
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mDisplayName:Ljava/lang/String;

    .line 221
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mPhotoId:J

    .line 224
    const/4 v1, 0x3

    .line 223
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 226
    .local v7, "accountType":Ljava/lang/String;
    const/4 v1, 0x4

    .line 225
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 227
    .local v6, "accountName":Ljava/lang/String;
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mAccount:Landroid/accounts/Account;

    .line 229
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mLookupKey:Ljava/lang/String;

    .line 230
    const/4 v1, 0x5

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mPhonebookLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    .end local v6    # "accountName":Ljava/lang/String;
    .end local v7    # "accountType":Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_1
    return-void

    .line 232
    :catchall_0
    move-exception v1

    .line 233
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 232
    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 238
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->this$0:Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mContentType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mDisplayName:Ljava/lang/String;

    .line 240
    iget-object v4, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mAccount:Landroid/accounts/Account;

    iget-object v5, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mLookupKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mPhonebookLabel:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mBitmapData:[B

    .line 239
    invoke-static/range {v0 .. v7}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->-wrap0(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 238
    return-void
.end method
