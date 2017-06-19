.class abstract Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;
.super Landroid/os/AsyncTask;
.source "ShortcutIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ShortcutIntentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LoadingAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected mBitmapData:[B

.field protected mContentType:Ljava/lang/String;

.field protected mDisplayName:Ljava/lang/String;

.field protected mLookupKey:Ljava/lang/String;

.field protected mPhonebookLabel:Ljava/lang/String;

.field protected mPhotoId:J

.field protected mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/contacts/common/list/ShortcutIntentBuilder;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/list/ShortcutIntentBuilder;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->this$0:Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 173
    iput-object p2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->mUri:Landroid/net/Uri;

    .line 172
    return-void
.end method

.method private loadPhoto()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 187
    iget-wide v2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->mPhotoId:J

    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-nez v1, :cond_0

    .line 188
    return-void

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->this$0:Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    invoke-static {v1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->-get3(Lcom/android/contacts/common/list/ShortcutIntentBuilder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 192
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->-get2()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "_id=?"

    .line 193
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->mPhotoId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v10

    .line 192
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 194
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 196
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->mBitmapData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_2
    return-void

    .line 199
    :catchall_0
    move-exception v1

    .line 200
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 199
    throw v1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 177
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->this$0:Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    invoke-static {v0}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->-get3(Lcom/android/contacts/common/list/ShortcutIntentBuilder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->mContentType:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->loadData()V

    .line 180
    invoke-direct {p0}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->loadPhoto()V

    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract loadData()V
.end method
