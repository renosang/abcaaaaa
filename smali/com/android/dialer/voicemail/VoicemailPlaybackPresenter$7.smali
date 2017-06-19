.class Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$7;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnSetVoicemailArchiveStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->setArchivedVoicemailStatusAndUpdateUI(Landroid/net/Uri;Landroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

.field final synthetic val$voicemailUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p2, "val$voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 978
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$7;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iput-object p2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$7;->val$voicemailUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetVoicemailArchiveStatus(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$7;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$7;->val$voicemailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->notifyUiOfArchiveResult(Landroid/net/Uri;Z)V

    .line 980
    return-void
.end method
