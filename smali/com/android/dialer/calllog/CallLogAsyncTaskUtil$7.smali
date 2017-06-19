.class final Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$7;
.super Landroid/os/AsyncTask;
.source "CallLogAsyncTaskUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->updateVoicemailDuration(Landroid/content/Context;Landroid/net/Uri;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
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
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$duration:J

.field final synthetic val$voicemailUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 1
    .param p1, "val$context"    # Landroid/content/Context;
    .param p2, "val$voicemailUri"    # Landroid/net/Uri;
    .param p3, "val$duration"    # J

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$7;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$7;->val$voicemailUri:Landroid/net/Uri;

    iput-wide p3, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$7;->val$duration:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 441
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 442
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$7;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 444
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$7;->val$voicemailUri:Landroid/net/Uri;

    .line 445
    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v4, "duration"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    .line 443
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 447
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    const-string/jumbo v1, "duration"

    .line 448
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 447
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-gtz v1, :cond_0

    .line 450
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 451
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "duration"

    iget-wide v4, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$7;->val$duration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 452
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$7;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$7;->val$voicemailUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v7, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 454
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_0
    return-object v3
.end method
