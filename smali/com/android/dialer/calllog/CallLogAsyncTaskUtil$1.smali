.class final Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$1;
.super Landroid/os/AsyncTask;
.source "CallLogAsyncTaskUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->getCallDetails(Landroid/content/Context;[Landroid/net/Uri;Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V
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
        "[",
        "Lcom/android/dialer/PhoneCallDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callLogAsyncTaskListener:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

.field final synthetic val$callUris:[Landroid/net/Uri;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>([Landroid/net/Uri;Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V
    .locals 0
    .param p1, "val$callUris"    # [Landroid/net/Uri;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$callLogAsyncTaskListener"    # Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$1;->val$callUris:[Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$1;->val$callLogAsyncTaskListener:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 151
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$1;->doInBackground([Ljava/lang/Void;)[Lcom/android/dialer/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[Lcom/android/dialer/PhoneCallDetails;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 153
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$1;->val$callUris:[Landroid/net/Uri;

    array-length v3, v4

    .line 154
    .local v3, "numCalls":I
    new-array v0, v3, [Lcom/android/dialer/PhoneCallDetails;

    .line 156
    .local v0, "details":[Lcom/android/dialer/PhoneCallDetails;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 158
    :try_start_0
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$1;->val$callUris:[Landroid/net/Uri;

    aget-object v5, v5, v2

    invoke-static {v4, v5}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->-wrap0(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v4

    .line 157
    aput-object v4, v0, v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_0
    return-object v0

    .line 161
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Invalid URI starting call details"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    const/4 v4, 0x0

    return-object v4
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "phoneCallDetails"    # Ljava/lang/Object;

    .prologue
    .line 169
    check-cast p1, [Lcom/android/dialer/PhoneCallDetails;

    .end local p1    # "phoneCallDetails":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$1;->onPostExecute([Lcom/android/dialer/PhoneCallDetails;)V

    return-void
.end method

.method public onPostExecute([Lcom/android/dialer/PhoneCallDetails;)V
    .locals 1
    .param p1, "phoneCallDetails"    # [Lcom/android/dialer/PhoneCallDetails;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$1;->val$callLogAsyncTaskListener:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$1;->val$callLogAsyncTaskListener:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

    invoke-interface {v0, p1}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;->onGetCallDetails([Lcom/android/dialer/PhoneCallDetails;)V

    .line 169
    :cond_0
    return-void
.end method
