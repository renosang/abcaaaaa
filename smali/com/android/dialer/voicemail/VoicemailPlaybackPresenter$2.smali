.class Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$2;
.super Landroid/os/AsyncTask;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->checkForContent(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;)V
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
.field final synthetic this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

.field final synthetic val$callback:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p2, "val$callback"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$2;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iput-object p2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$2;->val$callback:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$2;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$2;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

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
    .line 410
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "hasContent"    # Ljava/lang/Boolean;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$2;->val$callback:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;->onContentChecked(Z)V

    .line 415
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "hasContent"    # Ljava/lang/Object;

    .prologue
    .line 415
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "hasContent":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
