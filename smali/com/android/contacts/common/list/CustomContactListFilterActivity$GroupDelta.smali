.class public Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
.super Lcom/android/contacts/common/model/ValuesDelta;
.source "CustomContactListFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "GroupDelta"
.end annotation


# instance fields
.field private mAccountHasGroups:Z

.field private mUngrouped:Z


# direct methods
.method static synthetic -get0(Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    return v0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/android/contacts/common/model/ValuesDelta;-><init>()V

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    .line 251
    return-void
.end method

.method public static fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    .locals 2
    .param p0, "after"    # Landroid/content/ContentValues;

    .prologue
    .line 302
    new-instance v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    invoke-direct {v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;-><init>()V

    .line 303
    .local v0, "entry":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mBefore:Landroid/content/ContentValues;

    .line 304
    iput-object p0, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    .line 305
    return-object v0
.end method

.method public static fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    .locals 2
    .param p0, "before"    # Landroid/content/ContentValues;

    .prologue
    .line 295
    new-instance v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    invoke-direct {v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;-><init>()V

    .line 296
    .local v0, "entry":Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    iput-object p0, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mBefore:Landroid/content/ContentValues;

    .line 297
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    .line 298
    return-object v0
.end method

.method public static fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "dataSet"    # Ljava/lang/String;
    .param p4, "accountHasGroups"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 262
    sget-object v0, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 263
    const-string/jumbo v1, "account_name"

    .line 262
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 264
    const-string/jumbo v1, "account_type"

    .line 262
    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 265
    .local v7, "settingsUri":Landroid/net/Uri$Builder;
    if-eqz p3, :cond_0

    .line 266
    const-string/jumbo v0, "data_set"

    invoke-virtual {v7, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 268
    :cond_0
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    .line 269
    const-string/jumbo v0, "should_sync"

    aput-object v0, v2, v4

    const-string/jumbo v0, "ungrouped_visible"

    aput-object v0, v2, v5

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 268
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 273
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 274
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "account_name"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string/jumbo v0, "account_type"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string/jumbo v0, "data_set"

    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    const-string/jumbo v0, "should_sync"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    const-string/jumbo v0, "ungrouped_visible"

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    invoke-static {v8}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->setUngrouped(Z)Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 290
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_1
    return-object v0

    .line 285
    :cond_2
    :try_start_1
    const-string/jumbo v0, "should_sync"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    const-string/jumbo v0, "ungrouped_visible"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    invoke-static {v8}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->setUngrouped(Z)Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 290
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 287
    :cond_3
    return-object v0

    .line 289
    .end local v8    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    .line 290
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_4
    throw v0
.end method

.method private getAccountType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mBefore:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    :goto_0
    const-string/jumbo v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mBefore:Landroid/content/ContentValues;

    goto :goto_0
.end method


# virtual methods
.method public beforeExists()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public buildDiff()Landroid/content/ContentProviderOperation;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 378
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->isInsert()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 380
    iget-boolean v5, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v5, :cond_0

    .line 381
    iget-object v5, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    iget-object v6, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 382
    sget-object v5, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 383
    iget-object v6, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    .line 382
    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    return-object v5

    .line 387
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Unexpected diff"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->isUpdate()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 390
    iget-boolean v5, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v5, :cond_3

    .line 391
    const-string/jumbo v5, "account_name"

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "accountName":Ljava/lang/String;
    const-string/jumbo v5, "account_type"

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "accountType":Ljava/lang/String;
    const-string/jumbo v5, "data_set"

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, "dataSet":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "account_name=? AND account_type=?"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .local v3, "selection":Ljava/lang/StringBuilder;
    if-nez v2, :cond_2

    .line 398
    const-string/jumbo v5, " AND data_set IS NULL"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    new-array v4, v9, [Ljava/lang/String;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    .line 404
    .local v4, "selectionArgs":[Ljava/lang/String;
    :goto_0
    sget-object v5, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 405
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 404
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 406
    iget-object v6, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    .line 404
    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    return-object v5

    .line 401
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, " AND data_set=?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/String;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    aput-object v2, v4, v9

    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    goto :goto_0

    .line 410
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v2    # "dataSet":Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/StringBuilder;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_3
    sget-object v5, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->-wrap0(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 409
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 411
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 409
    invoke-virtual {v5, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 412
    iget-object v6, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    .line 409
    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    return-object v5

    .line 416
    :cond_4
    return-object v8
.end method

.method public getShouldSync()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 320
    iget-boolean v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "should_sync"

    .line 321
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 320
    invoke-virtual {p0, v0, v3}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    const-string/jumbo v0, "should_sync"

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 342
    iget-boolean v4, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v4, :cond_2

    .line 344
    invoke-direct {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/contacts/common/util/LocalizedNameResolver;->getAllContactsName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "customAllContactsName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 346
    return-object v0

    .line 348
    :cond_0
    iget-boolean v4, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mAccountHasGroups:Z

    if-eqz v4, :cond_1

    .line 349
    const v4, 0x7f0d016d

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    .line 351
    :cond_1
    const v4, 0x7f0d016e

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    .line 354
    .end local v0    # "customAllContactsName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "title_res"

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 355
    .local v3, "titleRes":Ljava/lang/Integer;
    if-eqz v3, :cond_5

    .line 356
    const-string/jumbo v4, "res_package"

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 358
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 359
    .local v2, "title":Ljava/lang/CharSequence;
    if-nez v2, :cond_3

    .line 360
    const-string/jumbo v4, "title"

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 362
    :cond_3
    return-object v2

    .line 364
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_4
    const-string/jumbo v4, "title"

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 367
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "title"

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getVisible()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 325
    iget-boolean v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ungrouped_visible"

    .line 326
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 325
    invoke-virtual {p0, v0, v2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-string/jumbo v0, "group_visible"

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public putShouldSync(Z)V
    .locals 2
    .param p1, "shouldSync"    # Z

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "should_sync"

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->put(Ljava/lang/String;I)V

    .line 329
    return-void

    .line 330
    :cond_0
    const-string/jumbo v0, "should_sync"

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public putVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ungrouped_visible"

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->put(Ljava/lang/String;I)V

    .line 333
    return-void

    .line 334
    :cond_0
    const-string/jumbo v0, "group_visible"

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected setUngrouped(Z)Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
    .locals 1
    .param p1, "accountHasGroups"    # Z

    .prologue
    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    .line 310
    iput-boolean p1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mAccountHasGroups:Z

    .line 311
    return-object p0
.end method
