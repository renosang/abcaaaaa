.class final Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;
.super Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;
.source "ShortcutIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ShortcutIntentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhoneNumberLoadingAsyncTask"
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mPhoneLabel:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneType:I

.field private final mShortcutAction:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/contacts/common/list/ShortcutIntentBuilder;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/list/ShortcutIntentBuilder;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "shortcutAction"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->this$0:Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    .line 252
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;-><init>(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;)V

    .line 253
    iput-object p3, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mShortcutAction:Ljava/lang/String;

    .line 251
    return-void
.end method


# virtual methods
.method protected loadData()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 258
    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->this$0:Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    invoke-static {v1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->-get3(Lcom/android/contacts/common/list/ShortcutIntentBuilder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 259
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->-get1()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 260
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 262
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mDisplayName:Ljava/lang/String;

    .line 264
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhotoId:J

    .line 265
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhoneNumber:Ljava/lang/String;

    .line 266
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhoneType:I

    .line 267
    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhoneLabel:Ljava/lang/String;

    .line 270
    const/4 v1, 0x6

    .line 269
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 272
    .local v7, "accountType":Ljava/lang/String;
    const/4 v1, 0x7

    .line 271
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 273
    .local v6, "accountName":Ljava/lang/String;
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mAccount:Landroid/accounts/Account;

    .line 275
    const/4 v1, 0x5

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mLookupKey:Ljava/lang/String;

    .line 276
    const/16 v1, 0x8

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhonebookLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    .end local v6    # "accountName":Ljava/lang/String;
    .end local v7    # "accountType":Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 257
    :cond_1
    return-void

    .line 278
    :catchall_0
    move-exception v1

    .line 279
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 278
    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 285
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 11
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->this$0:Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mDisplayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mLookupKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhonebookLabel:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mBitmapData:[B

    .line 287
    iget-object v6, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhoneNumber:Ljava/lang/String;

    iget v7, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhoneType:I

    iget-object v8, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mPhoneLabel:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mAccount:Landroid/accounts/Account;

    iget-object v10, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->mShortcutAction:Ljava/lang/String;

    .line 286
    invoke-static/range {v0 .. v10}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->-wrap1(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 285
    return-void
.end method
