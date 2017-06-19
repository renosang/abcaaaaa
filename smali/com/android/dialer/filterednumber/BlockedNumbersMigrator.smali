.class public Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;
.super Ljava/lang/Object;
.source "BlockedNumbersMigrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;
    }
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -get0(Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    invoke-static {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;->migrateToNewBlockingInBackground(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;->mContentResolver:Landroid/content/ContentResolver;

    .line 62
    return-void
.end method

.method private static isNumberInNewBlocking(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "originalNumber"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 128
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/dialer/compat/BlockedNumbersSdkCompat;->CONTENT_URI:Landroid/net/Uri;

    .line 129
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 130
    const-string/jumbo v3, "original_number = ?"

    .line 131
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    .line 128
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 132
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    .line 133
    :goto_0
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    if-eqz v7, :cond_2

    throw v7

    :cond_1
    move v0, v9

    .line 132
    goto :goto_0

    .line 133
    :catch_0
    move-exception v7

    goto :goto_1

    .line 132
    :cond_2
    return v0

    .line 133
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_2
    if-eqz v6, :cond_3

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_3
    if-eqz v1, :cond_5

    throw v1

    :catch_2
    move-exception v2

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_3

    :cond_4
    if-eq v1, v2, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_2
.end method

.method private static migrateToNewBlockingInBackground(Landroid/content/ContentResolver;)Z
    .locals 14
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 100
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/dialer/database/FilteredNumberContract$FilteredNumber;->CONTENT_URI:Landroid/net/Uri;

    .line 101
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "number"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 100
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 102
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 103
    const-string/jumbo v0, "BlockedNumbersMigrator"

    const-string/jumbo v1, "migrate - cursor was null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    throw v10

    :catch_0
    move-exception v10

    goto :goto_0

    .line 104
    :cond_1
    return v11

    .line 107
    :cond_2
    :try_start_2
    const-string/jumbo v0, "BlockedNumbersMigrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "migrate - attempting to migrate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "numbers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v7, 0x0

    .line 110
    .local v7, "numMigrated":I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 112
    const-string/jumbo v0, "number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 111
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 113
    .local v8, "originalNumber":Ljava/lang/String;
    invoke-static {p0, v8}, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;->isNumberInNewBlocking(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    const-string/jumbo v0, "BlockedNumbersMigrator"

    const-string/jumbo v1, "migrate - number was already blocked in new blocking"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 124
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "numMigrated":I
    .end local v8    # "originalNumber":Ljava/lang/String;
    :catch_1
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    :goto_2
    if-eqz v6, :cond_3

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_3
    if-eqz v1, :cond_9

    throw v1

    .line 117
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "numMigrated":I
    .restart local v8    # "originalNumber":Ljava/lang/String;
    :cond_4
    :try_start_5
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 118
    .local v9, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "original_number"

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/android/dialer/compat/BlockedNumbersSdkCompat;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 120
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 122
    .end local v8    # "originalNumber":Ljava/lang/String;
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_5
    const-string/jumbo v0, "BlockedNumbersMigrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "migrate - migration complete. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " numbers migrated."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 124
    if-eqz v6, :cond_6

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :cond_6
    :goto_4
    if-eqz v10, :cond_7

    throw v10

    :catch_2
    move-exception v10

    goto :goto_4

    .line 123
    :cond_7
    return v12

    .line 124
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "numMigrated":I
    :catch_3
    move-exception v2

    if-nez v1, :cond_8

    move-object v1, v2

    goto :goto_3

    :cond_8
    if-eq v1, v2, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v10

    goto :goto_2
.end method


# virtual methods
.method public migrate(Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;)Z
    .locals 3
    .param p1, "listener"    # Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;

    .prologue
    const/4 v2, 0x0

    .line 75
    const-string/jumbo v0, "BlockedNumbersMigrator"

    const-string/jumbo v1, "migrate - start"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->canUseNewFiltering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const-string/jumbo v0, "BlockedNumbersMigrator"

    const-string/jumbo v1, "migrate - can\'t use new filtering"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return v2

    .line 80
    :cond_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v0, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$1;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$1;-><init>(Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    const/4 v0, 0x1

    return v0
.end method
