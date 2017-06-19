.class final Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$2;
.super Landroid/os/AsyncTask;
.source "CallLogAsyncTaskUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->deleteCalls(Landroid/content/Context;Ljava/lang/String;Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V
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
.field final synthetic val$callIds:Ljava/lang/String;

.field final synthetic val$callLogAsyncTaskListener:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;
    .param p2, "val$callIds"    # Ljava/lang/String;
    .param p3, "val$callLogAsyncTaskListener"    # Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$2;->val$callIds:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$2;->val$callLogAsyncTaskListener:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 273
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 274
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/dialer/util/TelecomUtil;->getCallLogUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$2;->val$callIds:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 277
    return-object v4
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 281
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$2;->val$callLogAsyncTaskListener:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$2;->val$callLogAsyncTaskListener:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

    invoke-interface {v0}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;->onDeleteCall()V

    .line 281
    :cond_0
    return-void
.end method
