.class Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$4;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->archiveContent(Landroid/net/Uri;Z)V
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
.method constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p2, "val$archivedByUser"    # Z
    .param p3, "val$voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 912
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$4;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iput-boolean p2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$4;->val$archivedByUser:Z

    iput-object p3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$4;->val$voicemailUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChecked(Z)V
    .locals 3
    .param p1, "hasContent"    # Z

    .prologue
    .line 915
    if-nez p1, :cond_1

    .line 916
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$4;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$4;->val$archivedByUser:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->requestContent(I)Z

    .line 914
    :goto_1
    return-void

    .line 916
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 918
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$4;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$4;->val$voicemailUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$4;->val$archivedByUser:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->startArchiveVoicemailTask(Landroid/net/Uri;Z)V

    goto :goto_1
.end method
