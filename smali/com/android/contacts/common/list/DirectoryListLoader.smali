.class public Lcom/android/contacts/common/list/DirectoryListLoader;
.super Landroid/content/AsyncTaskLoader;
.source "DirectoryListLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/DirectoryListLoader$1;,
        Lcom/android/contacts/common/list/DirectoryListLoader$DirectoryQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final DIRECTORY_TYPE:Ljava/lang/String; = "directoryType"

.field private static final RESULT_PROJECTION:[Ljava/lang/String;

.field public static final SEARCH_MODE_CONTACT_SHORTCUT:I = 0x2

.field public static final SEARCH_MODE_DATA_SHORTCUT:I = 0x3

.field public static final SEARCH_MODE_DEFAULT:I = 0x1

.field public static final SEARCH_MODE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ContactEntryListAdapter"


# instance fields
.field private mDefaultDirectoryList:Landroid/database/MatrixCursor;

.field private mDirectorySearchMode:I

.field private mLocalInvisibleDirectoryEnabled:Z

.field private final mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 77
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 78
    const-string/jumbo v1, "directoryType"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 79
    const-string/jumbo v1, "displayName"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 80
    const-string/jumbo v1, "photoSupport"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 76
    sput-object v0, Lcom/android/contacts/common/list/DirectoryListLoader;->RESULT_PROJECTION:[Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Lcom/android/contacts/common/list/DirectoryListLoader$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/list/DirectoryListLoader$1;-><init>(Lcom/android/contacts/common/list/DirectoryListLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mObserver:Landroid/database/ContentObserver;

    .line 95
    return-void
.end method

.method private getDefaultDirectories()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 197
    iget-object v0, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/contacts/common/list/DirectoryListLoader;->RESULT_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    .line 199
    iget-object v0, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    new-array v1, v8, [Ljava/lang/Object;

    .line 200
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    .line 201
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d011f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 202
    aput-object v4, v1, v7

    .line 199
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    new-array v1, v8, [Ljava/lang/Object;

    .line 205
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    .line 206
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0120

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 207
    aput-object v4, v1, v7

    .line 204
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    return-object v0
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 21

    .prologue
    .line 126
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDirectorySearchMode:I

    if-nez v2, :cond_0

    .line 127
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->getDefaultDirectories()Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 130
    :cond_0
    new-instance v19, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/contacts/common/list/DirectoryListLoader;->RESULT_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 131
    .local v19, "result":Landroid/database/MatrixCursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 132
    .local v8, "context":Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 134
    .local v18, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDirectorySearchMode:I

    packed-switch v2, :pswitch_data_0

    .line 150
    new-instance v2, Ljava/lang/RuntimeException;

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported directory search mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDirectorySearchMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :pswitch_0
    const/4 v5, 0x0

    .line 153
    :goto_0
    const/4 v9, 0x0

    .line 155
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 156
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDirectorySearchMode:I

    invoke-static {v3}, Lcom/android/contacts/common/list/DirectoryListLoader$DirectoryQuery;->getDirectoryUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 157
    sget-object v4, Lcom/android/contacts/common/list/DirectoryListLoader$DirectoryQuery;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v7, "_id"

    const/4 v6, 0x0

    .line 155
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 159
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_2

    .line 188
    if-eqz v9, :cond_1

    .line 189
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 160
    :cond_1
    return-object v19

    .line 140
    .end local v9    # "cursor":Landroid/database/Cursor;
    :pswitch_1
    const-string/jumbo v5, "shortcutSupport=2"

    .local v5, "selection":Ljava/lang/String;
    goto :goto_0

    .line 144
    .end local v5    # "selection":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v5, "shortcutSupport IN (2, 1)"

    .restart local v5    # "selection":Ljava/lang/String;
    goto :goto_0

    .line 163
    .end local v5    # "selection":Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 164
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 165
    .local v10, "directoryId":J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/common/list/DirectoryListLoader;->mLocalInvisibleDirectoryEnabled:Z

    if-nez v2, :cond_3

    .line 166
    invoke-static {v10, v11}, Lcom/android/contacts/common/compat/DirectoryCompat;->isInvisibleDirectory(J)Z

    move-result v2

    .line 165
    if-nez v2, :cond_2

    .line 169
    :cond_3
    const/4 v12, 0x0

    .line 171
    .local v12, "directoryType":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 172
    .local v16, "packageName":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 173
    .local v20, "typeResourceId":I
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    if-eqz v20, :cond_4

    .line 175
    :try_start_2
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    .line 181
    .end local v12    # "directoryType":Ljava/lang/String;
    :cond_4
    :goto_2
    const/4 v2, 0x3

    :try_start_3
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 182
    .local v13, "displayName":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 183
    .local v17, "photoSupport":I
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v12, v2, v3

    const/4 v3, 0x2

    aput-object v13, v2, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 185
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "directoryId":J
    .end local v13    # "displayName":Ljava/lang/String;
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v17    # "photoSupport":I
    .end local v20    # "typeResourceId":I
    :catch_0
    move-exception v15

    .line 186
    .local v15, "e":Ljava/lang/RuntimeException;
    :try_start_4
    const-string/jumbo v2, "ContactEntryListAdapter"

    const-string/jumbo v3, "Runtime Exception when querying directory"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 188
    if-eqz v9, :cond_5

    .line 189
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 193
    .end local v15    # "e":Ljava/lang/RuntimeException;
    :cond_5
    :goto_3
    return-object v19

    .line 177
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "directoryId":J
    .restart local v12    # "directoryType":Ljava/lang/String;
    .restart local v16    # "packageName":Ljava/lang/String;
    .restart local v20    # "typeResourceId":I
    :catch_1
    move-exception v14

    .line 178
    .local v14, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v2, "ContactEntryListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot obtain directory type from package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 187
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "directoryId":J
    .end local v12    # "directoryType":Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v20    # "typeResourceId":I
    :catchall_0
    move-exception v2

    .line 188
    if-eqz v9, :cond_6

    .line 189
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_6
    throw v2

    .line 188
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_7
    if-eqz v9, :cond_5

    .line 189
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->stopLoading()V

    .line 214
    return-void
.end method

.method protected onStartLoading()V
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    iget v1, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDirectorySearchMode:I

    invoke-static {v1}, Lcom/android/contacts/common/list/DirectoryListLoader$DirectoryQuery;->getDirectoryUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 113
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->forceLoad()V

    .line 112
    return-void
.end method

.method protected onStopLoading()V
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 120
    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDirectorySearchMode:I

    .line 99
    return-void
.end method

.method public setLocalInvisibleDirectoryEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mLocalInvisibleDirectoryEnabled:Z

    .line 107
    return-void
.end method
