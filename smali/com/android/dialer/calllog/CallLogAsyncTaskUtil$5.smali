.class final Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$5;
.super Landroid/os/AsyncTask;
.source "CallLogAsyncTaskUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->deleteVoicemail(Landroid/content/Context;Landroid/net/Uri;Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V
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
.field final synthetic val$callLogAsyncTaskListener:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$voicemailUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;
    .param p2, "val$voicemailUri"    # Landroid/net/Uri;
    .param p3, "val$callLogAsyncTaskListener"    # Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$5;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$5;->val$voicemailUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$5;->val$callLogAsyncTaskListener:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 378
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 379
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$5;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$5;->val$voicemailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 380
    return-object v2
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 384
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$5;->val$callLogAsyncTaskListener:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$5;->val$callLogAsyncTaskListener:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

    invoke-interface {v0}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;->onDeleteVoicemail()V

    .line 384
    :cond_0
    return-void
.end method
