.class final Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$3;
.super Landroid/os/AsyncTask;
.source "CallLogAsyncTaskUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->deleteBlockedCall(Landroid/content/Context;Ljava/lang/String;JLcom/android/dialer/calllog/CallLogAsyncTaskUtil$OnCallLogQueryFinishedListener;)V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$OnCallLogQueryFinishedListener;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$timeAddedMs:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;JLcom/android/dialer/calllog/CallLogAsyncTaskUtil$OnCallLogQueryFinishedListener;)V
    .locals 1
    .param p1, "val$context"    # Landroid/content/Context;
    .param p2, "val$number"    # Ljava/lang/String;
    .param p3, "val$timeAddedMs"    # J
    .param p5, "val$listener"    # Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$OnCallLogQueryFinishedListener;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$3;->val$number:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$3;->val$timeAddedMs:J

    iput-object p5, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$3;->val$listener:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$OnCallLogQueryFinishedListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 312
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$3;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/dialer/util/TelecomUtil;->getCallLogUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 314
    sget-object v2, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogDeleteBlockedCallQuery;->PROJECTION:[Ljava/lang/String;

    .line 315
    const-string/jumbo v3, "number= ?"

    .line 316
    new-array v4, v12, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$3;->val$number:Ljava/lang/String;

    aput-object v5, v4, v11

    .line 317
    const-string/jumbo v5, "date DESC LIMIT 1"

    .line 312
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 320
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 323
    .local v8, "creationTime":J
    iget-wide v0, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$3;->val$timeAddedMs:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_0

    .line 324
    iget-wide v0, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$3;->val$timeAddedMs:J

    sub-long/2addr v0, v8

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 326
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 327
    .local v6, "callLogEntryId":J
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$3;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/dialer/util/TelecomUtil;->getCallLogUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    const/4 v3, 0x0

    .line 327
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 331
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 334
    .end local v6    # "callLogEntryId":J
    .end local v8    # "creationTime":J
    :cond_0
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 310
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Long;)V
    .locals 6
    .param p1, "callLogEntryId"    # Ljava/lang/Long;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$3;->val$listener:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$OnCallLogQueryFinishedListener;

    if-eqz v0, :cond_0

    .line 340
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$3;->val$listener:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$OnCallLogQueryFinishedListener;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$OnCallLogQueryFinishedListener;->onQueryFinished(Z)V

    .line 338
    :cond_0
    return-void

    .line 340
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "callLogEntryId"    # Ljava/lang/Object;

    .prologue
    .line 338
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "callLogEntryId":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$3;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
