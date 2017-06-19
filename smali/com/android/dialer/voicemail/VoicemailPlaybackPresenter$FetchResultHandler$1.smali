.class Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;
.super Landroid/os/AsyncTask;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    iget-object v0, v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->-get2(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->-wrap1(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/net/Uri;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 531
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "hasContent"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 537
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    iget-object v0, v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->-get0(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    iget-object v0, v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 539
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    .line 538
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 540
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    iget-object v0, v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->prepareContent()V

    .line 541
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->-get1(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 542
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    iget-object v0, v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->-get2(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->startArchiveVoicemailTask(Landroid/net/Uri;Z)V

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->-get1(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    iget-object v0, v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->-get2(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->startArchiveVoicemailTask(Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "hasContent"    # Ljava/lang/Object;

    .prologue
    .line 536
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "hasContent":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
