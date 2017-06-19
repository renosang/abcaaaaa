.class Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter$1;
.super Landroid/os/AsyncTask;
.source "VoicemailArchivePlaybackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;->checkForContent(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;)V
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
.field final synthetic this$0:Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;

.field final synthetic val$callback:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;
    .param p2, "val$callback"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter$1;->this$0:Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;

    iput-object p2, p0, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter$1;->val$callback:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter$1;->this$0:Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter$1;->this$0:Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter$1;->this$0:Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;

    iget-object v2, v2, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 61
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v1, "VMPlaybackPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Voicemail file not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter$1;->this$0:Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;

    iget-object v3, v3, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 56
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "hasContent"    # Ljava/lang/Boolean;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter$1;->val$callback:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;->onContentChecked(Z)V

    .line 70
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "hasContent"    # Ljava/lang/Object;

    .prologue
    .line 70
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "hasContent":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/VoicemailArchivePlaybackPresenter$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
