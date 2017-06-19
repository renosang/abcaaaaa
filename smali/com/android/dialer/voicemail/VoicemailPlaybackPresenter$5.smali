.class Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$5;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnArchiveVoicemailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->startArchiveVoicemailTask(Landroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

.field final synthetic val$archivedByUser:Z

.field final synthetic val$voicemailUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/net/Uri;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p2, "val$voicemailUri"    # Landroid/net/Uri;
    .param p3, "val$archivedByUser"    # Z

    .prologue
    .line 929
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$5;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iput-object p2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$5;->val$voicemailUri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$5;->val$archivedByUser:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onArchiveVoicemail(Landroid/net/Uri;)V
    .locals 3
    .param p1, "archivedVoicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 932
    if-nez p1, :cond_0

    .line 933
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$5;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$5;->val$voicemailUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->notifyUiOfArchiveResult(Landroid/net/Uri;Z)V

    .line 934
    return-void

    .line 937
    :cond_0
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$5;->val$archivedByUser:Z

    if-eqz v0, :cond_1

    .line 938
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$5;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$5;->val$voicemailUri:Landroid/net/Uri;

    .line 939
    const/4 v2, 0x1

    .line 938
    invoke-static {v0, v1, p1, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->-wrap2(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/net/Uri;Landroid/net/Uri;Z)V

    .line 931
    :goto_0
    return-void

    .line 941
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$5;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->sendShareIntent(Landroid/net/Uri;)V

    goto :goto_0
.end method
